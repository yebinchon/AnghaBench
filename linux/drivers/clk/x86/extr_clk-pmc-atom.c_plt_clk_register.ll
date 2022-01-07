; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/x86/extr_clk-pmc-atom.c_plt_clk_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/x86/extr_clk-pmc-atom.c_plt_clk_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_plt = type { i32, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8**, i32, i32, i32, i32* }
%struct.platform_device = type { i32 }
%struct.pmc_clk_data = type { i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s_%d\00", align 1
@PLT_CLK_NAME_BASE = common dso_local global i32 0, align 4
@plt_clk_ops = common dso_local global i32 0, align 4
@PMC_CLK_CTL_OFFSET = common dso_local global i64 0, align 8
@PMC_CLK_CTL_SIZE = common dso_local global i32 0, align 4
@CLK_IS_CRITICAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk_plt* (%struct.platform_device*, i32, %struct.pmc_clk_data*, i8**, i32)* @plt_clk_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk_plt* @plt_clk_register(%struct.platform_device* %0, i32 %1, %struct.pmc_clk_data* %2, i8** %3, i32 %4) #0 {
  %6 = alloca %struct.clk_plt*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pmc_clk_data*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.clk_plt*, align 8
  %13 = alloca %struct.clk_init_data, align 8
  %14 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.pmc_clk_data* %2, %struct.pmc_clk_data** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.clk_plt* @devm_kzalloc(i32* %16, i32 32, i32 %17)
  store %struct.clk_plt* %18, %struct.clk_plt** %12, align 8
  %19 = load %struct.clk_plt*, %struct.clk_plt** %12, align 8
  %20 = icmp ne %struct.clk_plt* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.clk_plt* @ERR_PTR(i32 %23)
  store %struct.clk_plt* %24, %struct.clk_plt** %6, align 8
  br label %102

25:                                               ; preds = %5
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = load i32, i32* @PLT_CLK_NAME_BASE, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @kasprintf(i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %13, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %13, i32 0, i32 4
  store i32* @plt_clk_ops, i32** %31, align 8
  %32 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %13, i32 0, i32 3
  store i32 0, i32* %32, align 8
  %33 = load i8**, i8*** %10, align 8
  %34 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %13, i32 0, i32 0
  store i8** %33, i8*** %34, align 8
  %35 = load i32, i32* %11, align 4
  %36 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %13, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = load %struct.clk_plt*, %struct.clk_plt** %12, align 8
  %38 = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store %struct.clk_init_data* %13, %struct.clk_init_data** %39, align 8
  %40 = load %struct.pmc_clk_data*, %struct.pmc_clk_data** %9, align 8
  %41 = getelementptr inbounds %struct.pmc_clk_data, %struct.pmc_clk_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PMC_CLK_CTL_OFFSET, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @PMC_CLK_CTL_SIZE, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %44, %48
  %50 = load %struct.clk_plt*, %struct.clk_plt** %12, align 8
  %51 = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %50, i32 0, i32 3
  store i64 %49, i64* %51, align 8
  %52 = load %struct.clk_plt*, %struct.clk_plt** %12, align 8
  %53 = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %52, i32 0, i32 2
  %54 = call i32 @spin_lock_init(i32* %53)
  %55 = load %struct.pmc_clk_data*, %struct.pmc_clk_data** %9, align 8
  %56 = getelementptr inbounds %struct.pmc_clk_data, %struct.pmc_clk_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %25
  %60 = load %struct.clk_plt*, %struct.clk_plt** %12, align 8
  %61 = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %60, i32 0, i32 1
  %62 = call i64 @plt_clk_is_enabled(%struct.TYPE_4__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i32, i32* @CLK_IS_CRITICAL, align 4
  %66 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %13, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %64, %59, %25
  %70 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load %struct.clk_plt*, %struct.clk_plt** %12, align 8
  %73 = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %72, i32 0, i32 1
  %74 = call i32 @devm_clk_hw_register(i32* %71, %struct.TYPE_4__* %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load i32, i32* %14, align 4
  %79 = call %struct.clk_plt* @ERR_PTR(i32 %78)
  store %struct.clk_plt* %79, %struct.clk_plt** %12, align 8
  br label %97

80:                                               ; preds = %69
  %81 = load %struct.clk_plt*, %struct.clk_plt** %12, align 8
  %82 = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %13, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @clkdev_hw_create(%struct.TYPE_4__* %82, i32 %84, i32* null)
  %86 = load %struct.clk_plt*, %struct.clk_plt** %12, align 8
  %87 = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.clk_plt*, %struct.clk_plt** %12, align 8
  %89 = getelementptr inbounds %struct.clk_plt, %struct.clk_plt* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %80
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  %95 = call %struct.clk_plt* @ERR_PTR(i32 %94)
  store %struct.clk_plt* %95, %struct.clk_plt** %12, align 8
  br label %97

96:                                               ; preds = %80
  br label %97

97:                                               ; preds = %96, %92, %77
  %98 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %13, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @kfree(i32 %99)
  %101 = load %struct.clk_plt*, %struct.clk_plt** %12, align 8
  store %struct.clk_plt* %101, %struct.clk_plt** %6, align 8
  br label %102

102:                                              ; preds = %97, %21
  %103 = load %struct.clk_plt*, %struct.clk_plt** %6, align 8
  ret %struct.clk_plt* %103
}

declare dso_local %struct.clk_plt* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.clk_plt* @ERR_PTR(i32) #1

declare dso_local i32 @kasprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @plt_clk_is_enabled(%struct.TYPE_4__*) #1

declare dso_local i32 @devm_clk_hw_register(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @clkdev_hw_create(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
