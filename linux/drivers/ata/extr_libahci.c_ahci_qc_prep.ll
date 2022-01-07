; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_qc_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_qc_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32, %struct.ata_port* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ata_port = type { %struct.ahci_port_priv* }
%struct.ahci_port_priv = type { i8* }

@AHCI_CMD_TBL_SZ = common dso_local global i32 0, align 4
@AHCI_CMD_TBL_CDB = common dso_local global i32 0, align 4
@ATA_QCFLAG_DMAMAP = common dso_local global i32 0, align 4
@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@AHCI_CMD_WRITE = common dso_local global i32 0, align 4
@AHCI_CMD_ATAPI = common dso_local global i32 0, align 4
@AHCI_CMD_PREFETCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @ahci_qc_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_qc_prep(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ahci_port_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %10 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %11 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %10, i32 0, i32 5
  %12 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  store %struct.ata_port* %12, %struct.ata_port** %3, align 8
  %13 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %14 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %13, i32 0, i32 0
  %15 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %14, align 8
  store %struct.ahci_port_priv* %15, %struct.ahci_port_priv** %4, align 8
  %16 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %17 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ata_is_atapi(i32 %19)
  store i32 %20, i32* %5, align 4
  store i32 5, i32* %8, align 4
  %21 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %4, align 8
  %22 = getelementptr inbounds %struct.ahci_port_priv, %struct.ahci_port_priv* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %25 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @AHCI_CMD_TBL_SZ, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr i8, i8* %23, i64 %29
  store i8* %30, i8** %6, align 8
  %31 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %32 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %31, i32 0, i32 2
  %33 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %34 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %33, i32 0, i32 3
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @ata_tf_to_fis(%struct.TYPE_6__* %32, i32 %39, i32 1, i8* %40)
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %1
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* @AHCI_CMD_TBL_CDB, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr i8, i8* %45, i64 %47
  %49 = call i32 @memset(i8* %48, i32 0, i32 32)
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* @AHCI_CMD_TBL_CDB, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr i8, i8* %50, i64 %52
  %54 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %55 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %58 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %57, i32 0, i32 3
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @memcpy(i8* %53, i32 %56, i32 %61)
  br label %63

63:                                               ; preds = %44, %1
  store i32 0, i32* %9, align 4
  %64 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %65 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ATA_QCFLAG_DMAMAP, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @ahci_fill_sg(%struct.ata_queued_cmd* %71, i8* %72)
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %70, %63
  %75 = load i32, i32* %9, align 4
  %76 = shl i32 %75, 16
  %77 = or i32 5, %76
  %78 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %79 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %78, i32 0, i32 3
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 12
  %86 = or i32 %77, %85
  store i32 %86, i32* %7, align 4
  %87 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %88 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %74
  %95 = load i32, i32* @AHCI_CMD_WRITE, align 4
  %96 = load i32, i32* %7, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %94, %74
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i32, i32* @AHCI_CMD_ATAPI, align 4
  %103 = load i32, i32* @AHCI_CMD_PREFETCH, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* %7, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %101, %98
  %108 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %4, align 8
  %109 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %110 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @ahci_fill_cmd_slot(%struct.ahci_port_priv* %108, i32 %111, i32 %112)
  ret void
}

declare dso_local i32 @ata_is_atapi(i32) #1

declare dso_local i32 @ata_tf_to_fis(%struct.TYPE_6__*, i32, i32, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @ahci_fill_sg(%struct.ata_queued_cmd*, i8*) #1

declare dso_local i32 @ahci_fill_cmd_slot(%struct.ahci_port_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
