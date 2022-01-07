; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c___ata_sff_port_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c___ata_sff_port_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 (%struct.ata_port*)* }
%struct.ata_queued_cmd = type { i32, %struct.TYPE_4__*, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"ata%u: protocol %d task_state %d\0A\00", align 1
@ATA_DFLAG_CDB_INTR = common dso_local global i32 0, align 4
@ATA_BUSY = common dso_local global i32 0, align 4
@AC_ERR_HSM = common dso_local global i32 0, align 4
@HSM_ST_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*, %struct.ata_queued_cmd*, i32)* @__ata_sff_port_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ata_sff_port_intr(%struct.ata_port* %0, %struct.ata_queued_cmd* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca %struct.ata_queued_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %5, align 8
  store %struct.ata_queued_cmd* %1, %struct.ata_queued_cmd** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %13 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %17 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @VPRINTK(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %15, i32 %18)
  %20 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %21 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %39 [
    i32 129, label %23
    i32 128, label %36
  ]

23:                                               ; preds = %3
  %24 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %25 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ATA_DFLAG_CDB_INTR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %34 = call i32 @ata_sff_idle_irq(%struct.ata_port* %33)
  store i32 %34, i32* %4, align 4
  br label %83

35:                                               ; preds = %23
  br label %40

36:                                               ; preds = %3
  %37 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %38 = call i32 @ata_sff_idle_irq(%struct.ata_port* %37)
  store i32 %38, i32* %4, align 4
  br label %83

39:                                               ; preds = %3
  br label %40

40:                                               ; preds = %39, %35
  %41 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %42 = call i32 @ata_sff_irq_status(%struct.ata_port* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @ATA_BUSY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %40
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i32, i32* @AC_ERR_HSM, align 4
  %52 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %53 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load i32, i32* @HSM_ST_ERR, align 4
  %57 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %58 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %62

59:                                               ; preds = %47
  %60 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %61 = call i32 @ata_sff_idle_irq(%struct.ata_port* %60)
  store i32 %61, i32* %4, align 4
  br label %83

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %40
  %64 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %65 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %67, align 8
  %69 = icmp ne i32 (%struct.ata_port*)* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %72 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %74, align 8
  %76 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %77 = call i32 %75(%struct.ata_port* %76)
  br label %78

78:                                               ; preds = %70, %63
  %79 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %80 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %6, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @ata_sff_hsm_move(%struct.ata_port* %79, %struct.ata_queued_cmd* %80, i32 %81, i32 0)
  store i32 1, i32* %4, align 4
  br label %83

83:                                               ; preds = %78, %59, %36, %32
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @VPRINTK(i8*, i32, i32, i32) #1

declare dso_local i32 @ata_sff_idle_irq(%struct.ata_port*) #1

declare dso_local i32 @ata_sff_irq_status(%struct.ata_port*) #1

declare dso_local i32 @ata_sff_hsm_move(%struct.ata_port*, %struct.ata_queued_cmd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
