; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_copyexec_main_process_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_copyexec_main_process_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main_pid = common dso_local global i32 0, align 4
@main_process_creation_time = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"copyexec_main_process_init: |time (NULL) - get_process_creation_time (getpid ())| >= 10\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copyexec_main_process_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @getpid()
  store i32 %2, i32* @main_pid, align 4
  %3 = load i32, i32* @main_pid, align 4
  %4 = call i32 @get_process_creation_time(i32 %3)
  store i32 %4, i32* @main_process_creation_time, align 4
  %5 = call i32 @time(i32* null)
  %6 = load i32, i32* @main_process_creation_time, align 4
  %7 = sub nsw i32 %5, %6
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = icmp sgt i32 %8, -10
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32, i32* %1, align 4
  %12 = icmp slt i32 %11, 10
  br i1 %12, label %15, label %13

13:                                               ; preds = %10, %0
  %14 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %10
  %16 = call i32 (...) @running_lists_init()
  ret void
}

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @get_process_creation_time(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @vkprintf(i32, i8*) #1

declare dso_local i32 @running_lists_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
