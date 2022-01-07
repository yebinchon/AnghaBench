; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dfll = type { i64, i32, i32, i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 (...)* }

@REF_CLOCK_RATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"unexpected ref clk rate %lu, expecting %lu\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to prepare ref_clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to prepare soc_clk\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to prepare i2c_clk\0A\00", align 1
@DFLL_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_dfll*)* @dfll_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfll_init(%struct.tegra_dfll* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_dfll*, align 8
  %4 = alloca i32, align 4
  store %struct.tegra_dfll* %0, %struct.tegra_dfll** %3, align 8
  %5 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %6 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @clk_get_rate(i32 %7)
  %9 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %10 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @REF_CLOCK_RATE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %18 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %21 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @REF_CLOCK_RATE, align 8
  %24 = call i32 (i32, i8*, ...) @dev_err(i32 %19, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %121

27:                                               ; preds = %1
  %28 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %29 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @reset_control_deassert(i32 %30)
  %32 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %33 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @clk_prepare(i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %40 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i8*, ...) @dev_err(i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %121

44:                                               ; preds = %27
  %45 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %46 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @clk_prepare(i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %53 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, ...) @dev_err(i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %111

56:                                               ; preds = %44
  %57 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %58 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @clk_prepare(i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %65 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i8*, ...) @dev_err(i32 %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %106

68:                                               ; preds = %56
  %69 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %70 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %69, i32 0, i32 6
  store i64 0, i64* %70, align 8
  %71 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %72 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @pm_runtime_enable(i32 %73)
  %75 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %76 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @pm_runtime_get_sync(i32 %77)
  %79 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %80 = load i32, i32* @DFLL_DISABLED, align 4
  %81 = call i32 @dfll_set_mode(%struct.tegra_dfll* %79, i32 %80)
  %82 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %83 = call i32 @dfll_set_default_params(%struct.tegra_dfll* %82)
  %84 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %85 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %84, i32 0, i32 5
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32 (...)*, i32 (...)** %87, align 8
  %89 = icmp ne i32 (...)* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %68
  %91 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %92 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %91, i32 0, i32 5
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32 (...)*, i32 (...)** %94, align 8
  %96 = call i32 (...) %95()
  br label %97

97:                                               ; preds = %90, %68
  %98 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %99 = call i32 @dfll_set_open_loop_config(%struct.tegra_dfll* %98)
  %100 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %101 = call i32 @dfll_init_out_if(%struct.tegra_dfll* %100)
  %102 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %103 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @pm_runtime_put_sync(i32 %104)
  store i32 0, i32* %2, align 4
  br label %121

106:                                              ; preds = %63
  %107 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %108 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @clk_unprepare(i32 %109)
  br label %111

111:                                              ; preds = %106, %51
  %112 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %113 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @clk_unprepare(i32 %114)
  %116 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %117 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @reset_control_assert(i32 %118)
  %120 = load i32, i32* %4, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %111, %97, %38, %16
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @clk_prepare(i32) #1

declare dso_local i32 @pm_runtime_enable(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @dfll_set_mode(%struct.tegra_dfll*, i32) #1

declare dso_local i32 @dfll_set_default_params(%struct.tegra_dfll*) #1

declare dso_local i32 @dfll_set_open_loop_config(%struct.tegra_dfll*) #1

declare dso_local i32 @dfll_init_out_if(%struct.tegra_dfll*) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @clk_unprepare(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
