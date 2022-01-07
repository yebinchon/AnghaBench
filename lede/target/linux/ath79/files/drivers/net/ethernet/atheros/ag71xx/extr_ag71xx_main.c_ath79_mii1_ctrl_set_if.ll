; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ath79_mii1_ctrl_set_if.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ath79/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_main.c_ath79_mii1_ctrl_set_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx = type { i32 }

@AR71XX_MII1_CTRL_IF_RMII = common dso_local global i32 0, align 4
@AR71XX_MII1_CTRL_IF_RGMII = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Impossible PHY mode defined.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ag71xx*)* @ath79_mii1_ctrl_set_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath79_mii1_ctrl_set_if(%struct.ag71xx* %0) #0 {
  %2 = alloca %struct.ag71xx*, align 8
  %3 = alloca i32, align 4
  store %struct.ag71xx* %0, %struct.ag71xx** %2, align 8
  %4 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %5 = getelementptr inbounds %struct.ag71xx, %struct.ag71xx* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %11 [
    i32 128, label %7
    i32 129, label %9
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @AR71XX_MII1_CTRL_IF_RMII, align 4
  store i32 %8, i32* %3, align 4
  br label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @AR71XX_MII1_CTRL_IF_RGMII, align 4
  store i32 %10, i32* %3, align 4
  br label %13

11:                                               ; preds = %1
  %12 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %17

13:                                               ; preds = %9, %7
  %14 = load %struct.ag71xx*, %struct.ag71xx** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @ath79_mii_ctrl_set_if(%struct.ag71xx* %14, i32 %15)
  br label %17

17:                                               ; preds = %13, %11
  ret void
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @ath79_mii_ctrl_set_if(%struct.ag71xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
