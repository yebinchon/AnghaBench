; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_hwmod_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_hwmod_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.clockdomain*)* }
%struct.clockdomain = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.omap_hwmod = type { i32 }

@arch_clkdm = common dso_local global %struct.TYPE_4__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"clockdomain: %s: disabled\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clkdm_hwmod_disable(%struct.clockdomain* %0, %struct.omap_hwmod* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clockdomain*, align 8
  %5 = alloca %struct.omap_hwmod*, align 8
  store %struct.clockdomain* %0, %struct.clockdomain** %4, align 8
  store %struct.omap_hwmod* %1, %struct.omap_hwmod** %5, align 8
  %6 = call i64 (...) @cpu_is_omap24xx()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = call i64 (...) @cpu_is_omap34xx()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  store i32 0, i32* %3, align 4
  br label %83

12:                                               ; preds = %8
  %13 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %14 = icmp ne %struct.clockdomain* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load %struct.omap_hwmod*, %struct.omap_hwmod** %5, align 8
  %17 = icmp ne %struct.omap_hwmod* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arch_clkdm, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arch_clkdm, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.clockdomain*)*, i32 (%struct.clockdomain*)** %23, align 8
  %25 = icmp ne i32 (%struct.clockdomain*)* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21, %18, %15, %12
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %83

29:                                               ; preds = %21
  %30 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %31 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pwrdm_lock(i32 %33)
  %35 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %36 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %29
  %40 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %41 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pwrdm_unlock(i32 %43)
  %45 = call i32 @WARN_ON(i32 1)
  %46 = load i32, i32* @ERANGE, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %83

48:                                               ; preds = %29
  %49 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %50 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, -1
  store i64 %52, i64* %50, align 8
  %53 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %54 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %48
  %58 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %59 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @pwrdm_unlock(i32 %61)
  store i32 0, i32* %3, align 4
  br label %83

63:                                               ; preds = %48
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @arch_clkdm, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32 (%struct.clockdomain*)*, i32 (%struct.clockdomain*)** %65, align 8
  %67 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %68 = call i32 %66(%struct.clockdomain* %67)
  %69 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %70 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pwrdm_state_switch_nolock(i32 %72)
  %74 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %75 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @pwrdm_unlock(i32 %77)
  %79 = load %struct.clockdomain*, %struct.clockdomain** %4, align 8
  %80 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %81)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %63, %57, %39, %26, %11
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i64 @cpu_is_omap24xx(...) #1

declare dso_local i64 @cpu_is_omap34xx(...) #1

declare dso_local i32 @pwrdm_lock(i32) #1

declare dso_local i32 @pwrdm_unlock(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pwrdm_state_switch_nolock(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
