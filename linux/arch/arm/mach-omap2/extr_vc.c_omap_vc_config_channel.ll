; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_vc.c_omap_vc_config_channel.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_vc.c_omap_vc_config_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.voltagedomain = type { i32 (i32, i32, i32)*, %struct.omap_vc_channel* }
%struct.omap_vc_channel = type { i32, i32, i32, i32 }

@OMAP_VC_CHANNEL_DEFAULT = common dso_local global i32 0, align 4
@vc_cfg_bits = common dso_local global %struct.TYPE_2__* null, align 8
@CFG_CHANNEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.voltagedomain*)* @omap_vc_config_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_vc_config_channel(%struct.voltagedomain* %0) #0 {
  %2 = alloca %struct.voltagedomain*, align 8
  %3 = alloca %struct.omap_vc_channel*, align 8
  store %struct.voltagedomain* %0, %struct.voltagedomain** %2, align 8
  %4 = load %struct.voltagedomain*, %struct.voltagedomain** %2, align 8
  %5 = getelementptr inbounds %struct.voltagedomain, %struct.voltagedomain* %4, i32 0, i32 1
  %6 = load %struct.omap_vc_channel*, %struct.omap_vc_channel** %5, align 8
  store %struct.omap_vc_channel* %6, %struct.omap_vc_channel** %3, align 8
  %7 = load %struct.omap_vc_channel*, %struct.omap_vc_channel** %3, align 8
  %8 = getelementptr inbounds %struct.omap_vc_channel, %struct.omap_vc_channel* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @OMAP_VC_CHANNEL_DEFAULT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vc_cfg_bits, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.omap_vc_channel*, %struct.omap_vc_channel** %3, align 8
  %18 = getelementptr inbounds %struct.omap_vc_channel, %struct.omap_vc_channel* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %13, %1
  %22 = load %struct.voltagedomain*, %struct.voltagedomain** %2, align 8
  %23 = getelementptr inbounds %struct.voltagedomain, %struct.voltagedomain* %22, i32 0, i32 0
  %24 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %23, align 8
  %25 = load i32, i32* @CFG_CHANNEL_MASK, align 4
  %26 = load %struct.omap_vc_channel*, %struct.omap_vc_channel** %3, align 8
  %27 = getelementptr inbounds %struct.omap_vc_channel, %struct.omap_vc_channel* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %25, %28
  %30 = load %struct.omap_vc_channel*, %struct.omap_vc_channel** %3, align 8
  %31 = getelementptr inbounds %struct.omap_vc_channel, %struct.omap_vc_channel* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.omap_vc_channel*, %struct.omap_vc_channel** %3, align 8
  %34 = getelementptr inbounds %struct.omap_vc_channel, %struct.omap_vc_channel* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %32, %35
  %37 = load %struct.omap_vc_channel*, %struct.omap_vc_channel** %3, align 8
  %38 = getelementptr inbounds %struct.omap_vc_channel, %struct.omap_vc_channel* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 %24(i32 %29, i32 %36, i32 %39)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
