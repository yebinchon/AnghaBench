; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-s2mps11.c_s2mps11_clk_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-s2mps11.c_s2mps11_clk_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.s2mps11_clk = type { i32, i32 }

@S2MPS11_CLKS_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s2mps11_clk_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2mps11_clk_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.s2mps11_clk*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.s2mps11_clk* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.s2mps11_clk* %6, %struct.s2mps11_clk** %3, align 8
  %7 = load %struct.s2mps11_clk*, %struct.s2mps11_clk** %3, align 8
  %8 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %7, i64 0
  %9 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @of_clk_del_provider(i32 %10)
  %12 = load %struct.s2mps11_clk*, %struct.s2mps11_clk** %3, align 8
  %13 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %12, i64 0
  %14 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @of_node_put(i32 %15)
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %38, %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @S2MPS11_CLKS_NUM, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = load %struct.s2mps11_clk*, %struct.s2mps11_clk** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %22, i64 %24
  %26 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %38

30:                                               ; preds = %21
  %31 = load %struct.s2mps11_clk*, %struct.s2mps11_clk** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %31, i64 %33
  %35 = getelementptr inbounds %struct.s2mps11_clk, %struct.s2mps11_clk* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @clkdev_drop(i32 %36)
  br label %38

38:                                               ; preds = %30, %29
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %17

41:                                               ; preds = %17
  ret i32 0
}

declare dso_local %struct.s2mps11_clk* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @of_clk_del_provider(i32) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @clkdev_drop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
