; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_reset.c_mmp_clk_reset_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_reset.c_mmp_clk_reset_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.mmp_clk_reset_cell = type { i32 }
%struct.mmp_clk_reset_unit = type { %struct.TYPE_2__, %struct.mmp_clk_reset_cell* }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.device_node*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@mmp_clk_reset_ops = common dso_local global i32 0, align 4
@mmp_of_reset_xlate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmp_clk_reset_register(%struct.device_node* %0, %struct.mmp_clk_reset_cell* %1, i32 %2) #0 {
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.mmp_clk_reset_cell*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmp_clk_reset_unit*, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.mmp_clk_reset_cell* %1, %struct.mmp_clk_reset_cell** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mmp_clk_reset_unit* @kzalloc(i32 40, i32 %8)
  store %struct.mmp_clk_reset_unit* %9, %struct.mmp_clk_reset_unit** %7, align 8
  %10 = load %struct.mmp_clk_reset_unit*, %struct.mmp_clk_reset_unit** %7, align 8
  %11 = icmp ne %struct.mmp_clk_reset_unit* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %38

13:                                               ; preds = %3
  %14 = load %struct.mmp_clk_reset_cell*, %struct.mmp_clk_reset_cell** %5, align 8
  %15 = load %struct.mmp_clk_reset_unit*, %struct.mmp_clk_reset_unit** %7, align 8
  %16 = getelementptr inbounds %struct.mmp_clk_reset_unit, %struct.mmp_clk_reset_unit* %15, i32 0, i32 1
  store %struct.mmp_clk_reset_cell* %14, %struct.mmp_clk_reset_cell** %16, align 8
  %17 = load %struct.mmp_clk_reset_unit*, %struct.mmp_clk_reset_unit** %7, align 8
  %18 = getelementptr inbounds %struct.mmp_clk_reset_unit, %struct.mmp_clk_reset_unit* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.mmp_clk_reset_unit*, %struct.mmp_clk_reset_unit** %7, align 8
  %22 = getelementptr inbounds %struct.mmp_clk_reset_unit, %struct.mmp_clk_reset_unit* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load %struct.mmp_clk_reset_unit*, %struct.mmp_clk_reset_unit** %7, align 8
  %25 = getelementptr inbounds %struct.mmp_clk_reset_unit, %struct.mmp_clk_reset_unit* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  store i32* @mmp_clk_reset_ops, i32** %26, align 8
  %27 = load %struct.device_node*, %struct.device_node** %4, align 8
  %28 = load %struct.mmp_clk_reset_unit*, %struct.mmp_clk_reset_unit** %7, align 8
  %29 = getelementptr inbounds %struct.mmp_clk_reset_unit, %struct.mmp_clk_reset_unit* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  store %struct.device_node* %27, %struct.device_node** %30, align 8
  %31 = load i32, i32* @mmp_of_reset_xlate, align 4
  %32 = load %struct.mmp_clk_reset_unit*, %struct.mmp_clk_reset_unit** %7, align 8
  %33 = getelementptr inbounds %struct.mmp_clk_reset_unit, %struct.mmp_clk_reset_unit* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 8
  %35 = load %struct.mmp_clk_reset_unit*, %struct.mmp_clk_reset_unit** %7, align 8
  %36 = getelementptr inbounds %struct.mmp_clk_reset_unit, %struct.mmp_clk_reset_unit* %35, i32 0, i32 0
  %37 = call i32 @reset_controller_register(%struct.TYPE_2__* %36)
  br label %38

38:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.mmp_clk_reset_unit* @kzalloc(i32, i32) #1

declare dso_local i32 @reset_controller_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
