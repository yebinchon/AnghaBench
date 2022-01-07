; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_svw.c_k2_sata_show_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_svw.c_k2_sata_show_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.ata_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ata_port**, i32 }
%struct.device_node = type { %struct.device_node*, %struct.device_node* }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"devspec: %pOF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.Scsi_Host*)* @k2_sata_show_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @k2_sata_show_info(%struct.seq_file* %0, %struct.Scsi_Host* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.ata_port*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.Scsi_Host* %1, %struct.Scsi_Host** %5, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %11 = call %struct.ata_port* @ata_shost_to_port(%struct.Scsi_Host* %10)
  store %struct.ata_port* %11, %struct.ata_port** %6, align 8
  %12 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %13 = icmp eq %struct.ata_port* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

15:                                               ; preds = %2
  %16 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %17 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @to_pci_dev(i32 %20)
  %22 = call %struct.device_node* @pci_device_to_OF_node(i32 %21)
  store %struct.device_node* %22, %struct.device_node** %7, align 8
  %23 = load %struct.device_node*, %struct.device_node** %7, align 8
  %24 = icmp eq %struct.device_node* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %65

26:                                               ; preds = %15
  %27 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %28 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %29 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.ata_port**, %struct.ata_port*** %31, align 8
  %33 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %32, i64 0
  %34 = load %struct.ata_port*, %struct.ata_port** %33, align 8
  %35 = icmp eq %struct.ata_port* %27, %34
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 1
  store i32 %37, i32* %8, align 4
  %38 = load %struct.device_node*, %struct.device_node** %7, align 8
  %39 = getelementptr inbounds %struct.device_node, %struct.device_node* %38, i32 0, i32 1
  %40 = load %struct.device_node*, %struct.device_node** %39, align 8
  store %struct.device_node* %40, %struct.device_node** %7, align 8
  br label %41

41:                                               ; preds = %60, %26
  %42 = load %struct.device_node*, %struct.device_node** %7, align 8
  %43 = icmp ne %struct.device_node* %42, null
  br i1 %43, label %44, label %64

44:                                               ; preds = %41
  %45 = load %struct.device_node*, %struct.device_node** %7, align 8
  %46 = call i32* @of_get_property(%struct.device_node* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %46, i32** %9, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  br label %60

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %57 = load %struct.device_node*, %struct.device_node** %7, align 8
  %58 = call i32 @seq_printf(%struct.seq_file* %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %57)
  br label %64

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %49
  %61 = load %struct.device_node*, %struct.device_node** %7, align 8
  %62 = getelementptr inbounds %struct.device_node, %struct.device_node* %61, i32 0, i32 0
  %63 = load %struct.device_node*, %struct.device_node** %62, align 8
  store %struct.device_node* %63, %struct.device_node** %7, align 8
  br label %41

64:                                               ; preds = %55, %41
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %25, %14
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.ata_port* @ata_shost_to_port(%struct.Scsi_Host*) #1

declare dso_local %struct.device_node* @pci_device_to_OF_node(i32) #1

declare dso_local i32 @to_pci_dev(i32) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, %struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
