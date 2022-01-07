; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_xgene.c_xgene_ahci_qc_issue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_xgene.c_xgene_ahci_qc_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.ata_port* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ata_port = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ahci_host_priv* }
%struct.ahci_host_priv = type { %struct.xgene_ahci_context* }
%struct.xgene_ahci_context = type { i64*, i64* }

@ATA_DEV_PMP = common dso_local global i64 0, align 8
@PORT_FBS = common dso_local global i32 0, align 4
@PORT_FBS_DEV_MASK = common dso_local global i32 0, align 4
@PORT_FBS_DEV_OFFSET = common dso_local global i32 0, align 4
@ATA_CMD_ID_ATA = common dso_local global i64 0, align 8
@ATA_CMD_PACKET = common dso_local global i64 0, align 8
@ATA_CMD_SMART = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @xgene_ahci_qc_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_ahci_qc_issue(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ahci_host_priv*, align 8
  %5 = alloca %struct.xgene_ahci_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %9 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %10 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %9, i32 0, i32 2
  %11 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  store %struct.ata_port* %11, %struct.ata_port** %3, align 8
  %12 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %15, align 8
  store %struct.ahci_host_priv* %16, %struct.ahci_host_priv** %4, align 8
  %17 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %4, align 8
  %18 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %17, i32 0, i32 0
  %19 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %18, align 8
  store %struct.xgene_ahci_context* %19, %struct.xgene_ahci_context** %5, align 8
  store i32 0, i32* %6, align 4
  %20 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %21 = call i8* @ahci_port_base(%struct.ata_port* %20)
  store i8* %21, i8** %8, align 8
  %22 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %5, align 8
  %23 = getelementptr inbounds %struct.xgene_ahci_context, %struct.xgene_ahci_context* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %26 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i64, i64* %24, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ATA_DEV_PMP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %1
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* @PORT_FBS, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr i8, i8* %33, i64 %35
  %37 = call i32 @readl(i8* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @PORT_FBS_DEV_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %43 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PORT_FBS_DEV_OFFSET, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* @PORT_FBS, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr i8, i8* %54, i64 %56
  %58 = call i32 @writel(i32 %53, i8* %57)
  br label %59

59:                                               ; preds = %32, %1
  %60 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %5, align 8
  %61 = getelementptr inbounds %struct.xgene_ahci_context, %struct.xgene_ahci_context* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %64 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i64, i64* %62, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ATA_CMD_ID_ATA, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %92, label %70

70:                                               ; preds = %59
  %71 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %5, align 8
  %72 = getelementptr inbounds %struct.xgene_ahci_context, %struct.xgene_ahci_context* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %75 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i64, i64* %73, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ATA_CMD_PACKET, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %92, label %81

81:                                               ; preds = %70
  %82 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %5, align 8
  %83 = getelementptr inbounds %struct.xgene_ahci_context, %struct.xgene_ahci_context* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %86 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i64, i64* %84, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ATA_CMD_SMART, align 8
  %91 = icmp eq i64 %89, %90
  br label %92

92:                                               ; preds = %81, %70, %59
  %93 = phi i1 [ true, %70 ], [ true, %59 ], [ %91, %81 ]
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %99 = call i32 @xgene_ahci_restart_engine(%struct.ata_port* %98)
  br label %100

100:                                              ; preds = %97, %92
  %101 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %102 = call i32 @ahci_qc_issue(%struct.ata_queued_cmd* %101)
  store i32 %102, i32* %6, align 4
  %103 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %104 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.xgene_ahci_context*, %struct.xgene_ahci_context** %5, align 8
  %108 = getelementptr inbounds %struct.xgene_ahci_context, %struct.xgene_ahci_context* %107, i32 0, i32 1
  %109 = load i64*, i64** %108, align 8
  %110 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %111 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds i64, i64* %109, i64 %112
  store i64 %106, i64* %113, align 8
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i8* @ahci_port_base(%struct.ata_port*) #1

declare dso_local i32 @readl(i8*) #1

declare dso_local i32 @writel(i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xgene_ahci_restart_engine(%struct.ata_port*) #1

declare dso_local i32 @ahci_qc_issue(%struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
