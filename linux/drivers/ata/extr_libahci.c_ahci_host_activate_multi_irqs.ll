; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_host_activate_multi_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_host_activate_multi_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32, %struct.TYPE_3__**, i32, %struct.ahci_host_priv* }
%struct.TYPE_3__ = type { %struct.ahci_port_priv* }
%struct.ahci_port_priv = type { i32 }
%struct.ahci_host_priv = type { i32 (%struct.ata_host*, i32)* }
%struct.scsi_host_template = type { i32 }

@ahci_multi_irqs_intr_hard = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"irq %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_host*, %struct.scsi_host_template*)* @ahci_host_activate_multi_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_host_activate_multi_irqs(%struct.ata_host* %0, %struct.scsi_host_template* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_host*, align 8
  %5 = alloca %struct.scsi_host_template*, align 8
  %6 = alloca %struct.ahci_host_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ahci_port_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.ata_host* %0, %struct.ata_host** %4, align 8
  store %struct.scsi_host_template* %1, %struct.scsi_host_template** %5, align 8
  %11 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %12 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %11, i32 0, i32 3
  %13 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %12, align 8
  store %struct.ahci_host_priv* %13, %struct.ahci_host_priv** %6, align 8
  %14 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %15 = call i32 @ata_host_start(%struct.ata_host* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %86

20:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %79, %20
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %24 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %82

27:                                               ; preds = %21
  %28 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %29 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %30, i64 %32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %35, align 8
  store %struct.ahci_port_priv* %36, %struct.ahci_port_priv** %9, align 8
  %37 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %6, align 8
  %38 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %37, i32 0, i32 0
  %39 = load i32 (%struct.ata_host*, i32)*, i32 (%struct.ata_host*, i32)** %38, align 8
  %40 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 %39(%struct.ata_host* %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %9, align 8
  %44 = icmp ne %struct.ahci_port_priv* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %27
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @disable_irq(i32 %46)
  br label %79

48:                                               ; preds = %27
  %49 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %50 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @ahci_multi_irqs_intr_hard, align 4
  %54 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %9, align 8
  %55 = getelementptr inbounds %struct.ahci_port_priv, %struct.ahci_port_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %58 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %59, i64 %61
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = call i32 @devm_request_irq(i32 %51, i32 %52, i32 %53, i32 0, i32 %56, %struct.TYPE_3__* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %48
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %86

69:                                               ; preds = %48
  %70 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %71 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %72, i64 %74
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @ata_port_desc(%struct.TYPE_3__* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %69, %45
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %21

82:                                               ; preds = %21
  %83 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %84 = load %struct.scsi_host_template*, %struct.scsi_host_template** %5, align 8
  %85 = call i32 @ata_host_register(%struct.ata_host* %83, %struct.scsi_host_template* %84)
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %82, %67, %18
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @ata_host_start(%struct.ata_host*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @ata_port_desc(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @ata_host_register(%struct.ata_host*, %struct.scsi_host_template*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
