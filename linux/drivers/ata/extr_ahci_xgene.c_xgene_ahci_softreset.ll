; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_xgene.c_xgene_ahci_softreset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_xgene.c_xgene_ahci_softreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.ata_port* }
%struct.ata_port = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ahci_host_priv* }
%struct.ahci_host_priv = type { %struct.xgene_ahci_context* }
%struct.xgene_ahci_context = type { i32* }

@PORT_FBS = common dso_local global i32 0, align 4
@PORT_FBS_DEV_MASK = common dso_local global i32 0, align 4
@PORT_FBS_DEV_OFFSET = common dso_local global i32 0, align 4
@ahci_check_ready = common dso_local global i32 0, align 4
@ATA_DEV_PMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i32*, i64)* @xgene_ahci_softreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_ahci_softreset(%struct.ata_link* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_port*, align 8
  %9 = alloca %struct.ahci_host_priv*, align 8
  %10 = alloca %struct.xgene_ahci_context*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %17 = call i32 @sata_srst_pmp(%struct.ata_link* %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %19 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %18, i32 0, i32 0
  %20 = load %struct.ata_port*, %struct.ata_port** %19, align 8
  store %struct.ata_port* %20, %struct.ata_port** %8, align 8
  %21 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %22 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %24, align 8
  store %struct.ahci_host_priv* %25, %struct.ahci_host_priv** %9, align 8
  %26 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %9, align 8
  %27 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %26, i32 0, i32 0
  %28 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %27, align 8
  store %struct.xgene_ahci_context* %28, %struct.xgene_ahci_context** %10, align 8
  %29 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %30 = call i8* @ahci_port_base(%struct.ata_port* %29)
  store i8* %30, i8** %11, align 8
  store i32 1, i32* %14, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = load i32, i32* @PORT_FBS, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr i8, i8* %31, i64 %33
  %35 = call i32 @readl(i8* %34)
  store i32 %35, i32* %13, align 4
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* @PORT_FBS, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr i8, i8* %36, i64 %38
  %40 = call i32 @readl(i8* %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* @PORT_FBS_DEV_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %12, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @PORT_FBS_DEV_OFFSET, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* %12, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* @PORT_FBS, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr i8, i8* %51, i64 %53
  %55 = call i32 @writel(i32 %50, i8* %54)
  br label %56

56:                                               ; preds = %80, %3
  %57 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* @ahci_check_ready, align 4
  %62 = call i32 @ahci_do_softreset(%struct.ata_link* %57, i32* %58, i32 %59, i64 %60, i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %10, align 8
  %66 = getelementptr inbounds %struct.xgene_ahci_context, %struct.xgene_ahci_context* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %69 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  store i32 %64, i32* %71, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @ATA_DEV_PMP, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %56
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %14, align 4
  %79 = icmp ne i32 %77, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load i32, i32* %13, align 4
  %82 = load i8*, i8** %11, align 8
  %83 = load i32, i32* @PORT_FBS, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr i8, i8* %82, i64 %84
  %86 = call i32 @writel(i32 %81, i8* %85)
  br label %56

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %87, %56
  %89 = load i32, i32* %15, align 4
  ret i32 %89
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
