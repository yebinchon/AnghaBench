; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_kcs_bmc_npcm7xx.c_npcm7xx_kcs_enable_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_kcs_bmc_npcm7xx.c_npcm7xx_kcs_enable_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcs_bmc = type { i32 }
%struct.npcm7xx_kcs_bmc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@KCS_CTL_IBFIE = common dso_local global i32 0, align 4
@KCS_IE_IRQE = common dso_local global i32 0, align 4
@KCS_IE_HIRQE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kcs_bmc*, i32)* @npcm7xx_kcs_enable_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npcm7xx_kcs_enable_channel(%struct.kcs_bmc* %0, i32 %1) #0 {
  %3 = alloca %struct.kcs_bmc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.npcm7xx_kcs_bmc*, align 8
  store %struct.kcs_bmc* %0, %struct.kcs_bmc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.kcs_bmc*, %struct.kcs_bmc** %3, align 8
  %7 = call %struct.npcm7xx_kcs_bmc* @kcs_bmc_priv(%struct.kcs_bmc* %6)
  store %struct.npcm7xx_kcs_bmc* %7, %struct.npcm7xx_kcs_bmc** %5, align 8
  %8 = load %struct.npcm7xx_kcs_bmc*, %struct.npcm7xx_kcs_bmc** %5, align 8
  %9 = getelementptr inbounds %struct.npcm7xx_kcs_bmc, %struct.npcm7xx_kcs_bmc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.npcm7xx_kcs_bmc*, %struct.npcm7xx_kcs_bmc** %5, align 8
  %12 = getelementptr inbounds %struct.npcm7xx_kcs_bmc, %struct.npcm7xx_kcs_bmc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @KCS_CTL_IBFIE, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @KCS_CTL_IBFIE, align 4
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  %24 = call i32 @regmap_update_bits(i32 %10, i32 %15, i32 %16, i32 %23)
  %25 = load %struct.npcm7xx_kcs_bmc*, %struct.npcm7xx_kcs_bmc** %5, align 8
  %26 = getelementptr inbounds %struct.npcm7xx_kcs_bmc, %struct.npcm7xx_kcs_bmc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.npcm7xx_kcs_bmc*, %struct.npcm7xx_kcs_bmc** %5, align 8
  %29 = getelementptr inbounds %struct.npcm7xx_kcs_bmc, %struct.npcm7xx_kcs_bmc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @KCS_IE_IRQE, align 4
  %34 = load i32, i32* @KCS_IE_HIRQE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %22
  %39 = load i32, i32* @KCS_IE_IRQE, align 4
  %40 = load i32, i32* @KCS_IE_HIRQE, align 4
  %41 = or i32 %39, %40
  br label %43

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i32 [ %41, %38 ], [ 0, %42 ]
  %45 = call i32 @regmap_update_bits(i32 %27, i32 %32, i32 %35, i32 %44)
  ret void
}

declare dso_local %struct.npcm7xx_kcs_bmc* @kcs_bmc_priv(%struct.kcs_bmc*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
