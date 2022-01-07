; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_qc_new_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_qc_new_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, i32, %struct.ata_device*, %struct.ata_port*, i32* }
%struct.ata_port = type { i32, i32 }
%struct.ata_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ata_port* }

@ATA_PFLAG_FROZEN = common dso_local global i32 0, align 4
@ATA_FLAG_SAS_HOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ata_queued_cmd* @ata_qc_new_init(%struct.ata_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_port*, align 8
  %7 = alloca %struct.ata_queued_cmd*, align 8
  store %struct.ata_device* %0, %struct.ata_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %9 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  store %struct.ata_port* %12, %struct.ata_port** %6, align 8
  %13 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %14 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ATA_PFLAG_FROZEN, align 4
  %17 = and i32 %15, %16
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store %struct.ata_queued_cmd* null, %struct.ata_queued_cmd** %3, align 8
  br label %55

21:                                               ; preds = %2
  %22 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %23 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ATA_FLAG_SAS_HOST, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %30 = call i32 @ata_sas_allocate_tag(%struct.ata_port* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store %struct.ata_queued_cmd* null, %struct.ata_queued_cmd** %3, align 8
  br label %55

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %21
  %36 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call %struct.ata_queued_cmd* @__ata_qc_from_tag(%struct.ata_port* %36, i32 %37)
  store %struct.ata_queued_cmd* %38, %struct.ata_queued_cmd** %7, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %7, align 8
  %41 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %7, align 8
  %43 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 8
  %44 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %7, align 8
  %45 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %44, i32 0, i32 4
  store i32* null, i32** %45, align 8
  %46 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %47 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %7, align 8
  %48 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %47, i32 0, i32 3
  store %struct.ata_port* %46, %struct.ata_port** %48, align 8
  %49 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %50 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %7, align 8
  %51 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %50, i32 0, i32 2
  store %struct.ata_device* %49, %struct.ata_device** %51, align 8
  %52 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %7, align 8
  %53 = call i32 @ata_qc_reinit(%struct.ata_queued_cmd* %52)
  %54 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %7, align 8
  store %struct.ata_queued_cmd* %54, %struct.ata_queued_cmd** %3, align 8
  br label %55

55:                                               ; preds = %35, %33, %20
  %56 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  ret %struct.ata_queued_cmd* %56
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ata_sas_allocate_tag(%struct.ata_port*) #1

declare dso_local %struct.ata_queued_cmd* @__ata_qc_from_tag(%struct.ata_port*, i32) #1

declare dso_local i32 @ata_qc_reinit(%struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
