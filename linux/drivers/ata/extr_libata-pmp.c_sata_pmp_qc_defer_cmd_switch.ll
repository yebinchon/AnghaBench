; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-pmp.c_sata_pmp_qc_defer_cmd_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-pmp.c_sata_pmp_qc_defer_cmd_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ata_link* }
%struct.ata_link = type { %struct.ata_port* }
%struct.ata_port = type { i64, %struct.ata_link* }

@ATA_QCFLAG_CLEAR_EXCL = common dso_local global i32 0, align 4
@ATA_DEFER_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sata_pmp_qc_defer_cmd_switch(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca %struct.ata_port*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %6 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %7 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.ata_link*, %struct.ata_link** %9, align 8
  store %struct.ata_link* %10, %struct.ata_link** %4, align 8
  %11 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %12 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %11, i32 0, i32 0
  %13 = load %struct.ata_port*, %struct.ata_port** %12, align 8
  store %struct.ata_port* %13, %struct.ata_port** %5, align 8
  %14 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 1
  %16 = load %struct.ata_link*, %struct.ata_link** %15, align 8
  %17 = icmp eq %struct.ata_link* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %20 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %19, i32 0, i32 1
  %21 = load %struct.ata_link*, %struct.ata_link** %20, align 8
  %22 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %23 = icmp eq %struct.ata_link* %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %18, %1
  %25 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %26 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %31 = call i64 @ata_link_active(%struct.ata_link* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29, %24
  %34 = load i32, i32* @ATA_QCFLAG_CLEAR_EXCL, align 4
  %35 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %36 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %40 = call i32 @ata_std_qc_defer(%struct.ata_queued_cmd* %39)
  store i32 %40, i32* %2, align 4
  br label %47

41:                                               ; preds = %29
  %42 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %43 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %44 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %43, i32 0, i32 1
  store %struct.ata_link* %42, %struct.ata_link** %44, align 8
  br label %45

45:                                               ; preds = %41, %18
  %46 = load i32, i32* @ATA_DEFER_PORT, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %33
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @ata_link_active(%struct.ata_link*) #1

declare dso_local i32 @ata_std_qc_defer(%struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
