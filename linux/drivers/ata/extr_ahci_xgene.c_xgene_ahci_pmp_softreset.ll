; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_xgene.c_xgene_ahci_pmp_softreset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_xgene.c_xgene_ahci_pmp_softreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.ata_port* }
%struct.ata_port = type { i32 }

@PORT_FBS = common dso_local global i32 0, align 4
@PORT_FBS_DEV_MASK = common dso_local global i32 0, align 4
@PORT_FBS_DEV_OFFSET = common dso_local global i32 0, align 4
@ahci_check_ready = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i32*, i64)* @xgene_ahci_pmp_softreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_ahci_pmp_softreset(%struct.ata_link* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %13 = call i32 @sata_srst_pmp(%struct.ata_link* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %15 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %14, i32 0, i32 0
  %16 = load %struct.ata_port*, %struct.ata_port** %15, align 8
  store %struct.ata_port* %16, %struct.ata_port** %8, align 8
  %17 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %18 = call i8* @ahci_port_base(%struct.ata_port* %17)
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load i32, i32* @PORT_FBS, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr i8, i8* %19, i64 %21
  %23 = call i32 @readl(i8* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @PORT_FBS_DEV_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %11, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @PORT_FBS_DEV_OFFSET, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* %11, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* @PORT_FBS, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr i8, i8* %34, i64 %36
  %38 = call i32 @writel(i32 %33, i8* %37)
  %39 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i64, i64* %6, align 8
  %43 = load i32, i32* @ahci_check_ready, align 4
  %44 = call i32 @ahci_do_softreset(%struct.ata_link* %39, i32* %40, i32 %41, i64 %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  ret i32 %45
}

declare dso_local i32 @sata_srst_pmp(%struct.ata_link*) #1

declare dso_local i8* @ahci_port_base(%struct.ata_port*) #1

declare dso_local i32 @readl(i8*) #1

declare dso_local i32 @writel(i32, i8*) #1

declare dso_local i32 @ahci_do_softreset(%struct.ata_link*, i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
