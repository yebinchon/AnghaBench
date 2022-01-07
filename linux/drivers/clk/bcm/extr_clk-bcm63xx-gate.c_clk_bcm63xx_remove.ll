; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm63xx-gate.c_clk_bcm63xx_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm63xx-gate.c_clk_bcm63xx_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.clk_bcm63xx_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @clk_bcm63xx_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_bcm63xx_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.clk_bcm63xx_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.clk_bcm63xx_hw* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.clk_bcm63xx_hw* %6, %struct.clk_bcm63xx_hw** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @of_clk_del_provider(i32 %10)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %41, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.clk_bcm63xx_hw*, %struct.clk_bcm63xx_hw** %3, align 8
  %15 = getelementptr inbounds %struct.clk_bcm63xx_hw, %struct.clk_bcm63xx_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %12
  %20 = load %struct.clk_bcm63xx_hw*, %struct.clk_bcm63xx_hw** %3, align 8
  %21 = getelementptr inbounds %struct.clk_bcm63xx_hw, %struct.clk_bcm63xx_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @IS_ERR(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %19
  %31 = load %struct.clk_bcm63xx_hw*, %struct.clk_bcm63xx_hw** %3, align 8
  %32 = getelementptr inbounds %struct.clk_bcm63xx_hw, %struct.clk_bcm63xx_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @clk_hw_unregister_gate(i32 %38)
  br label %40

40:                                               ; preds = %30, %19
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %12

44:                                               ; preds = %12
  ret i32 0
}

declare dso_local %struct.clk_bcm63xx_hw* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @of_clk_del_provider(i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_hw_unregister_gate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
