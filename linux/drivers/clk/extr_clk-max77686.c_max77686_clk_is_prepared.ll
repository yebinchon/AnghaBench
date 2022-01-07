; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-max77686.c_max77686_clk_is_prepared.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-max77686.c_max77686_clk_is_prepared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.max77686_clk_init_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @max77686_clk_is_prepared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77686_clk_is_prepared(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.max77686_clk_init_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.max77686_clk_init_data* @to_max77686_clk_init_data(%struct.clk_hw* %7)
  store %struct.max77686_clk_init_data* %8, %struct.max77686_clk_init_data** %4, align 8
  %9 = load %struct.max77686_clk_init_data*, %struct.max77686_clk_init_data** %4, align 8
  %10 = getelementptr inbounds %struct.max77686_clk_init_data, %struct.max77686_clk_init_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.max77686_clk_init_data*, %struct.max77686_clk_init_data** %4, align 8
  %13 = getelementptr inbounds %struct.max77686_clk_init_data, %struct.max77686_clk_init_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @regmap_read(i32 %11, i32 %16, i32* %6)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %31

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.max77686_clk_init_data*, %struct.max77686_clk_init_data** %4, align 8
  %26 = getelementptr inbounds %struct.max77686_clk_init_data, %struct.max77686_clk_init_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %24, %29
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %23, %20
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.max77686_clk_init_data* @to_max77686_clk_init_data(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
