; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_psc.c_davinci_lpsc_clk_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_psc.c_davinci_lpsc_clk_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_lpsc_clk = type { i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_6__, %struct.regmap*, %struct.device* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i8**, i32, i32, i32* }
%struct.device = type { i32 }
%struct.regmap = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@davinci_lpsc_clk_ops = common dso_local global i32 0, align 4
@LPSC_ALWAYS_ENABLED = common dso_local global i32 0, align 4
@CLK_IS_CRITICAL = common dso_local global i32 0, align 4
@LPSC_SET_RATE_PARENT = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@davinci_psc_genpd_attach_dev = common dso_local global i32 0, align 4
@davinci_psc_genpd_detach_dev = common dso_local global i32 0, align 4
@GENPD_FLAG_PM_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.davinci_lpsc_clk* (%struct.device*, i8*, i8*, %struct.regmap*, i32, i32, i32)* @davinci_lpsc_clk_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.davinci_lpsc_clk* @davinci_lpsc_clk_register(%struct.device* %0, i8* %1, i8* %2, %struct.regmap* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.davinci_lpsc_clk*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.regmap*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.clk_init_data, align 8
  %17 = alloca %struct.davinci_lpsc_clk*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store %struct.regmap* %3, %struct.regmap** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.davinci_lpsc_clk* @kzalloc(i32 56, i32 %20)
  store %struct.davinci_lpsc_clk* %21, %struct.davinci_lpsc_clk** %17, align 8
  %22 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %17, align 8
  %23 = icmp ne %struct.davinci_lpsc_clk* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.davinci_lpsc_clk* @ERR_PTR(i32 %26)
  store %struct.davinci_lpsc_clk* %27, %struct.davinci_lpsc_clk** %8, align 8
  br label %140

28:                                               ; preds = %7
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %16, i32 0, i32 0
  store i8* %29, i8** %30, align 8
  %31 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %16, i32 0, i32 4
  store i32* @davinci_lpsc_clk_ops, i32** %31, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %36

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %34
  %37 = phi i8** [ %11, %34 ], [ null, %35 ]
  %38 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %16, i32 0, i32 1
  store i8** %37, i8*** %38, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = icmp ne i8* %39, null
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  %43 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %16, i32 0, i32 2
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %16, i32 0, i32 3
  store i32 0, i32* %44, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @LPSC_ALWAYS_ENABLED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %36
  %50 = load i32, i32* @CLK_IS_CRITICAL, align 4
  %51 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %16, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %49, %36
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* @LPSC_SET_RATE_PARENT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %61 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %16, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.device*, %struct.device** %9, align 8
  %66 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %17, align 8
  %67 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %66, i32 0, i32 6
  store %struct.device* %65, %struct.device** %67, align 8
  %68 = load %struct.regmap*, %struct.regmap** %12, align 8
  %69 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %17, align 8
  %70 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %69, i32 0, i32 5
  store %struct.regmap* %68, %struct.regmap** %70, align 8
  %71 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %17, align 8
  %72 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store %struct.clk_init_data* %16, %struct.clk_init_data** %73, align 8
  %74 = load i32, i32* %13, align 4
  %75 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %17, align 8
  %76 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %17, align 8
  %79 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %17, align 8
  %82 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.device*, %struct.device** %9, align 8
  %84 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %17, align 8
  %85 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %84, i32 0, i32 4
  %86 = call i32 @clk_hw_register(%struct.device* %83, %struct.TYPE_6__* %85)
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %18, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %64
  %90 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %17, align 8
  %91 = call i32 @kfree(%struct.davinci_lpsc_clk* %90)
  %92 = load i32, i32* %18, align 4
  %93 = call %struct.davinci_lpsc_clk* @ERR_PTR(i32 %92)
  store %struct.davinci_lpsc_clk* %93, %struct.davinci_lpsc_clk** %8, align 8
  br label %140

94:                                               ; preds = %64
  %95 = load %struct.device*, %struct.device** %9, align 8
  %96 = icmp ne %struct.device* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load %struct.device*, %struct.device** %9, align 8
  %99 = getelementptr inbounds %struct.device, %struct.device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %97, %94
  %103 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %17, align 8
  store %struct.davinci_lpsc_clk* %103, %struct.davinci_lpsc_clk** %8, align 8
  br label %140

104:                                              ; preds = %97
  %105 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %17, align 8
  %106 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %105, i32 0, i32 4
  %107 = load i8*, i8** %10, align 8
  %108 = load %struct.device*, %struct.device** %9, align 8
  %109 = call i32 @best_dev_name(%struct.device* %108)
  %110 = call i32 @clk_hw_register_clkdev(%struct.TYPE_6__* %106, i8* %107, i32 %109)
  store i32 %110, i32* %18, align 4
  %111 = load %struct.device*, %struct.device** %9, align 8
  %112 = load i32, i32* @GFP_KERNEL, align 4
  %113 = load %struct.device*, %struct.device** %9, align 8
  %114 = call i32 @best_dev_name(%struct.device* %113)
  %115 = load i8*, i8** %10, align 8
  %116 = call i32 @devm_kasprintf(%struct.device* %111, i32 %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %114, i8* %115)
  %117 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %17, align 8
  %118 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  store i32 %116, i32* %119, align 4
  %120 = load i32, i32* @davinci_psc_genpd_attach_dev, align 4
  %121 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %17, align 8
  %122 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  store i32 %120, i32* %123, align 4
  %124 = load i32, i32* @davinci_psc_genpd_detach_dev, align 4
  %125 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %17, align 8
  %126 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  store i32 %124, i32* %127, align 4
  %128 = load i32, i32* @GENPD_FLAG_PM_CLK, align 4
  %129 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %17, align 8
  %130 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 4
  %132 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %17, align 8
  %133 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %132, i32 0, i32 4
  %134 = call i32 @davinci_lpsc_clk_is_enabled(%struct.TYPE_6__* %133)
  store i32 %134, i32* %19, align 4
  %135 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %17, align 8
  %136 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %135, i32 0, i32 3
  %137 = load i32, i32* %19, align 4
  %138 = call i32 @pm_genpd_init(%struct.TYPE_5__* %136, i32* null, i32 %137)
  %139 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %17, align 8
  store %struct.davinci_lpsc_clk* %139, %struct.davinci_lpsc_clk** %8, align 8
  br label %140

140:                                              ; preds = %104, %102, %89, %24
  %141 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %8, align 8
  ret %struct.davinci_lpsc_clk* %141
}

declare dso_local %struct.davinci_lpsc_clk* @kzalloc(i32, i32) #1

declare dso_local %struct.davinci_lpsc_clk* @ERR_PTR(i32) #1

declare dso_local i32 @clk_hw_register(%struct.device*, %struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.davinci_lpsc_clk*) #1

declare dso_local i32 @clk_hw_register_clkdev(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @best_dev_name(%struct.device*) #1

declare dso_local i32 @devm_kasprintf(%struct.device*, i32, i8*, i32, i8*) #1

declare dso_local i32 @davinci_lpsc_clk_is_enabled(%struct.TYPE_6__*) #1

declare dso_local i32 @pm_genpd_init(%struct.TYPE_5__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
