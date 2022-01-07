; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c_clk_rcg2_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c_clk_rcg2_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_rcg2 = type { i32 }
%struct.freq_tbl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_rcg2*, %struct.freq_tbl*)* @clk_rcg2_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_rcg2_configure(%struct.clk_rcg2* %0, %struct.freq_tbl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_rcg2*, align 8
  %5 = alloca %struct.freq_tbl*, align 8
  %6 = alloca i32, align 4
  store %struct.clk_rcg2* %0, %struct.clk_rcg2** %4, align 8
  store %struct.freq_tbl* %1, %struct.freq_tbl** %5, align 8
  %7 = load %struct.clk_rcg2*, %struct.clk_rcg2** %4, align 8
  %8 = load %struct.freq_tbl*, %struct.freq_tbl** %5, align 8
  %9 = call i32 @__clk_rcg2_configure(%struct.clk_rcg2* %7, %struct.freq_tbl* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %17

14:                                               ; preds = %2
  %15 = load %struct.clk_rcg2*, %struct.clk_rcg2** %4, align 8
  %16 = call i32 @update_config(%struct.clk_rcg2* %15)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %14, %12
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @__clk_rcg2_configure(%struct.clk_rcg2*, %struct.freq_tbl*) #1

declare dso_local i32 @update_config(%struct.clk_rcg2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
