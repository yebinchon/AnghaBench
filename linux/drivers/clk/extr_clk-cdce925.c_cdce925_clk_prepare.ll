; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cdce925.c_cdce925_clk_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-cdce925.c_cdce925_clk_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_cdce925_output = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @cdce925_clk_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdce925_clk_prepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_cdce925_output*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %4 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %5 = call %struct.clk_cdce925_output* @to_clk_cdce925_output(%struct.clk_hw* %4)
  store %struct.clk_cdce925_output* %5, %struct.clk_cdce925_output** %3, align 8
  %6 = load %struct.clk_cdce925_output*, %struct.clk_cdce925_output** %3, align 8
  %7 = load %struct.clk_cdce925_output*, %struct.clk_cdce925_output** %3, align 8
  %8 = getelementptr inbounds %struct.clk_cdce925_output, %struct.clk_cdce925_output* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @cdce925_clk_set_pdiv(%struct.clk_cdce925_output* %6, i32 %9)
  %11 = load %struct.clk_cdce925_output*, %struct.clk_cdce925_output** %3, align 8
  %12 = call i32 @cdce925_clk_activate(%struct.clk_cdce925_output* %11)
  ret i32 0
}

declare dso_local %struct.clk_cdce925_output* @to_clk_cdce925_output(%struct.clk_hw*) #1

declare dso_local i32 @cdce925_clk_set_pdiv(%struct.clk_cdce925_output*, i32) #1

declare dso_local i32 @cdce925_clk_activate(%struct.clk_cdce925_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
