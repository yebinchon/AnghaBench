; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.h_clk_hw_create_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.h_clk_hw_create_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.device = type { i32 }
%struct.clk_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.device*, %struct.clk_hw*, i8*, i8*)* @clk_hw_create_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @clk_hw_create_clk(%struct.device* %0, %struct.clk_hw* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.clk_hw*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.clk_hw* %1, %struct.clk_hw** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %10 = bitcast %struct.clk_hw* %9 to %struct.clk*
  ret %struct.clk* %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
