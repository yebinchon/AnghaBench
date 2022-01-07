; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/ralink/extr_timer.c_rt_timer_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/ralink/extr_timer.c_rt_timer_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.resource = type { i32 }
%struct.rt_timer = type { i64, i32, i32*, %struct.clk* }
%struct.clk = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to allocate memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed get clock rate\0A\00", align 1
@TMR0CTL_PRESCALE_DIV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"maximum frequency is %luHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rt_timer_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_timer_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.rt_timer*, align 8
  %6 = alloca %struct.clk*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @IORESOURCE_MEM, align 4
  %9 = call %struct.resource* @platform_get_resource(%struct.platform_device* %7, i32 %8, i32 0)
  store %struct.resource* %9, %struct.resource** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.rt_timer* @devm_kzalloc(i32* %11, i32 32, i32 %12)
  store %struct.rt_timer* %13, %struct.rt_timer** %5, align 8
  %14 = load %struct.rt_timer*, %struct.rt_timer** %5, align 8
  %15 = icmp ne %struct.rt_timer* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %100

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = call i64 @platform_get_irq(%struct.platform_device* %23, i32 0)
  %25 = load %struct.rt_timer*, %struct.rt_timer** %5, align 8
  %26 = getelementptr inbounds %struct.rt_timer, %struct.rt_timer* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.rt_timer*, %struct.rt_timer** %5, align 8
  %28 = getelementptr inbounds %struct.rt_timer, %struct.rt_timer* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.rt_timer*, %struct.rt_timer** %5, align 8
  %33 = getelementptr inbounds %struct.rt_timer, %struct.rt_timer* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %2, align 4
  br label %100

36:                                               ; preds = %22
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load %struct.resource*, %struct.resource** %4, align 8
  %40 = call %struct.clk* @devm_ioremap_resource(i32* %38, %struct.resource* %39)
  %41 = load %struct.rt_timer*, %struct.rt_timer** %5, align 8
  %42 = getelementptr inbounds %struct.rt_timer, %struct.rt_timer* %41, i32 0, i32 3
  store %struct.clk* %40, %struct.clk** %42, align 8
  %43 = load %struct.rt_timer*, %struct.rt_timer** %5, align 8
  %44 = getelementptr inbounds %struct.rt_timer, %struct.rt_timer* %43, i32 0, i32 3
  %45 = load %struct.clk*, %struct.clk** %44, align 8
  %46 = call i64 @IS_ERR(%struct.clk* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %36
  %49 = load %struct.rt_timer*, %struct.rt_timer** %5, align 8
  %50 = getelementptr inbounds %struct.rt_timer, %struct.rt_timer* %49, i32 0, i32 3
  %51 = load %struct.clk*, %struct.clk** %50, align 8
  %52 = call i32 @PTR_ERR(%struct.clk* %51)
  store i32 %52, i32* %2, align 4
  br label %100

53:                                               ; preds = %36
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call %struct.clk* @devm_clk_get(i32* %55, i32* null)
  store %struct.clk* %56, %struct.clk** %6, align 8
  %57 = load %struct.clk*, %struct.clk** %6, align 8
  %58 = call i64 @IS_ERR(%struct.clk* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 @dev_err(i32* %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.clk*, %struct.clk** %6, align 8
  %65 = call i32 @PTR_ERR(%struct.clk* %64)
  store i32 %65, i32* %2, align 4
  br label %100

66:                                               ; preds = %53
  %67 = load %struct.clk*, %struct.clk** %6, align 8
  %68 = call i32 @clk_get_rate(%struct.clk* %67)
  %69 = load i32, i32* @TMR0CTL_PRESCALE_DIV, align 4
  %70 = sdiv i32 %68, %69
  %71 = load %struct.rt_timer*, %struct.rt_timer** %5, align 8
  %72 = getelementptr inbounds %struct.rt_timer, %struct.rt_timer* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.rt_timer*, %struct.rt_timer** %5, align 8
  %74 = getelementptr inbounds %struct.rt_timer, %struct.rt_timer* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %66
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %100

80:                                               ; preds = %66
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = load %struct.rt_timer*, %struct.rt_timer** %5, align 8
  %84 = getelementptr inbounds %struct.rt_timer, %struct.rt_timer* %83, i32 0, i32 2
  store i32* %82, i32** %84, align 8
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = load %struct.rt_timer*, %struct.rt_timer** %5, align 8
  %87 = call i32 @platform_set_drvdata(%struct.platform_device* %85, %struct.rt_timer* %86)
  %88 = load %struct.rt_timer*, %struct.rt_timer** %5, align 8
  %89 = call i32 @rt_timer_request(%struct.rt_timer* %88)
  %90 = load %struct.rt_timer*, %struct.rt_timer** %5, align 8
  %91 = call i32 @rt_timer_config(%struct.rt_timer* %90, i32 2)
  %92 = load %struct.rt_timer*, %struct.rt_timer** %5, align 8
  %93 = call i32 @rt_timer_enable(%struct.rt_timer* %92)
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load %struct.rt_timer*, %struct.rt_timer** %5, align 8
  %97 = getelementptr inbounds %struct.rt_timer, %struct.rt_timer* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @dev_info(i32* %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %80, %77, %60, %48, %31, %16
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.rt_timer* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.clk* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local %struct.clk* @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rt_timer*) #1

declare dso_local i32 @rt_timer_request(%struct.rt_timer*) #1

declare dso_local i32 @rt_timer_config(%struct.rt_timer*, i32) #1

declare dso_local i32 @rt_timer_enable(%struct.rt_timer*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
