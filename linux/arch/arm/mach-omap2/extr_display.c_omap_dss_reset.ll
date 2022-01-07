; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_display.c_omap_dss_reset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_display.c_omap_dss_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hwmod = type { i32, %struct.omap_hwmod_opt_clk*, %struct.TYPE_4__* }
%struct.omap_hwmod_opt_clk = type { i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@SYSS_HAS_RESET_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"dss_core: hwmod data doesn't contain reset data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DSS_SDI_CONTROL = common dso_local global i32 0, align 4
@DSS_PLL_CONTROL = common dso_local global i32 0, align 4
@DSS_CONTROL = common dso_local global i32 0, align 4
@SYSS_RESETDONE_MASK = common dso_local global i32 0, align 4
@MAX_MODULE_SOFTRESET_WAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"dss_core: waiting for reset to finish failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"dss_core: softreset done\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_dss_reset(%struct.omap_hwmod* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_hwmod*, align 8
  %4 = alloca %struct.omap_hwmod_opt_clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.omap_hwmod* %0, %struct.omap_hwmod** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %9 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SYSS_HAS_RESET_STATUS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %121

22:                                               ; preds = %1
  %23 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %24 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %6, align 4
  %26 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %27 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %26, i32 0, i32 1
  %28 = load %struct.omap_hwmod_opt_clk*, %struct.omap_hwmod_opt_clk** %27, align 8
  store %struct.omap_hwmod_opt_clk* %28, %struct.omap_hwmod_opt_clk** %4, align 8
  br label %29

29:                                               ; preds = %43, %22
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load %struct.omap_hwmod_opt_clk*, %struct.omap_hwmod_opt_clk** %4, align 8
  %34 = getelementptr inbounds %struct.omap_hwmod_opt_clk, %struct.omap_hwmod_opt_clk* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.omap_hwmod_opt_clk*, %struct.omap_hwmod_opt_clk** %4, align 8
  %39 = getelementptr inbounds %struct.omap_hwmod_opt_clk, %struct.omap_hwmod_opt_clk* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @clk_prepare_enable(i64 %40)
  br label %42

42:                                               ; preds = %37, %32
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %6, align 4
  %46 = load %struct.omap_hwmod_opt_clk*, %struct.omap_hwmod_opt_clk** %4, align 8
  %47 = getelementptr inbounds %struct.omap_hwmod_opt_clk, %struct.omap_hwmod_opt_clk* %46, i32 1
  store %struct.omap_hwmod_opt_clk* %47, %struct.omap_hwmod_opt_clk** %4, align 8
  br label %29

48:                                               ; preds = %29
  %49 = call i32 (...) @dispc_disable_outputs()
  %50 = call i64 (...) @cpu_is_omap3430()
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %54 = load i32, i32* @DSS_SDI_CONTROL, align 4
  %55 = call i32 @omap_hwmod_write(i32 0, %struct.omap_hwmod* %53, i32 %54)
  %56 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %57 = load i32, i32* @DSS_PLL_CONTROL, align 4
  %58 = call i32 @omap_hwmod_write(i32 0, %struct.omap_hwmod* %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %48
  %60 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %61 = load i32, i32* @DSS_CONTROL, align 4
  %62 = call i32 @omap_hwmod_write(i32 0, %struct.omap_hwmod* %60, i32 %61)
  %63 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %64 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %65 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @omap_hwmod_read(%struct.omap_hwmod* %63, i32 %70)
  %72 = load i32, i32* @SYSS_RESETDONE_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @MAX_MODULE_SOFTRESET_WAIT, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @omap_test_timeout(i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @MAX_MODULE_SOFTRESET_WAIT, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %59
  %81 = call i32 @pr_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %84

82:                                               ; preds = %59
  %83 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %80
  %85 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %86 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %6, align 4
  %88 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %89 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %88, i32 0, i32 1
  %90 = load %struct.omap_hwmod_opt_clk*, %struct.omap_hwmod_opt_clk** %89, align 8
  store %struct.omap_hwmod_opt_clk* %90, %struct.omap_hwmod_opt_clk** %4, align 8
  br label %91

91:                                               ; preds = %105, %84
  %92 = load i32, i32* %6, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %91
  %95 = load %struct.omap_hwmod_opt_clk*, %struct.omap_hwmod_opt_clk** %4, align 8
  %96 = getelementptr inbounds %struct.omap_hwmod_opt_clk, %struct.omap_hwmod_opt_clk* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.omap_hwmod_opt_clk*, %struct.omap_hwmod_opt_clk** %4, align 8
  %101 = getelementptr inbounds %struct.omap_hwmod_opt_clk, %struct.omap_hwmod_opt_clk* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @clk_disable_unprepare(i64 %102)
  br label %104

104:                                              ; preds = %99, %94
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %6, align 4
  %108 = load %struct.omap_hwmod_opt_clk*, %struct.omap_hwmod_opt_clk** %4, align 8
  %109 = getelementptr inbounds %struct.omap_hwmod_opt_clk, %struct.omap_hwmod_opt_clk* %108, i32 1
  store %struct.omap_hwmod_opt_clk* %109, %struct.omap_hwmod_opt_clk** %4, align 8
  br label %91

110:                                              ; preds = %91
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @MAX_MODULE_SOFTRESET_WAIT, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i32, i32* @ETIMEDOUT, align 4
  %116 = sub nsw i32 0, %115
  br label %118

117:                                              ; preds = %110
  br label %118

118:                                              ; preds = %117, %114
  %119 = phi i32 [ %116, %114 ], [ 0, %117 ]
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %118, %18
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @dispc_disable_outputs(...) #1

declare dso_local i64 @cpu_is_omap3430(...) #1

declare dso_local i32 @omap_hwmod_write(i32, %struct.omap_hwmod*, i32) #1

declare dso_local i32 @omap_test_timeout(i32, i32, i32) #1

declare dso_local i32 @omap_hwmod_read(%struct.omap_hwmod*, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
