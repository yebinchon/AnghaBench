; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_ata_hsm_ok_in_wq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_ata_hsm_ok_in_wq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i64 }
%struct.ata_queued_cmd = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }

@ATA_TFLAG_POLLING = common dso_local global i32 0, align 4
@HSM_ST_FIRST = common dso_local global i64 0, align 8
@ATA_PROT_PIO = common dso_local global i64 0, align 8
@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@ATA_DFLAG_CDB_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*, %struct.ata_queued_cmd*)* @ata_hsm_ok_in_wq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_hsm_ok_in_wq(%struct.ata_port* %0, %struct.ata_queued_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_queued_cmd*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store %struct.ata_queued_cmd* %1, %struct.ata_queued_cmd** %5, align 8
  %6 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %7 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %55

14:                                               ; preds = %2
  %15 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %16 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HSM_ST_FIRST, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %14
  %21 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %22 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ATA_PROT_PIO, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %29 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %55

36:                                               ; preds = %27, %20
  %37 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %38 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @ata_is_atapi(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %45 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ATA_DFLAG_CDB_INTR, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %55

53:                                               ; preds = %43, %36
  br label %54

54:                                               ; preds = %53, %14
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %52, %35, %13
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @ata_is_atapi(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
