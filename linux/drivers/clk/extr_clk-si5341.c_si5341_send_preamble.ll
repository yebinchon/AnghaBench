; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_send_preamble.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5341.c_si5341_send_preamble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_si5341 = type { i32 }

@SI5341_DEVICE_REV = common dso_local global i32 0, align 4
@si5341_preamble = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_si5341*)* @si5341_send_preamble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si5341_send_preamble(%struct.clk_si5341* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_si5341*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.clk_si5341* %0, %struct.clk_si5341** %3, align 8
  %6 = load %struct.clk_si5341*, %struct.clk_si5341** %3, align 8
  %7 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SI5341_DEVICE_REV, align 4
  %10 = call i32 @regmap_read(i32 %8, i32 %9, i32* %5)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %40

15:                                               ; preds = %1
  %16 = load %struct.clk_si5341*, %struct.clk_si5341** %3, align 8
  %17 = getelementptr inbounds %struct.clk_si5341, %struct.clk_si5341* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 2
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 216, i32 192
  %23 = call i32 @regmap_write(i32 %18, i32 2852, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %40

28:                                               ; preds = %15
  %29 = load %struct.clk_si5341*, %struct.clk_si5341** %3, align 8
  %30 = load i32, i32* @si5341_preamble, align 4
  %31 = load i32, i32* @si5341_preamble, align 4
  %32 = call i32 @ARRAY_SIZE(i32 %31)
  %33 = call i32 @si5341_write_multiple(%struct.clk_si5341* %29, i32 %30, i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %40

38:                                               ; preds = %28
  %39 = call i32 @msleep(i32 300)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %36, %26, %13
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @si5341_write_multiple(%struct.clk_si5341*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
