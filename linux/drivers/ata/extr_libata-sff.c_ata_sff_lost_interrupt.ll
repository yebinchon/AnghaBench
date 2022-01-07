; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_ata_sff_lost_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_ata_sff_lost_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ata_queued_cmd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ATA_TFLAG_POLLING = common dso_local global i32 0, align 4
@ATA_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"lost interrupt (Status 0x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_sff_lost_interrupt(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_queued_cmd*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %5 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %6 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %7 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port* %5, i32 %9)
  store %struct.ata_queued_cmd* %10, %struct.ata_queued_cmd** %4, align 8
  %11 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %12 = icmp ne %struct.ata_queued_cmd* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %15 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13, %1
  br label %37

22:                                               ; preds = %13
  %23 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %24 = call i32 @ata_sff_altstatus(%struct.ata_port* %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @ATA_BUSY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %37

30:                                               ; preds = %22
  %31 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @ata_port_warn(%struct.ata_port* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %35 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %36 = call i32 @ata_sff_port_intr(%struct.ata_port* %34, %struct.ata_queued_cmd* %35)
  br label %37

37:                                               ; preds = %30, %29, %21
  ret void
}

declare dso_local %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port*, i32) #1

declare dso_local i32 @ata_sff_altstatus(%struct.ata_port*) #1

declare dso_local i32 @ata_port_warn(%struct.ata_port*, i8*, i32) #1

declare dso_local i32 @ata_sff_port_intr(%struct.ata_port*, %struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
