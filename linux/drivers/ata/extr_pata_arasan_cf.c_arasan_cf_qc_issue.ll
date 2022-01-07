; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_arasan_cf_qc_issue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_arasan_cf.c_arasan_cf_qc_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.TYPE_8__, %struct.TYPE_6__*, %struct.ata_port* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ata_port = type { i32, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 (%struct.ata_port*, %struct.TYPE_8__*)* }
%struct.TYPE_5__ = type { %struct.arasan_cf_dev* }
%struct.arasan_cf_dev = type { %struct.ata_queued_cmd*, i32 }

@ATA_TFLAG_POLLING = common dso_local global i32 0, align 4
@HSM_ST_LAST = common dso_local global i32 0, align 4
@AC_ERR_SYSTEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @arasan_cf_qc_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arasan_cf_qc_issue(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.arasan_cf_dev*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %6 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %7 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %6, i32 0, i32 2
  %8 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  store %struct.ata_port* %8, %struct.ata_port** %4, align 8
  %9 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %12, align 8
  store %struct.arasan_cf_dev* %13, %struct.arasan_cf_dev** %5, align 8
  %14 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %15 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ata_is_dma(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %22 = call i32 @ata_sff_qc_issue(%struct.ata_queued_cmd* %21)
  store i32 %22, i32* %2, align 4
  br label %70

23:                                               ; preds = %1
  %24 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %25 = call i32 @ata_wait_idle(%struct.ata_port* %24)
  %26 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %27 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %28 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ata_sff_dev_select(%struct.ata_port* %26, i32 %31)
  %33 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %34 = call i32 @ata_wait_idle(%struct.ata_port* %33)
  %35 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %36 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %66 [
    i32 128, label %39
  ]

39:                                               ; preds = %23
  %40 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %41 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ATA_TFLAG_POLLING, align 4
  %45 = and i32 %43, %44
  %46 = call i32 @WARN_ON_ONCE(i32 %45)
  %47 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %48 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32 (%struct.ata_port*, %struct.TYPE_8__*)*, i32 (%struct.ata_port*, %struct.TYPE_8__*)** %50, align 8
  %52 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %53 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %54 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %53, i32 0, i32 0
  %55 = call i32 %51(%struct.ata_port* %52, %struct.TYPE_8__* %54)
  %56 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %5, align 8
  %57 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %56, i32 0, i32 1
  store i32 0, i32* %57, align 8
  %58 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %59 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %5, align 8
  %60 = getelementptr inbounds %struct.arasan_cf_dev, %struct.arasan_cf_dev* %59, i32 0, i32 0
  store %struct.ata_queued_cmd* %58, %struct.ata_queued_cmd** %60, align 8
  %61 = load %struct.arasan_cf_dev*, %struct.arasan_cf_dev** %5, align 8
  %62 = call i32 @arasan_cf_dma_start(%struct.arasan_cf_dev* %61)
  %63 = load i32, i32* @HSM_ST_LAST, align 4
  %64 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %65 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %69

66:                                               ; preds = %23
  %67 = call i32 @WARN_ON(i32 1)
  %68 = load i32, i32* @AC_ERR_SYSTEM, align 4
  store i32 %68, i32* %2, align 4
  br label %70

69:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %66, %20
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @ata_is_dma(i32) #1

declare dso_local i32 @ata_sff_qc_issue(%struct.ata_queued_cmd*) #1

declare dso_local i32 @ata_wait_idle(%struct.ata_port*) #1

declare dso_local i32 @ata_sff_dev_select(%struct.ata_port*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @arasan_cf_dma_start(%struct.arasan_cf_dev*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
