; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7530.c_mt7530_core_reg_write.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mediatek/files-4.19/drivers/net/phy/mtk/mt753x/extr_mt7530.c_mt7530_core_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsw_mt753x = type { i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsw_mt753x*, i32, i32)* @mt7530_core_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7530_core_reg_write(%struct.gsw_mt753x* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gsw_mt753x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gsw_mt753x* %0, %struct.gsw_mt753x** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %8 = getelementptr inbounds %struct.gsw_mt753x, %struct.gsw_mt753x* %7, i32 0, i32 0
  %9 = load i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)*, i32 (%struct.gsw_mt753x*, i32, i32, i32, i32)** %8, align 8
  %10 = load %struct.gsw_mt753x*, %struct.gsw_mt753x** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 %9(%struct.gsw_mt753x* %10, i32 0, i32 31, i32 %11, i32 %12)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
