; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_register_gate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_register_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.bcm2835_cprman = type { i32, i64, i32 }
%struct.bcm2835_gate_data = type { i64, i32, i32 }

@CLK_IGNORE_UNUSED = common dso_local global i32 0, align 4
@CLK_SET_RATE_GATE = common dso_local global i32 0, align 4
@CM_GATE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.bcm2835_cprman*, %struct.bcm2835_gate_data*)* @bcm2835_register_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @bcm2835_register_gate(%struct.bcm2835_cprman* %0, %struct.bcm2835_gate_data* %1) #0 {
  %3 = alloca %struct.bcm2835_cprman*, align 8
  %4 = alloca %struct.bcm2835_gate_data*, align 8
  store %struct.bcm2835_cprman* %0, %struct.bcm2835_cprman** %3, align 8
  store %struct.bcm2835_gate_data* %1, %struct.bcm2835_gate_data** %4, align 8
  %5 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %3, align 8
  %6 = getelementptr inbounds %struct.bcm2835_cprman, %struct.bcm2835_cprman* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.bcm2835_gate_data*, %struct.bcm2835_gate_data** %4, align 8
  %9 = getelementptr inbounds %struct.bcm2835_gate_data, %struct.bcm2835_gate_data* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.bcm2835_gate_data*, %struct.bcm2835_gate_data** %4, align 8
  %12 = getelementptr inbounds %struct.bcm2835_gate_data, %struct.bcm2835_gate_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CLK_IGNORE_UNUSED, align 4
  %15 = load i32, i32* @CLK_SET_RATE_GATE, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %3, align 8
  %18 = getelementptr inbounds %struct.bcm2835_cprman, %struct.bcm2835_cprman* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.bcm2835_gate_data*, %struct.bcm2835_gate_data** %4, align 8
  %21 = getelementptr inbounds %struct.bcm2835_gate_data, %struct.bcm2835_gate_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = load i32, i32* @CM_GATE_BIT, align 4
  %25 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %3, align 8
  %26 = getelementptr inbounds %struct.bcm2835_cprman, %struct.bcm2835_cprman* %25, i32 0, i32 0
  %27 = call %struct.clk* @clk_register_gate(i32 %7, i32 %10, i32 %13, i32 %16, i64 %23, i32 %24, i32 0, i32* %26)
  ret %struct.clk* %27
}

declare dso_local %struct.clk* @clk_register_gate(i32, i32, i32, i32, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
