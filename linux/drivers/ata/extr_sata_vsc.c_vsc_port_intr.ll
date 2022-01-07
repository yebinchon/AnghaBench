; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_vsc.c_vsc_port_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_vsc.c_vsc_port_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_4__*, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 (%struct.ata_port*)* }
%struct.TYPE_5__ = type { i32 }
%struct.ata_queued_cmd = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@VSC_SATA_INT_ERROR = common dso_local global i32 0, align 4
@ATA_TFLAG_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ata_port*)* @vsc_port_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vsc_port_intr(i32 %0, %struct.ata_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_queued_cmd*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.ata_port* %1, %struct.ata_port** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @VSC_SATA_INT_ERROR, align 4
  %9 = and i32 %7, %8
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %15 = call i32 @vsc_error_intr(i32 %13, %struct.ata_port* %14)
  br label %56

16:                                               ; preds = %2
  %17 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %18 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %19 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port* %17, i32 %21)
  store %struct.ata_queued_cmd* %22, %struct.ata_queued_cmd** %5, align 8
  %23 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %24 = icmp ne %struct.ata_queued_cmd* %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %16
  %26 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %27 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @likely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %25
  %38 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %39 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %40 = call i32 @ata_bmdma_port_intr(%struct.ata_port* %38, %struct.ata_queued_cmd* %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %37, %25, %16
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %50 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %52, align 8
  %54 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %55 = call i32 %53(%struct.ata_port* %54)
  br label %56

56:                                               ; preds = %12, %48, %41
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vsc_error_intr(i32, %struct.ata_port*) #1

declare dso_local %struct.ata_queued_cmd* @ata_qc_from_tag(%struct.ata_port*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ata_bmdma_port_intr(%struct.ata_port*, %struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
