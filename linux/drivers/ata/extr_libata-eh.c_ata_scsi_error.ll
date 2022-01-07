; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-eh.c_ata_scsi_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-eh.c_ata_scsi_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32 }
%struct.ata_port = type { i32 }

@eh_work_q = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"EXIT\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_scsi_error(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca i64, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %5 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %6 = call %struct.ata_port* @ata_shost_to_port(%struct.Scsi_Host* %5)
  store %struct.ata_port* %6, %struct.ata_port** %3, align 8
  %7 = load i32, i32* @eh_work_q, align 4
  %8 = call i32 @LIST_HEAD(i32 %7)
  %9 = call i32 @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %11 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32 %12, i64 %13)
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %15, i32 0, i32 1
  %17 = call i32 @list_splice_init(i32* %16, i32* @eh_work_q)
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32 %20, i64 %21)
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %24 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %25 = call i32 @ata_scsi_cmd_error_handler(%struct.Scsi_Host* %23, %struct.ata_port* %24, i32* @eh_work_q)
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %27 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %28 = call i32 @ata_scsi_port_error_handler(%struct.Scsi_Host* %26, %struct.ata_port* %27)
  %29 = call i32 @list_empty(i32* @eh_work_q)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @WARN_ON(i32 %32)
  %34 = call i32 @DPRINTK(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.ata_port* @ata_shost_to_port(%struct.Scsi_Host*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @ata_scsi_cmd_error_handler(%struct.Scsi_Host*, %struct.ata_port*, i32*) #1

declare dso_local i32 @ata_scsi_port_error_handler(%struct.Scsi_Host*, %struct.ata_port*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
