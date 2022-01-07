; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_em_sti.c_em_sti_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_em_sti.c_em_sti_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.em_sti_priv = type { i32, i32, i32, %struct.platform_device*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@em_sti_interrupt = common dso_local global i32 0, align 4
@IRQF_TIMER = common dso_local global i32 0, align 4
@IRQF_IRQPOLL = common dso_local global i32 0, align 4
@IRQF_NOBALANCING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to request low IRQ\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"sclk\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"cannot prepare clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"cannot enable clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @em_sti_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_sti_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.em_sti_priv*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.em_sti_priv* @devm_kzalloc(i32* %9, i32 32, i32 %10)
  store %struct.em_sti_priv* %11, %struct.em_sti_priv** %4, align 8
  %12 = load %struct.em_sti_priv*, %struct.em_sti_priv** %4, align 8
  %13 = icmp eq %struct.em_sti_priv* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %139

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load %struct.em_sti_priv*, %struct.em_sti_priv** %4, align 8
  %20 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %19, i32 0, i32 3
  store %struct.platform_device* %18, %struct.platform_device** %20, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load %struct.em_sti_priv*, %struct.em_sti_priv** %4, align 8
  %23 = call i32 @platform_set_drvdata(%struct.platform_device* %21, %struct.em_sti_priv* %22)
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = call i32 @platform_get_irq(%struct.platform_device* %24, i32 0)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %139

30:                                               ; preds = %17
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load i32, i32* @IORESOURCE_MEM, align 4
  %33 = call %struct.resource* @platform_get_resource(%struct.platform_device* %31, i32 %32, i32 0)
  store %struct.resource* %33, %struct.resource** %5, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load %struct.resource*, %struct.resource** %5, align 8
  %37 = call i32 @devm_ioremap_resource(i32* %35, %struct.resource* %36)
  %38 = load %struct.em_sti_priv*, %struct.em_sti_priv** %4, align 8
  %39 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.em_sti_priv*, %struct.em_sti_priv** %4, align 8
  %41 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @IS_ERR(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %30
  %46 = load %struct.em_sti_priv*, %struct.em_sti_priv** %4, align 8
  %47 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @PTR_ERR(i32 %48)
  store i32 %49, i32* %2, align 4
  br label %139

50:                                               ; preds = %30
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @em_sti_interrupt, align 4
  %55 = load i32, i32* @IRQF_TIMER, align 4
  %56 = load i32, i32* @IRQF_IRQPOLL, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @IRQF_NOBALANCING, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i32 @dev_name(i32* %61)
  %63 = load %struct.em_sti_priv*, %struct.em_sti_priv** %4, align 8
  %64 = call i32 @devm_request_irq(i32* %52, i32 %53, i32 %54, i32 %59, i32 %62, %struct.em_sti_priv* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %50
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %139

72:                                               ; preds = %50
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 @devm_clk_get(i32* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %76 = load %struct.em_sti_priv*, %struct.em_sti_priv** %4, align 8
  %77 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.em_sti_priv*, %struct.em_sti_priv** %4, align 8
  %79 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @IS_ERR(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %72
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 @dev_err(i32* %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %87 = load %struct.em_sti_priv*, %struct.em_sti_priv** %4, align 8
  %88 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @PTR_ERR(i32 %89)
  store i32 %90, i32* %2, align 4
  br label %139

91:                                               ; preds = %72
  %92 = load %struct.em_sti_priv*, %struct.em_sti_priv** %4, align 8
  %93 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @clk_prepare(i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = call i32 @dev_err(i32* %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %139

103:                                              ; preds = %91
  %104 = load %struct.em_sti_priv*, %struct.em_sti_priv** %4, align 8
  %105 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @clk_enable(i32 %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %103
  %111 = load %struct.em_sti_priv*, %struct.em_sti_priv** %4, align 8
  %112 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %111, i32 0, i32 3
  %113 = load %struct.platform_device*, %struct.platform_device** %112, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = call i32 @dev_err(i32* %114, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %116 = load %struct.em_sti_priv*, %struct.em_sti_priv** %4, align 8
  %117 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @clk_unprepare(i32 %118)
  %120 = load i32, i32* %7, align 4
  store i32 %120, i32* %2, align 4
  br label %139

121:                                              ; preds = %103
  %122 = load %struct.em_sti_priv*, %struct.em_sti_priv** %4, align 8
  %123 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @clk_get_rate(i32 %124)
  %126 = load %struct.em_sti_priv*, %struct.em_sti_priv** %4, align 8
  %127 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load %struct.em_sti_priv*, %struct.em_sti_priv** %4, align 8
  %129 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @clk_disable(i32 %130)
  %132 = load %struct.em_sti_priv*, %struct.em_sti_priv** %4, align 8
  %133 = getelementptr inbounds %struct.em_sti_priv, %struct.em_sti_priv* %132, i32 0, i32 0
  %134 = call i32 @raw_spin_lock_init(i32* %133)
  %135 = load %struct.em_sti_priv*, %struct.em_sti_priv** %4, align 8
  %136 = call i32 @em_sti_register_clockevent(%struct.em_sti_priv* %135)
  %137 = load %struct.em_sti_priv*, %struct.em_sti_priv** %4, align 8
  %138 = call i32 @em_sti_register_clocksource(%struct.em_sti_priv* %137)
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %121, %110, %98, %83, %67, %45, %28, %14
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local %struct.em_sti_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.em_sti_priv*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.em_sti_priv*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @clk_prepare(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_unprepare(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @em_sti_register_clockevent(%struct.em_sti_priv*) #1

declare dso_local i32 @em_sti_register_clocksource(%struct.em_sti_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
