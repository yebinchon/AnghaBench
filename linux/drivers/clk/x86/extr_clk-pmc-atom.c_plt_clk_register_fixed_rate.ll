; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/x86/extr_clk-pmc-atom.c_plt_clk_register_fixed_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/x86/extr_clk-pmc-atom.c_plt_clk_register_fixed_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_plt_fixed = type { i32, i32 }
%struct.platform_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk_plt_fixed* (%struct.platform_device*, i8*, i8*, i64)* @plt_clk_register_fixed_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk_plt_fixed* @plt_clk_register_fixed_rate(%struct.platform_device* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.clk_plt_fixed*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.clk_plt_fixed*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.clk_plt_fixed* @devm_kzalloc(i32* %12, i32 8, i32 %13)
  store %struct.clk_plt_fixed* %14, %struct.clk_plt_fixed** %10, align 8
  %15 = load %struct.clk_plt_fixed*, %struct.clk_plt_fixed** %10, align 8
  %16 = icmp ne %struct.clk_plt_fixed* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.clk_plt_fixed* @ERR_PTR(i32 %19)
  store %struct.clk_plt_fixed* %20, %struct.clk_plt_fixed** %5, align 8
  br label %62

21:                                               ; preds = %4
  %22 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @clk_hw_register_fixed_rate(i32* %23, i8* %24, i8* %25, i32 0, i64 %26)
  %28 = load %struct.clk_plt_fixed*, %struct.clk_plt_fixed** %10, align 8
  %29 = getelementptr inbounds %struct.clk_plt_fixed, %struct.clk_plt_fixed* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.clk_plt_fixed*, %struct.clk_plt_fixed** %10, align 8
  %31 = getelementptr inbounds %struct.clk_plt_fixed, %struct.clk_plt_fixed* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @IS_ERR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %21
  %36 = load %struct.clk_plt_fixed*, %struct.clk_plt_fixed** %10, align 8
  %37 = getelementptr inbounds %struct.clk_plt_fixed, %struct.clk_plt_fixed* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.clk_plt_fixed* @ERR_CAST(i32 %38)
  store %struct.clk_plt_fixed* %39, %struct.clk_plt_fixed** %5, align 8
  br label %62

40:                                               ; preds = %21
  %41 = load %struct.clk_plt_fixed*, %struct.clk_plt_fixed** %10, align 8
  %42 = getelementptr inbounds %struct.clk_plt_fixed, %struct.clk_plt_fixed* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @clkdev_hw_create(i32 %43, i8* %44, i32* null)
  %46 = load %struct.clk_plt_fixed*, %struct.clk_plt_fixed** %10, align 8
  %47 = getelementptr inbounds %struct.clk_plt_fixed, %struct.clk_plt_fixed* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.clk_plt_fixed*, %struct.clk_plt_fixed** %10, align 8
  %49 = getelementptr inbounds %struct.clk_plt_fixed, %struct.clk_plt_fixed* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %40
  %53 = load %struct.clk_plt_fixed*, %struct.clk_plt_fixed** %10, align 8
  %54 = getelementptr inbounds %struct.clk_plt_fixed, %struct.clk_plt_fixed* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @clk_hw_unregister_fixed_rate(i32 %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.clk_plt_fixed* @ERR_PTR(i32 %58)
  store %struct.clk_plt_fixed* %59, %struct.clk_plt_fixed** %5, align 8
  br label %62

60:                                               ; preds = %40
  %61 = load %struct.clk_plt_fixed*, %struct.clk_plt_fixed** %10, align 8
  store %struct.clk_plt_fixed* %61, %struct.clk_plt_fixed** %5, align 8
  br label %62

62:                                               ; preds = %60, %52, %35, %17
  %63 = load %struct.clk_plt_fixed*, %struct.clk_plt_fixed** %5, align 8
  ret %struct.clk_plt_fixed* %63
}

declare dso_local %struct.clk_plt_fixed* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.clk_plt_fixed* @ERR_PTR(i32) #1

declare dso_local i32 @clk_hw_register_fixed_rate(i32*, i8*, i8*, i32, i64) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local %struct.clk_plt_fixed* @ERR_CAST(i32) #1

declare dso_local i32 @clkdev_hw_create(i32, i8*, i32*) #1

declare dso_local i32 @clk_hw_unregister_fixed_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
