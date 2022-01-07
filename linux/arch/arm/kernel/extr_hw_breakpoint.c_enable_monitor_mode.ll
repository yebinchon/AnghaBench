; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_hw_breakpoint.c_enable_monitor_mode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_hw_breakpoint.c_enable_monitor_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c0 = common dso_local global i32 0, align 4
@c1 = common dso_local global i32 0, align 4
@ARM_DSCR_MDBGEN = common dso_local global i32 0, align 4
@c2 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to enable monitor mode on CPU %d.\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @enable_monitor_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_monitor_mode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @c0, align 4
  %4 = load i32, i32* @c1, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @ARM_DBG_READ(i32 %3, i32 %4, i32 0, i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @ARM_DSCR_MDBGEN, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %47

12:                                               ; preds = %0
  %13 = call i32 (...) @get_debug_arch()
  switch i32 %13, label %29 [
    i32 132, label %14
    i32 131, label %14
    i32 129, label %21
    i32 130, label %21
    i32 128, label %21
  ]

14:                                               ; preds = %12, %12
  %15 = load i32, i32* @c0, align 4
  %16 = load i32, i32* @c1, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @ARM_DSCR_MDBGEN, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @ARM_DBG_WRITE(i32 %15, i32 %16, i32 0, i32 %19)
  br label %32

21:                                               ; preds = %12, %12, %12
  %22 = load i32, i32* @c0, align 4
  %23 = load i32, i32* @c2, align 4
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @ARM_DSCR_MDBGEN, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @ARM_DBG_WRITE(i32 %22, i32 %23, i32 2, i32 %26)
  %28 = call i32 (...) @isb()
  br label %32

29:                                               ; preds = %12
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %1, align 4
  br label %48

32:                                               ; preds = %21, %14
  %33 = load i32, i32* @c0, align 4
  %34 = load i32, i32* @c1, align 4
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @ARM_DBG_READ(i32 %33, i32 %34, i32 0, i32 %35)
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @ARM_DSCR_MDBGEN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %32
  %42 = call i32 (...) @smp_processor_id()
  %43 = call i32 @pr_warn_once(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EPERM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %1, align 4
  br label %48

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46, %11
  store i32 0, i32* %1, align 4
  br label %48

48:                                               ; preds = %47, %41, %29
  %49 = load i32, i32* %1, align 4
  ret i32 %49
}

declare dso_local i32 @ARM_DBG_READ(i32, i32, i32, i32) #1

declare dso_local i32 @get_debug_arch(...) #1

declare dso_local i32 @ARM_DBG_WRITE(i32, i32, i32, i32) #1

declare dso_local i32 @isb(...) #1

declare dso_local i32 @pr_warn_once(i8*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
