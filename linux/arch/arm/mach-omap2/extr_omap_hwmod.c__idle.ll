; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__idle.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.omap_hwmod*)* }
%struct.omap_hwmod = type { i32, i64, i64, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@HWMOD_NO_IDLE = common dso_local global i32 0, align 4
@_HWMOD_SKIP_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"omap_hwmod: %s: idling\0A\00", align 1
@_HWMOD_STATE_ENABLED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [67 x i8] c"omap_hwmod: %s: idle state can only be entered from enabled state\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mpu_oh = common dso_local global i32 0, align 4
@HWMOD_CLKDM_NOAUTO = common dso_local global i32 0, align 4
@HWMOD_BLOCK_WFI = common dso_local global i32 0, align 4
@soc_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@_HWMOD_STATE_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hwmod*)* @_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_idle(%struct.omap_hwmod* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_hwmod*, align 8
  store %struct.omap_hwmod* %0, %struct.omap_hwmod** %3, align 8
  %4 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %5 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @HWMOD_NO_IDLE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, i32* @_HWMOD_SKIP_ENABLE, align 4
  %12 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %13 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  store i32 0, i32* %2, align 4
  br label %105

16:                                               ; preds = %1
  %17 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %18 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %22 = call i64 @_are_all_hardreset_lines_asserted(%struct.omap_hwmod* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %105

25:                                               ; preds = %16
  %26 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %27 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @_HWMOD_STATE_ENABLED, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %33 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %105

38:                                               ; preds = %25
  %39 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %40 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %39, i32 0, i32 3
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %47 = call i32 @_idle_sysc(%struct.omap_hwmod* %46)
  br label %48

48:                                               ; preds = %45, %38
  %49 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %50 = load i32, i32* @mpu_oh, align 4
  %51 = call i32 @_del_initiator_dep(%struct.omap_hwmod* %49, i32 %50)
  %52 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %53 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %48
  %57 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %58 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @HWMOD_CLKDM_NOAUTO, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %56
  %64 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %65 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @clkdm_deny_idle(i64 %66)
  br label %68

68:                                               ; preds = %63, %56, %48
  %69 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %70 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @HWMOD_BLOCK_WFI, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = call i32 @cpu_idle_poll_ctrl(i32 0)
  br label %77

77:                                               ; preds = %75, %68
  %78 = load i32 (%struct.omap_hwmod*)*, i32 (%struct.omap_hwmod*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soc_ops, i32 0, i32 0), align 8
  %79 = icmp ne i32 (%struct.omap_hwmod*)* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32 (%struct.omap_hwmod*)*, i32 (%struct.omap_hwmod*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @soc_ops, i32 0, i32 0), align 8
  %82 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %83 = call i32 %81(%struct.omap_hwmod* %82)
  br label %84

84:                                               ; preds = %80, %77
  %85 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %86 = call i32 @_disable_clocks(%struct.omap_hwmod* %85)
  %87 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %88 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %84
  %92 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %93 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @clkdm_allow_idle(i64 %94)
  %96 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %97 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %100 = call i32 @clkdm_hwmod_disable(i64 %98, %struct.omap_hwmod* %99)
  br label %101

101:                                              ; preds = %91, %84
  %102 = load i64, i64* @_HWMOD_STATE_IDLE, align 8
  %103 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %104 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %101, %31, %24, %10
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i64 @_are_all_hardreset_lines_asserted(%struct.omap_hwmod*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @_idle_sysc(%struct.omap_hwmod*) #1

declare dso_local i32 @_del_initiator_dep(%struct.omap_hwmod*, i32) #1

declare dso_local i32 @clkdm_deny_idle(i64) #1

declare dso_local i32 @cpu_idle_poll_ctrl(i32) #1

declare dso_local i32 @_disable_clocks(%struct.omap_hwmod*) #1

declare dso_local i32 @clkdm_allow_idle(i64) #1

declare dso_local i32 @clkdm_hwmod_disable(i64, %struct.omap_hwmod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
