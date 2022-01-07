; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-regmap.c_devm_clk_register_regmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-regmap.c_devm_clk_register_regmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device* }
%struct.clk_regmap = type { i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devm_clk_register_regmap(%struct.device* %0, %struct.clk_regmap* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.clk_regmap*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.clk_regmap* %1, %struct.clk_regmap** %4, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = icmp ne %struct.device* %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call i8* @dev_get_regmap(%struct.device* %8, i32* null)
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call i8* @dev_get_regmap(%struct.device* %12, i32* null)
  %14 = load %struct.clk_regmap*, %struct.clk_regmap** %4, align 8
  %15 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  br label %32

16:                                               ; preds = %7, %2
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = icmp ne %struct.device* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load %struct.device*, %struct.device** %21, align 8
  %23 = icmp ne %struct.device* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load %struct.device*, %struct.device** %26, align 8
  %28 = call i8* @dev_get_regmap(%struct.device* %27, i32* null)
  %29 = load %struct.clk_regmap*, %struct.clk_regmap** %4, align 8
  %30 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  br label %31

31:                                               ; preds = %24, %19, %16
  br label %32

32:                                               ; preds = %31, %11
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = load %struct.clk_regmap*, %struct.clk_regmap** %4, align 8
  %35 = getelementptr inbounds %struct.clk_regmap, %struct.clk_regmap* %34, i32 0, i32 0
  %36 = call i32 @devm_clk_hw_register(%struct.device* %33, i32* %35)
  ret i32 %36
}

declare dso_local i8* @dev_get_regmap(%struct.device*, i32*) #1

declare dso_local i32 @devm_clk_hw_register(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
