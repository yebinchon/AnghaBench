; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-factors.c_sunxi_factors_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-factors.c_sunxi_factors_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.clk = type { i32 }
%struct.clk_hw = type { i32 }
%struct.clk_factors = type { %struct.clk_factors*, %struct.clk_factors* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sunxi_factors_unregister(%struct.device_node* %0, %struct.clk* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca %struct.clk_factors*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store %struct.clk* %1, %struct.clk** %4, align 8
  %7 = load %struct.clk*, %struct.clk** %4, align 8
  %8 = call %struct.clk_hw* @__clk_get_hw(%struct.clk* %7)
  store %struct.clk_hw* %8, %struct.clk_hw** %5, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %10 = icmp ne %struct.clk_hw* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %29

12:                                               ; preds = %2
  %13 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %14 = call %struct.clk_factors* @to_clk_factors(%struct.clk_hw* %13)
  store %struct.clk_factors* %14, %struct.clk_factors** %6, align 8
  %15 = load %struct.device_node*, %struct.device_node** %3, align 8
  %16 = call i32 @of_clk_del_provider(%struct.device_node* %15)
  %17 = load %struct.clk*, %struct.clk** %4, align 8
  %18 = call i32 @clk_unregister(%struct.clk* %17)
  %19 = load %struct.clk_factors*, %struct.clk_factors** %6, align 8
  %20 = getelementptr inbounds %struct.clk_factors, %struct.clk_factors* %19, i32 0, i32 1
  %21 = load %struct.clk_factors*, %struct.clk_factors** %20, align 8
  %22 = call i32 @kfree(%struct.clk_factors* %21)
  %23 = load %struct.clk_factors*, %struct.clk_factors** %6, align 8
  %24 = getelementptr inbounds %struct.clk_factors, %struct.clk_factors* %23, i32 0, i32 0
  %25 = load %struct.clk_factors*, %struct.clk_factors** %24, align 8
  %26 = call i32 @kfree(%struct.clk_factors* %25)
  %27 = load %struct.clk_factors*, %struct.clk_factors** %6, align 8
  %28 = call i32 @kfree(%struct.clk_factors* %27)
  br label %29

29:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.clk_hw* @__clk_get_hw(%struct.clk*) #1

declare dso_local %struct.clk_factors* @to_clk_factors(%struct.clk_hw*) #1

declare dso_local i32 @of_clk_del_provider(%struct.device_node*) #1

declare dso_local i32 @clk_unregister(%struct.clk*) #1

declare dso_local i32 @kfree(%struct.clk_factors*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
