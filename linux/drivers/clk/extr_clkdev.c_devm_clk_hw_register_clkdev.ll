; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clkdev.c_devm_clk_hw_register_clkdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clkdev.c_devm_clk_hw_register_clkdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.clk_hw = type { i32 }
%struct.clk_lookup = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@devm_clkdev_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_clk_hw_register_clkdev(%struct.device* %0, %struct.clk_hw* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.clk_hw*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.clk_lookup**, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.clk_hw* %1, %struct.clk_hw** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @devm_clkdev_release, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.clk_lookup** @devres_alloc(i32 %13, i32 8, i32 %14)
  store %struct.clk_lookup** %15, %struct.clk_lookup*** %10, align 8
  %16 = load %struct.clk_lookup**, %struct.clk_lookup*** %10, align 8
  %17 = icmp ne %struct.clk_lookup** %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %4
  %19 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %20 = load %struct.clk_lookup**, %struct.clk_lookup*** %10, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @do_clk_register_clkdev(%struct.clk_hw* %19, %struct.clk_lookup** %20, i8* %21, i8* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %18
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load %struct.clk_lookup**, %struct.clk_lookup*** %10, align 8
  %29 = call i32 @devres_add(%struct.device* %27, %struct.clk_lookup** %28)
  br label %33

30:                                               ; preds = %18
  %31 = load %struct.clk_lookup**, %struct.clk_lookup*** %10, align 8
  %32 = call i32 @devres_free(%struct.clk_lookup** %31)
  br label %33

33:                                               ; preds = %30, %26
  br label %34

34:                                               ; preds = %33, %4
  %35 = load i32, i32* %9, align 4
  ret i32 %35
}

declare dso_local %struct.clk_lookup** @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @do_clk_register_clkdev(%struct.clk_hw*, %struct.clk_lookup**, i8*, i8*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.clk_lookup**) #1

declare dso_local i32 @devres_free(%struct.clk_lookup**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
