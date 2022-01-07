; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_m32.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mtk_eth_soc.c_fe_m32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fe_priv = type { i32 }

@fe_base = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fe_m32(%struct.fe_priv* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fe_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fe_priv* %0, %struct.fe_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %11 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load i32, i32* @fe_base, align 4
  %14 = load i32, i32* %8, align 4
  %15 = add i32 %13, %14
  %16 = call i32 @__raw_readl(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %9, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @fe_base, align 4
  %26 = load i32, i32* %8, align 4
  %27 = add i32 %25, %26
  %28 = call i32 @__raw_writel(i32 %24, i32 %27)
  %29 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %30 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
