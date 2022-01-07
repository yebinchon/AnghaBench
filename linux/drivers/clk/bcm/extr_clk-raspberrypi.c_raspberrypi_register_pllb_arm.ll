; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-raspberrypi.c_raspberrypi_register_pllb_arm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-raspberrypi.c_raspberrypi_register_pllb_arm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raspberrypi_clk = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"pllb_arm\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"pllb\00", align 1
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@CLK_GET_RATE_NOCACHE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to initialize pllb_arm\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"cpu0\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Failed to initialize pllb_arm_lookup\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raspberrypi_clk*)* @raspberrypi_register_pllb_arm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raspberrypi_register_pllb_arm(%struct.raspberrypi_clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.raspberrypi_clk*, align 8
  store %struct.raspberrypi_clk* %0, %struct.raspberrypi_clk** %3, align 8
  %4 = load %struct.raspberrypi_clk*, %struct.raspberrypi_clk** %3, align 8
  %5 = getelementptr inbounds %struct.raspberrypi_clk, %struct.raspberrypi_clk* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %8 = load i32, i32* @CLK_GET_RATE_NOCACHE, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @clk_hw_register_fixed_factor(i32 %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %9, i32 1, i32 2)
  %11 = load %struct.raspberrypi_clk*, %struct.raspberrypi_clk** %3, align 8
  %12 = getelementptr inbounds %struct.raspberrypi_clk, %struct.raspberrypi_clk* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.raspberrypi_clk*, %struct.raspberrypi_clk** %3, align 8
  %14 = getelementptr inbounds %struct.raspberrypi_clk, %struct.raspberrypi_clk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @IS_ERR(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.raspberrypi_clk*, %struct.raspberrypi_clk** %3, align 8
  %20 = getelementptr inbounds %struct.raspberrypi_clk, %struct.raspberrypi_clk* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %23 = load %struct.raspberrypi_clk*, %struct.raspberrypi_clk** %3, align 8
  %24 = getelementptr inbounds %struct.raspberrypi_clk, %struct.raspberrypi_clk* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @PTR_ERR(i32 %25)
  store i32 %26, i32* %2, align 4
  br label %50

27:                                               ; preds = %1
  %28 = load %struct.raspberrypi_clk*, %struct.raspberrypi_clk** %3, align 8
  %29 = getelementptr inbounds %struct.raspberrypi_clk, %struct.raspberrypi_clk* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @clkdev_hw_create(i32 %30, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %32 = load %struct.raspberrypi_clk*, %struct.raspberrypi_clk** %3, align 8
  %33 = getelementptr inbounds %struct.raspberrypi_clk, %struct.raspberrypi_clk* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.raspberrypi_clk*, %struct.raspberrypi_clk** %3, align 8
  %35 = getelementptr inbounds %struct.raspberrypi_clk, %struct.raspberrypi_clk* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %27
  %39 = load %struct.raspberrypi_clk*, %struct.raspberrypi_clk** %3, align 8
  %40 = getelementptr inbounds %struct.raspberrypi_clk, %struct.raspberrypi_clk* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %43 = load %struct.raspberrypi_clk*, %struct.raspberrypi_clk** %3, align 8
  %44 = getelementptr inbounds %struct.raspberrypi_clk, %struct.raspberrypi_clk* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @clk_hw_unregister_fixed_factor(i32 %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %38, %18
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @clk_hw_register_fixed_factor(i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clkdev_hw_create(i32, i32*, i8*) #1

declare dso_local i32 @clk_hw_unregister_fixed_factor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
