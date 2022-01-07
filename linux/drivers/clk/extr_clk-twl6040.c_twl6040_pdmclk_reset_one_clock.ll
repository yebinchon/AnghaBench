; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-twl6040.c_twl6040_pdmclk_reset_one_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-twl6040.c_twl6040_pdmclk_reset_one_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl6040_pdmclk = type { i32 }

@TWL6040_HPLLRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl6040_pdmclk*, i32)* @twl6040_pdmclk_reset_one_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6040_pdmclk_reset_one_clock(%struct.twl6040_pdmclk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.twl6040_pdmclk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.twl6040_pdmclk* %0, %struct.twl6040_pdmclk** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @TWL6040_HPLLRST, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.twl6040_pdmclk*, %struct.twl6040_pdmclk** %4, align 8
  %10 = getelementptr inbounds %struct.twl6040_pdmclk, %struct.twl6040_pdmclk* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @twl6040_set_bits(i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %31

19:                                               ; preds = %2
  %20 = load %struct.twl6040_pdmclk*, %struct.twl6040_pdmclk** %4, align 8
  %21 = getelementptr inbounds %struct.twl6040_pdmclk, %struct.twl6040_pdmclk* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @twl6040_clear_bits(i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %28, %17
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @twl6040_set_bits(i32, i32, i32) #1

declare dso_local i32 @twl6040_clear_bits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
