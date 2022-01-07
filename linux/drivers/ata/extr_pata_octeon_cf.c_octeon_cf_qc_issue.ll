; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_octeon_cf.c_octeon_cf_qc_issue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_octeon_cf.c_octeon_cf_qc_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.TYPE_4__, %struct.ata_port* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ata_port = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ata_port*, %struct.TYPE_4__*)* }

@ATA_TFLAG_POLLING = common dso_local global i32 0, align 4
@HSM_ST_LAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Error, ATAPI not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @octeon_cf_qc_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_cf_qc_issue(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.ata_port*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %5 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %6 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %5, i32 0, i32 1
  %7 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  store %struct.ata_port* %7, %struct.ata_port** %4, align 8
  %8 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %42 [
    i32 128, label %12
    i32 129, label %36
  ]

12:                                               ; preds = %1
  %13 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %21 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (%struct.ata_port*, %struct.TYPE_4__*)*, i32 (%struct.ata_port*, %struct.TYPE_4__*)** %23, align 8
  %25 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %26 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %27 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %26, i32 0, i32 0
  %28 = call i32 %24(%struct.ata_port* %25, %struct.TYPE_4__* %27)
  %29 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %30 = call i32 @octeon_cf_dma_setup(%struct.ata_queued_cmd* %29)
  %31 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %32 = call i32 @octeon_cf_dma_start(%struct.ata_queued_cmd* %31)
  %33 = load i32, i32* @HSM_ST_LAST, align 4
  %34 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %35 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %45

36:                                               ; preds = %1
  %37 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %38 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 (...) @BUG()
  br label %42

42:                                               ; preds = %1, %36
  %43 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %44 = call i32 @ata_sff_qc_issue(%struct.ata_queued_cmd* %43)
  store i32 %44, i32* %2, align 4
  br label %46

45:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @octeon_cf_dma_setup(%struct.ata_queued_cmd*) #1

declare dso_local i32 @octeon_cf_dma_start(%struct.ata_queued_cmd*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ata_sff_qc_issue(%struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
