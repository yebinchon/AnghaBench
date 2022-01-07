; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_empty.c_thread_main.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_empty.c_thread_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }

@running = common dso_local global i64 0, align 8
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @thread_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_main(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.timespec, align 4
  store i8* %0, i8** %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = load i64, i64* @running, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = load i32, i32* @CLOCK_REALTIME, align 4
  %9 = call i32 @clock_gettime(i32 %8, %struct.timespec* %3)
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = call i32 @thrd_sleep(%struct.timespec* %3, i32* null)
  %14 = call i32 (...) @glfwPostEmptyEvent()
  br label %4

15:                                               ; preds = %4
  ret i32 0
}

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @thrd_sleep(%struct.timespec*, i32*) #1

declare dso_local i32 @glfwPostEmptyEvent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
