; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_add_hosts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_scsi_add_hosts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32, %struct.ata_port** }
%struct.ata_port = type { %struct.Scsi_Host*, %struct.TYPE_2__*, i32, i32 }
%struct.Scsi_Host = type { i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_host_template = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ata_scsi_transport_template = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_scsi_add_hosts(%struct.ata_host* %0, %struct.scsi_host_template* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_host*, align 8
  %5 = alloca %struct.scsi_host_template*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_port*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  store %struct.ata_host* %0, %struct.ata_host** %4, align 8
  store %struct.scsi_host_template* %1, %struct.scsi_host_template** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %77, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %14 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %80

17:                                               ; preds = %11
  %18 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %19 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %18, i32 0, i32 1
  %20 = load %struct.ata_port**, %struct.ata_port*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %20, i64 %22
  %24 = load %struct.ata_port*, %struct.ata_port** %23, align 8
  store %struct.ata_port* %24, %struct.ata_port** %8, align 8
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.scsi_host_template*, %struct.scsi_host_template** %5, align 8
  %28 = call %struct.Scsi_Host* @scsi_host_alloc(%struct.scsi_host_template* %27, i32 8)
  store %struct.Scsi_Host* %28, %struct.Scsi_Host** %9, align 8
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %30 = icmp ne %struct.Scsi_Host* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %17
  br label %92

32:                                               ; preds = %17
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %34 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %36 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %37 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %36, i32 0, i32 8
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = bitcast i32* %39 to %struct.ata_port**
  store %struct.ata_port* %35, %struct.ata_port** %40, align 8
  %41 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %42 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %43 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %42, i32 0, i32 0
  store %struct.Scsi_Host* %41, %struct.Scsi_Host** %43, align 8
  %44 = load i32, i32* @ata_scsi_transport_template, align 4
  %45 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %46 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %48 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %51 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %53 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %52, i32 0, i32 1
  store i32 16, i32* %53, align 4
  %54 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %55 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %54, i32 0, i32 2
  store i32 1, i32* %55, align 8
  %56 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %57 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %56, i32 0, i32 3
  store i32 1, i32* %57, align 4
  %58 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %59 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %58, i32 0, i32 4
  store i32 32, i32* %59, align 8
  %60 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %61 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %60, i32 0, i32 5
  store i32 1, i32* %61, align 4
  %62 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %63 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %62, i32 0, i32 0
  %64 = load %struct.Scsi_Host*, %struct.Scsi_Host** %63, align 8
  %65 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %66 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %65, i32 0, i32 2
  %67 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %68 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @scsi_add_host_with_dma(%struct.Scsi_Host* %64, i32* %66, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %32
  br label %81

76:                                               ; preds = %32
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %11

80:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %113

81:                                               ; preds = %75
  %82 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %83 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %82, i32 0, i32 1
  %84 = load %struct.ata_port**, %struct.ata_port*** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %84, i64 %86
  %88 = load %struct.ata_port*, %struct.ata_port** %87, align 8
  %89 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %88, i32 0, i32 0
  %90 = load %struct.Scsi_Host*, %struct.Scsi_Host** %89, align 8
  %91 = call i32 @scsi_host_put(%struct.Scsi_Host* %90)
  br label %92

92:                                               ; preds = %81, %31
  br label %93

93:                                               ; preds = %97, %92
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %6, align 4
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %93
  %98 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %99 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %98, i32 0, i32 1
  %100 = load %struct.ata_port**, %struct.ata_port*** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %100, i64 %102
  %104 = load %struct.ata_port*, %struct.ata_port** %103, align 8
  %105 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %104, i32 0, i32 0
  %106 = load %struct.Scsi_Host*, %struct.Scsi_Host** %105, align 8
  store %struct.Scsi_Host* %106, %struct.Scsi_Host** %10, align 8
  %107 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %108 = call i32 @scsi_remove_host(%struct.Scsi_Host* %107)
  %109 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %110 = call i32 @scsi_host_put(%struct.Scsi_Host* %109)
  br label %93

111:                                              ; preds = %93
  %112 = load i32, i32* %7, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %80
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(%struct.scsi_host_template*, i32) #1

declare dso_local i32 @scsi_add_host_with_dma(%struct.Scsi_Host*, i32*, i32) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
