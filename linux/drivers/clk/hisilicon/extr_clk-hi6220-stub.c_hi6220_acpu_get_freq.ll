; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hi6220-stub.c_hi6220_acpu_get_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hi6220-stub.c_hi6220_acpu_get_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hi6220_stub_clk = type { i32 }

@ACPU_DFS_CUR_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hi6220_stub_clk*)* @hi6220_acpu_get_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi6220_acpu_get_freq(%struct.hi6220_stub_clk* %0) #0 {
  %2 = alloca %struct.hi6220_stub_clk*, align 8
  %3 = alloca i32, align 4
  store %struct.hi6220_stub_clk* %0, %struct.hi6220_stub_clk** %2, align 8
  %4 = load %struct.hi6220_stub_clk*, %struct.hi6220_stub_clk** %2, align 8
  %5 = getelementptr inbounds %struct.hi6220_stub_clk, %struct.hi6220_stub_clk* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @ACPU_DFS_CUR_FREQ, align 4
  %8 = call i32 @regmap_read(i32 %6, i32 %7, i32* %3)
  %9 = load i32, i32* %3, align 4
  ret i32 %9
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
