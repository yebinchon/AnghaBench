; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_mpiix.c_mpiix_qc_issue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_mpiix.c_mpiix_qc_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.ata_device*, %struct.ata_port* }
%struct.ata_device = type { i64 }
%struct.ata_port = type { %struct.ata_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @mpiix_qc_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpiix_qc_issue(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %5 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %6 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %5, i32 0, i32 1
  %7 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  store %struct.ata_port* %7, %struct.ata_port** %3, align 8
  %8 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %9 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %8, i32 0, i32 0
  %10 = load %struct.ata_device*, %struct.ata_device** %9, align 8
  store %struct.ata_device* %10, %struct.ata_device** %4, align 8
  %11 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %12 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %17 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %18 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %17, i32 0, i32 0
  %19 = load %struct.ata_device*, %struct.ata_device** %18, align 8
  %20 = icmp ne %struct.ata_device* %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %23 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %24 = call i32 @mpiix_set_piomode(%struct.ata_port* %22, %struct.ata_device* %23)
  br label %25

25:                                               ; preds = %21, %15, %1
  %26 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %27 = call i32 @ata_sff_qc_issue(%struct.ata_queued_cmd* %26)
  ret i32 %27
}

declare dso_local i32 @mpiix_set_piomode(%struct.ata_port*, %struct.ata_device*) #1

declare dso_local i32 @ata_sff_qc_issue(%struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
