; ModuleID = '/home/carl/AnghaBench/git/trace2/extr_tr2_tls.c_tr2tls_init.c'
source_filename = "/home/carl/AnghaBench/git/trace2/extr_tr2_tls.c_tr2tls_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tr2tls_key = common dso_local global i32 0, align 4
@tr2tls_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"main\00", align 1
@tr2tls_us_start_process = common dso_local global i32 0, align 4
@tr2tls_thread_main = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tr2tls_init() #0 {
  %1 = call i32 (...) @tr2tls_start_process_clock()
  %2 = call i32 @pthread_key_create(i32* @tr2tls_key, i32* null)
  %3 = call i32 @init_recursive_mutex(i32* @tr2tls_mutex)
  %4 = load i32, i32* @tr2tls_us_start_process, align 4
  %5 = call i32 @tr2tls_create_self(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %4)
  store i32 %5, i32* @tr2tls_thread_main, align 4
  ret void
}

declare dso_local i32 @tr2tls_start_process_clock(...) #1

declare dso_local i32 @pthread_key_create(i32*, i32*) #1

declare dso_local i32 @init_recursive_mutex(i32*) #1

declare dso_local i32 @tr2tls_create_self(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
