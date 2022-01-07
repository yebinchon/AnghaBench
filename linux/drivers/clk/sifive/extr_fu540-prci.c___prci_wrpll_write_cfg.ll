; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sifive/extr_fu540-prci.c___prci_wrpll_write_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sifive/extr_fu540-prci.c___prci_wrpll_write_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__prci_data = type { i32 }
%struct.__prci_wrpll_data = type { i32, i32 }
%struct.wrpll_cfg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.__prci_data*, %struct.__prci_wrpll_data*, %struct.wrpll_cfg*)* @__prci_wrpll_write_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__prci_wrpll_write_cfg(%struct.__prci_data* %0, %struct.__prci_wrpll_data* %1, %struct.wrpll_cfg* %2) #0 {
  %4 = alloca %struct.__prci_data*, align 8
  %5 = alloca %struct.__prci_wrpll_data*, align 8
  %6 = alloca %struct.wrpll_cfg*, align 8
  store %struct.__prci_data* %0, %struct.__prci_data** %4, align 8
  store %struct.__prci_wrpll_data* %1, %struct.__prci_wrpll_data** %5, align 8
  store %struct.wrpll_cfg* %2, %struct.wrpll_cfg** %6, align 8
  %7 = load %struct.wrpll_cfg*, %struct.wrpll_cfg** %6, align 8
  %8 = call i32 @__prci_wrpll_pack(%struct.wrpll_cfg* %7)
  %9 = load %struct.__prci_wrpll_data*, %struct.__prci_wrpll_data** %5, align 8
  %10 = getelementptr inbounds %struct.__prci_wrpll_data, %struct.__prci_wrpll_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.__prci_data*, %struct.__prci_data** %4, align 8
  %13 = call i32 @__prci_writel(i32 %8, i32 %11, %struct.__prci_data* %12)
  %14 = load %struct.__prci_wrpll_data*, %struct.__prci_wrpll_data** %5, align 8
  %15 = getelementptr inbounds %struct.__prci_wrpll_data, %struct.__prci_wrpll_data* %14, i32 0, i32 0
  %16 = load %struct.wrpll_cfg*, %struct.wrpll_cfg** %6, align 8
  %17 = call i32 @memcpy(i32* %15, %struct.wrpll_cfg* %16, i32 4)
  ret void
}

declare dso_local i32 @__prci_writel(i32, i32, %struct.__prci_data*) #1

declare dso_local i32 @__prci_wrpll_pack(%struct.wrpll_cfg*) #1

declare dso_local i32 @memcpy(i32*, %struct.wrpll_cfg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
