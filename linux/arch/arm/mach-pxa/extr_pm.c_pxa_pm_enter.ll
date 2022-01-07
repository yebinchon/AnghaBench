; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_pm.c_pxa_pm_enter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_pm.c_pxa_pm_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i64*)*, i32 (i64)*, i32 (i64*)* }

@PM_SUSPEND_STANDBY = common dso_local global i64 0, align 8
@pxa_cpu_pm_fns = common dso_local global %struct.TYPE_2__* null, align 8
@sleep_save = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"*** made it back from resume\0A\00", align 1
@HWCAP_IWMMXT = common dso_local global i32 0, align 4
@elf_hwcap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pxa_pm_enter(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @PM_SUSPEND_STANDBY, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %39

9:                                                ; preds = %1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pxa_cpu_pm_fns, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = load i32 (i64*)*, i32 (i64*)** %11, align 8
  %13 = icmp ne i32 (i64*)* %12, null
  br i1 %13, label %14, label %39

14:                                               ; preds = %9
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pxa_cpu_pm_fns, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load i32 (i64*)*, i32 (i64*)** %16, align 8
  %18 = load i64*, i64** @sleep_save, align 8
  %19 = call i32 %17(i64* %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %35, %14
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pxa_cpu_pm_fns, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %20
  %28 = load i64*, i64** @sleep_save, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %3, align 8
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %20

38:                                               ; preds = %20
  br label %39

39:                                               ; preds = %38, %9, %1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pxa_cpu_pm_fns, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32 (i64)*, i32 (i64)** %41, align 8
  %43 = load i64, i64* %2, align 8
  %44 = call i32 %42(i64 %43)
  %45 = load i64, i64* %2, align 8
  %46 = load i64, i64* @PM_SUSPEND_STANDBY, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %90

48:                                               ; preds = %39
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pxa_cpu_pm_fns, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32 (i64*)*, i32 (i64*)** %50, align 8
  %52 = icmp ne i32 (i64*)* %51, null
  br i1 %52, label %53, label %90

53:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %69, %53
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pxa_cpu_pm_fns, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, 1
  %60 = icmp slt i32 %55, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %54
  %62 = load i64*, i64** @sleep_save, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %4, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %4, align 8
  br label %69

69:                                               ; preds = %61
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %54

72:                                               ; preds = %54
  %73 = load i64, i64* %4, align 8
  %74 = load i64, i64* %3, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = call i32 @lubbock_set_hexled(i32 -1160008251)
  br label %78

78:                                               ; preds = %76, %78
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pxa_cpu_pm_fns, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32 (i64)*, i32 (i64)** %80, align 8
  %82 = load i64, i64* %2, align 8
  %83 = call i32 %81(i64 %82)
  br label %78

84:                                               ; preds = %72
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pxa_cpu_pm_fns, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32 (i64*)*, i32 (i64*)** %86, align 8
  %88 = load i64*, i64** @sleep_save, align 8
  %89 = call i32 %87(i64* %88)
  br label %90

90:                                               ; preds = %84, %48, %39
  %91 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @lubbock_set_hexled(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
