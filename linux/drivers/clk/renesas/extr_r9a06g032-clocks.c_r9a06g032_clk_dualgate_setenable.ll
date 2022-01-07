; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_r9a06g032-clocks.c_r9a06g032_clk_dualgate_setenable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_r9a06g032-clocks.c_r9a06g032_clk_dualgate_setenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r9a06g032_clk_dualgate = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r9a06g032_clk_dualgate*, i32)* @r9a06g032_clk_dualgate_setenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r9a06g032_clk_dualgate_setenable(%struct.r9a06g032_clk_dualgate* %0, i32 %1) #0 {
  %3 = alloca %struct.r9a06g032_clk_dualgate*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.r9a06g032_clk_dualgate* %0, %struct.r9a06g032_clk_dualgate** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.r9a06g032_clk_dualgate*, %struct.r9a06g032_clk_dualgate** %3, align 8
  %7 = getelementptr inbounds %struct.r9a06g032_clk_dualgate, %struct.r9a06g032_clk_dualgate* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.r9a06g032_clk_dualgate*, %struct.r9a06g032_clk_dualgate** %3, align 8
  %10 = getelementptr inbounds %struct.r9a06g032_clk_dualgate, %struct.r9a06g032_clk_dualgate* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @clk_rdesc_get(i32 %8, i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load %struct.r9a06g032_clk_dualgate*, %struct.r9a06g032_clk_dualgate** %3, align 8
  %14 = getelementptr inbounds %struct.r9a06g032_clk_dualgate, %struct.r9a06g032_clk_dualgate* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.r9a06g032_clk_dualgate*, %struct.r9a06g032_clk_dualgate** %3, align 8
  %17 = getelementptr inbounds %struct.r9a06g032_clk_dualgate, %struct.r9a06g032_clk_dualgate* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %18, i64 %23
  %25 = call i32 @r9a06g032_clk_gate_set(i32 %15, i32* %24, i32 0)
  %26 = load %struct.r9a06g032_clk_dualgate*, %struct.r9a06g032_clk_dualgate** %3, align 8
  %27 = getelementptr inbounds %struct.r9a06g032_clk_dualgate, %struct.r9a06g032_clk_dualgate* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.r9a06g032_clk_dualgate*, %struct.r9a06g032_clk_dualgate** %3, align 8
  %30 = getelementptr inbounds %struct.r9a06g032_clk_dualgate, %struct.r9a06g032_clk_dualgate* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @r9a06g032_clk_gate_set(i32 %28, i32* %33, i32 %34)
  ret i32 0
}

declare dso_local i64 @clk_rdesc_get(i32, i32) #1

declare dso_local i32 @r9a06g032_clk_gate_set(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
