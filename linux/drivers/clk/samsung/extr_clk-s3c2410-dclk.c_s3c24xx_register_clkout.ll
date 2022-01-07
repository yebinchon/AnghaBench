; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-s3c2410-dclk.c_s3c24xx_register_clkout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-s3c2410-dclk.c_s3c24xx_register_clkout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i8**, i8*, i64, i32* }
%struct.device = type { i32 }
%struct.s3c24xx_clkout = type { %struct.clk_hw, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@s3c24xx_clkout_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk_hw* (%struct.device*, i8*, i8**, i8*, i8*, i32)* @s3c24xx_register_clkout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk_hw* @s3c24xx_register_clkout(%struct.device* %0, i8* %1, i8** %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.s3c24xx_clkout*, align 8
  %15 = alloca %struct.clk_init_data, align 8
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.s3c24xx_clkout* @kzalloc(i32 24, i32 %17)
  store %struct.s3c24xx_clkout* %18, %struct.s3c24xx_clkout** %14, align 8
  %19 = load %struct.s3c24xx_clkout*, %struct.s3c24xx_clkout** %14, align 8
  %20 = icmp ne %struct.s3c24xx_clkout* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.clk_hw* @ERR_PTR(i32 %23)
  store %struct.clk_hw* %24, %struct.clk_hw** %7, align 8
  br label %55

25:                                               ; preds = %6
  %26 = load i8*, i8** %9, align 8
  %27 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %15, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %15, i32 0, i32 4
  store i32* @s3c24xx_clkout_ops, i32** %28, align 8
  %29 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %15, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load i8**, i8*** %10, align 8
  %31 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %15, i32 0, i32 1
  store i8** %30, i8*** %31, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %15, i32 0, i32 2
  store i8* %32, i8** %33, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load %struct.s3c24xx_clkout*, %struct.s3c24xx_clkout** %14, align 8
  %36 = getelementptr inbounds %struct.s3c24xx_clkout, %struct.s3c24xx_clkout* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.s3c24xx_clkout*, %struct.s3c24xx_clkout** %14, align 8
  %39 = getelementptr inbounds %struct.s3c24xx_clkout, %struct.s3c24xx_clkout* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.s3c24xx_clkout*, %struct.s3c24xx_clkout** %14, align 8
  %41 = getelementptr inbounds %struct.s3c24xx_clkout, %struct.s3c24xx_clkout* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %41, i32 0, i32 0
  store %struct.clk_init_data* %15, %struct.clk_init_data** %42, align 8
  %43 = load %struct.device*, %struct.device** %8, align 8
  %44 = load %struct.s3c24xx_clkout*, %struct.s3c24xx_clkout** %14, align 8
  %45 = getelementptr inbounds %struct.s3c24xx_clkout, %struct.s3c24xx_clkout* %44, i32 0, i32 0
  %46 = call i32 @clk_hw_register(%struct.device* %43, %struct.clk_hw* %45)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %25
  %50 = load i32, i32* %16, align 4
  %51 = call %struct.clk_hw* @ERR_PTR(i32 %50)
  store %struct.clk_hw* %51, %struct.clk_hw** %7, align 8
  br label %55

52:                                               ; preds = %25
  %53 = load %struct.s3c24xx_clkout*, %struct.s3c24xx_clkout** %14, align 8
  %54 = getelementptr inbounds %struct.s3c24xx_clkout, %struct.s3c24xx_clkout* %53, i32 0, i32 0
  store %struct.clk_hw* %54, %struct.clk_hw** %7, align 8
  br label %55

55:                                               ; preds = %52, %49, %21
  %56 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  ret %struct.clk_hw* %56
}

declare dso_local %struct.s3c24xx_clkout* @kzalloc(i32, i32) #1

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #1

declare dso_local i32 @clk_hw_register(%struct.device*, %struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
