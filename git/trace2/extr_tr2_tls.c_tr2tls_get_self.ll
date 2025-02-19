; ModuleID = '/home/carl/AnghaBench/git/trace2/extr_tr2_tls.c_tr2tls_get_self.c'
source_filename = "/home/carl/AnghaBench/git/trace2/extr_tr2_tls.c_tr2tls_get_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tr2tls_thread_ctx = type { i32 }

@HAVE_THREADS = common dso_local global i32 0, align 4
@tr2tls_thread_main = common dso_local global %struct.tr2tls_thread_ctx* null, align 8
@tr2tls_key = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tr2tls_thread_ctx* @tr2tls_get_self() #0 {
  %1 = alloca %struct.tr2tls_thread_ctx*, align 8
  %2 = alloca %struct.tr2tls_thread_ctx*, align 8
  %3 = load i32, i32* @HAVE_THREADS, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** @tr2tls_thread_main, align 8
  store %struct.tr2tls_thread_ctx* %6, %struct.tr2tls_thread_ctx** %1, align 8
  br label %18

7:                                                ; preds = %0
  %8 = load i32, i32* @tr2tls_key, align 4
  %9 = call %struct.tr2tls_thread_ctx* @pthread_getspecific(i32 %8)
  store %struct.tr2tls_thread_ctx* %9, %struct.tr2tls_thread_ctx** %2, align 8
  %10 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %2, align 8
  %11 = icmp ne %struct.tr2tls_thread_ctx* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = call i32 (...) @getnanotime()
  %14 = sdiv i32 %13, 1000
  %15 = call %struct.tr2tls_thread_ctx* @tr2tls_create_self(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %14)
  store %struct.tr2tls_thread_ctx* %15, %struct.tr2tls_thread_ctx** %2, align 8
  br label %16

16:                                               ; preds = %12, %7
  %17 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %2, align 8
  store %struct.tr2tls_thread_ctx* %17, %struct.tr2tls_thread_ctx** %1, align 8
  br label %18

18:                                               ; preds = %16, %5
  %19 = load %struct.tr2tls_thread_ctx*, %struct.tr2tls_thread_ctx** %1, align 8
  ret %struct.tr2tls_thread_ctx* %19
}

declare dso_local %struct.tr2tls_thread_ctx* @pthread_getspecific(i32) #1

declare dso_local %struct.tr2tls_thread_ctx* @tr2tls_create_self(i8*, i32) #1

declare dso_local i32 @getnanotime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
