; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ata_piix.c_piix_sidpr_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ata_piix.c_piix_sidpr_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32, %struct.ata_port* }
%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.piix_host_priv* }
%struct.piix_host_priv = type { i64 }

@piix_sidx_map = common dso_local global i32* null, align 8
@PIIX_SIDPR_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_link*, i32)* @piix_sidpr_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @piix_sidpr_sel(%struct.ata_link* %0, i32 %1) #0 {
  %3 = alloca %struct.ata_link*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca %struct.piix_host_priv*, align 8
  store %struct.ata_link* %0, %struct.ata_link** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %8 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %7, i32 0, i32 1
  %9 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  store %struct.ata_port* %9, %struct.ata_port** %5, align 8
  %10 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %11 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.piix_host_priv*, %struct.piix_host_priv** %13, align 8
  store %struct.piix_host_priv* %14, %struct.piix_host_priv** %6, align 8
  %15 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %16 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %17, 2
  %19 = load %struct.ata_link*, %struct.ata_link** %3, align 8
  %20 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %18, %21
  %23 = shl i32 %22, 8
  %24 = load i32*, i32** @piix_sidx_map, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %23, %28
  %30 = load %struct.piix_host_priv*, %struct.piix_host_priv** %6, align 8
  %31 = getelementptr inbounds %struct.piix_host_priv, %struct.piix_host_priv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PIIX_SIDPR_IDX, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @iowrite32(i32 %29, i64 %34)
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
