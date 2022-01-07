; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_gptu.c_gptu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lantiq/xway/extr_gptu.c_gptu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.resource = type { i32 }

@irqres = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to get IRQ list\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@gptu_membase = common dso_local global %struct.clk* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Failed to get clock\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@GPTU_ID = common dso_local global i32 0, align 4
@GPTU_MAGIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Failed to find magic\0A\00", align 1
@ENAVAIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"timer1a\00", align 1
@TIMER1A = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"timer1b\00", align 1
@TIMER1B = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"timer2a\00", align 1
@TIMER2A = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"timer2b\00", align 1
@TIMER2B = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"timer3a\00", align 1
@TIMER3A = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"timer3b\00", align 1
@TIMER3B = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"gptu: 6 timers loaded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gptu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gptu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @irqres, align 4
  %11 = call i32 @of_irq_to_resource_table(i32 %9, i32 %10, i32 6)
  %12 = icmp ne i32 %11, 6
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(%struct.TYPE_6__* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %95

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %5, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.resource*, %struct.resource** %5, align 8
  %26 = call %struct.clk* @devm_ioremap_resource(%struct.TYPE_6__* %24, %struct.resource* %25)
  store %struct.clk* %26, %struct.clk** @gptu_membase, align 8
  %27 = load %struct.clk*, %struct.clk** @gptu_membase, align 8
  %28 = call i64 @IS_ERR(%struct.clk* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load %struct.clk*, %struct.clk** @gptu_membase, align 8
  %32 = call i32 @PTR_ERR(%struct.clk* %31)
  store i32 %32, i32* %2, align 4
  br label %95

33:                                               ; preds = %19
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call %struct.clk* @clk_get(%struct.TYPE_6__* %35, i32* null)
  store %struct.clk* %36, %struct.clk** %4, align 8
  %37 = load %struct.clk*, %struct.clk** %4, align 8
  %38 = call i64 @IS_ERR(%struct.clk* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call i32 @dev_err(%struct.TYPE_6__* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ENOENT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %95

46:                                               ; preds = %33
  %47 = load %struct.clk*, %struct.clk** %4, align 8
  %48 = call i32 @clk_enable(%struct.clk* %47)
  %49 = call i32 (...) @gptu_hwinit()
  %50 = load i32, i32* @GPTU_ID, align 4
  %51 = call i32 @gptu_r32(i32 %50)
  %52 = ashr i32 %51, 8
  %53 = and i32 %52, 255
  %54 = load i32, i32* @GPTU_MAGIC, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %46
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i32 @dev_err(%struct.TYPE_6__* %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %60 = call i32 (...) @gptu_hwexit()
  %61 = load %struct.clk*, %struct.clk** %4, align 8
  %62 = call i32 @clk_disable(%struct.clk* %61)
  %63 = load %struct.clk*, %struct.clk** %4, align 8
  %64 = call i32 @clk_put(%struct.clk* %63)
  %65 = load i32, i32* @ENAVAIL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %95

67:                                               ; preds = %46
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = load i32, i32* @TIMER1A, align 4
  %71 = call i32 @clkdev_add_gptu(%struct.TYPE_6__* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load i32, i32* @TIMER1B, align 4
  %75 = call i32 @clkdev_add_gptu(%struct.TYPE_6__* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = load i32, i32* @TIMER2A, align 4
  %79 = call i32 @clkdev_add_gptu(%struct.TYPE_6__* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load i32, i32* @TIMER2B, align 4
  %83 = call i32 @clkdev_add_gptu(%struct.TYPE_6__* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %82)
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = load i32, i32* @TIMER3A, align 4
  %87 = call i32 @clkdev_add_gptu(%struct.TYPE_6__* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %86)
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = load i32, i32* @TIMER3B, align 4
  %91 = call i32 @clkdev_add_gptu(%struct.TYPE_6__* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %90)
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 @dev_info(%struct.TYPE_6__* %93, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %67, %56, %40, %30, %13
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @of_irq_to_resource_table(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.clk* @devm_ioremap_resource(%struct.TYPE_6__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local %struct.clk* @clk_get(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @clk_enable(%struct.clk*) #1

declare dso_local i32 @gptu_hwinit(...) #1

declare dso_local i32 @gptu_r32(i32) #1

declare dso_local i32 @gptu_hwexit(...) #1

declare dso_local i32 @clk_disable(%struct.clk*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

declare dso_local i32 @clkdev_add_gptu(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
