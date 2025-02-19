; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_devm_clk_hw_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_devm_clk_hw_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.clk_hw = type { i32 }

@devm_clk_hw_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_clk_hw_register(%struct.device* %0, %struct.clk_hw* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca %struct.clk_hw**, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.clk_hw* %1, %struct.clk_hw** %5, align 8
  %8 = load i32, i32* @devm_clk_hw_release, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.clk_hw** @devres_alloc(i32 %8, i32 8, i32 %9)
  store %struct.clk_hw** %10, %struct.clk_hw*** %6, align 8
  %11 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %12 = icmp ne %struct.clk_hw** %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %33

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %19 = call i32 @clk_hw_register(%struct.device* %17, %struct.clk_hw* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %24 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  store %struct.clk_hw* %23, %struct.clk_hw** %24, align 8
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %27 = call i32 @devres_add(%struct.device* %25, %struct.clk_hw** %26)
  br label %31

28:                                               ; preds = %16
  %29 = load %struct.clk_hw**, %struct.clk_hw*** %6, align 8
  %30 = call i32 @devres_free(%struct.clk_hw** %29)
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %13
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.clk_hw** @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @clk_hw_register(%struct.device*, %struct.clk_hw*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.clk_hw**) #1

declare dso_local i32 @devres_free(%struct.clk_hw**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
