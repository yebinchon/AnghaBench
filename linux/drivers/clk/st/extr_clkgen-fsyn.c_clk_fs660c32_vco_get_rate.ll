; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-fsyn.c_clk_fs660c32_vco_get_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-fsyn.c_clk_fs660c32_vco_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm_fs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.stm_fs*, i64*)* @clk_fs660c32_vco_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_fs660c32_vco_get_rate(i64 %0, %struct.stm_fs* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.stm_fs*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.stm_fs* %1, %struct.stm_fs** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load %struct.stm_fs*, %struct.stm_fs** %5, align 8
  %9 = getelementptr inbounds %struct.stm_fs, %struct.stm_fs* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 16
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %7, align 8
  %15 = mul i64 %13, %14
  %16 = load i64*, i64** %6, align 8
  store i64 %15, i64* %16, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
