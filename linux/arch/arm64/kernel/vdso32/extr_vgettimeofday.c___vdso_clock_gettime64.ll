; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/vdso32/extr_vgettimeofday.c___vdso_clock_gettime64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/vdso32/extr_vgettimeofday.c___vdso_clock_gettime64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__kernel_timespec = type { i32 }

@TASK_SIZE_32 = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__vdso_clock_gettime64(i32 %0, %struct.__kernel_timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.__kernel_timespec*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.__kernel_timespec* %1, %struct.__kernel_timespec** %5, align 8
  %6 = load %struct.__kernel_timespec*, %struct.__kernel_timespec** %5, align 8
  %7 = ptrtoint %struct.__kernel_timespec* %6 to i64
  %8 = load i64, i64* @TASK_SIZE_32, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EFAULT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %17

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.__kernel_timespec*, %struct.__kernel_timespec** %5, align 8
  %16 = call i32 @__cvdso_clock_gettime(i32 %14, %struct.__kernel_timespec* %15)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @__cvdso_clock_gettime(i32, %struct.__kernel_timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
