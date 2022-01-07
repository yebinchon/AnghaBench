; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_device.c__add_clkdev.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_device.c__add_clkdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.clk = type { i32 }
%struct.of_phandle_args = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Creating %s -> %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"alias %s already exists\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"clkdev_alloc for %s failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"clk_get for %s failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_device*, i8*, i8*)* @_add_clkdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_add_clkdev(%struct.omap_device* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.omap_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.of_phandle_args, align 4
  store %struct.omap_device* %0, %struct.omap_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %3
  br label %99

16:                                               ; preds = %12
  %17 = load %struct.omap_device*, %struct.omap_device** %4, align 8
  %18 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 (i32*, i8*, i8*, ...) @dev_dbg(i32* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22)
  %24 = load %struct.omap_device*, %struct.omap_device** %4, align 8
  %25 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32* @dev_name(i32* %27)
  %29 = load i8*, i8** %5, align 8
  %30 = call %struct.clk* @clk_get_sys(i32* %28, i8* %29)
  store %struct.clk* %30, %struct.clk** %7, align 8
  %31 = load %struct.clk*, %struct.clk** %7, align 8
  %32 = call i64 @IS_ERR(%struct.clk* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %16
  %35 = load %struct.omap_device*, %struct.omap_device** %4, align 8
  %36 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 (i32*, i8*, i8*, ...) @dev_dbg(i32* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = load %struct.clk*, %struct.clk** %7, align 8
  %42 = call i32 @clk_put(%struct.clk* %41)
  br label %99

43:                                               ; preds = %16
  %44 = load i8*, i8** %6, align 8
  %45 = call %struct.clk* @clk_get_sys(i32* null, i8* %44)
  store %struct.clk* %45, %struct.clk** %7, align 8
  %46 = load %struct.clk*, %struct.clk** %7, align 8
  %47 = call i64 @IS_ERR(%struct.clk* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @of_find_node_by_name(i32* null, i8* %50)
  %52 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = call %struct.clk* @of_clk_get_from_provider(%struct.of_phandle_args* %9)
  store %struct.clk* %53, %struct.clk** %7, align 8
  %54 = load %struct.clk*, %struct.clk** %7, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load %struct.omap_device*, %struct.omap_device** %4, align 8
  %57 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32* @dev_name(i32* %59)
  %61 = call i32 @clk_register_clkdev(%struct.clk* %54, i8* %55, i32* %60)
  store i32 %61, i32* %8, align 4
  br label %71

62:                                               ; preds = %43
  %63 = load i8*, i8** %5, align 8
  %64 = load %struct.omap_device*, %struct.omap_device** %4, align 8
  %65 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32* @dev_name(i32* %67)
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @clk_add_alias(i8* %63, i32* %68, i8* %69, i32* null)
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %62, %49
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %99

74:                                               ; preds = %71
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %79, %74
  %85 = load %struct.omap_device*, %struct.omap_device** %4, align 8
  %86 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i8*, i8** %5, align 8
  %90 = call i32 @dev_err(i32* %88, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %89)
  br label %98

91:                                               ; preds = %79
  %92 = load %struct.omap_device*, %struct.omap_device** %4, align 8
  %93 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 @dev_err(i32* %95, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %91, %84
  br label %99

99:                                               ; preds = %15, %34, %98, %71
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, ...) #1

declare dso_local %struct.clk* @clk_get_sys(i32*, i8*) #1

declare dso_local i32* @dev_name(i32*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

declare dso_local i32 @of_find_node_by_name(i32*, i8*) #1

declare dso_local %struct.clk* @of_clk_get_from_provider(%struct.of_phandle_args*) #1

declare dso_local i32 @clk_register_clkdev(%struct.clk*, i8*, i32*) #1

declare dso_local i32 @clk_add_alias(i8*, i32*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
