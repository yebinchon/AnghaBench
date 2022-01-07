; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_macio.c_pmac_macio_calc_timing_masks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_macio.c_pmac_macio_calc_timing_masks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pata_macio_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_port_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"Supported masks: PIO=%lx, MWDMA=%lx, UDMA=%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pata_macio_priv*, %struct.ata_port_info*)* @pmac_macio_calc_timing_masks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmac_macio_calc_timing_masks(%struct.pata_macio_priv* %0, %struct.ata_port_info* %1) #0 {
  %3 = alloca %struct.pata_macio_priv*, align 8
  %4 = alloca %struct.ata_port_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pata_macio_priv* %0, %struct.pata_macio_priv** %3, align 8
  store %struct.ata_port_info* %1, %struct.ata_port_info** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.ata_port_info*, %struct.ata_port_info** %4, align 8
  %8 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %7, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = load %struct.ata_port_info*, %struct.ata_port_info** %4, align 8
  %10 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %9, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = load %struct.ata_port_info*, %struct.ata_port_info** %4, align 8
  %12 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %11, i32 0, i32 2
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %62, %2
  %14 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %3, align 8
  %15 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %65

23:                                               ; preds = %13
  %24 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %3, align 8
  %25 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 15
  %33 = shl i32 1, %32
  store i32 %33, i32* %6, align 4
  %34 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %3, align 8
  %35 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 240
  switch i32 %42, label %62 [
    i32 0, label %43
    i32 32, label %50
    i32 64, label %56
  ]

43:                                               ; preds = %23
  %44 = load i32, i32* %6, align 4
  %45 = lshr i32 %44, 8
  %46 = load %struct.ata_port_info*, %struct.ata_port_info** %4, align 8
  %47 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %62

50:                                               ; preds = %23
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.ata_port_info*, %struct.ata_port_info** %4, align 8
  %53 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %62

56:                                               ; preds = %23
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.ata_port_info*, %struct.ata_port_info** %4, align 8
  %59 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %23, %56, %50, %43
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %13

65:                                               ; preds = %13
  %66 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %3, align 8
  %67 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ata_port_info*, %struct.ata_port_info** %4, align 8
  %70 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ata_port_info*, %struct.ata_port_info** %4, align 8
  %73 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ata_port_info*, %struct.ata_port_info** %4, align 8
  %76 = getelementptr inbounds %struct.ata_port_info, %struct.ata_port_info* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dev_dbg(i32 %68, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %74, i32 %77)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
