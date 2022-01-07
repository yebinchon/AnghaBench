; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_ata_sff_error_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_ata_sff_error_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_3__*, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 (%struct.ata_queued_cmd*)*, i32*, i32* }
%struct.ata_queued_cmd = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ATA_QCFLAG_FAILED = common dso_local global i32 0, align 4
@sata_std_hardreset = common dso_local global i32* null, align 8
@sata_sff_hardreset = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_sff_error_handler(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ata_queued_cmd*, align 8
  %6 = alloca i64, align 8
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %7 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %8 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %3, align 8
  %12 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %4, align 8
  %17 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %18 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %19 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.ata_queued_cmd* @__ata_qc_from_tag(%struct.ata_port* %17, i32 %21)
  store %struct.ata_queued_cmd* %22, %struct.ata_queued_cmd** %5, align 8
  %23 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %24 = icmp ne %struct.ata_queued_cmd* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %27 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ATA_QCFLAG_FAILED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  store %struct.ata_queued_cmd* null, %struct.ata_queued_cmd** %5, align 8
  br label %33

33:                                               ; preds = %32, %25, %1
  %34 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %35 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @spin_lock_irqsave(i32 %36, i64 %37)
  %39 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %40 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32 (%struct.ata_queued_cmd*)*, i32 (%struct.ata_queued_cmd*)** %42, align 8
  %44 = icmp ne i32 (%struct.ata_queued_cmd*)* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %33
  %46 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %47 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32 (%struct.ata_queued_cmd*)*, i32 (%struct.ata_queued_cmd*)** %49, align 8
  %51 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %5, align 8
  %52 = call i32 %50(%struct.ata_queued_cmd* %51)
  br label %53

53:                                               ; preds = %45, %33
  %54 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %55 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32 %56, i64 %57)
  %59 = load i32*, i32** %4, align 8
  %60 = load i32*, i32** @sata_std_hardreset, align 8
  %61 = icmp eq i32* %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %53
  %63 = load i32*, i32** %4, align 8
  %64 = load i32*, i32** @sata_sff_hardreset, align 8
  %65 = icmp eq i32* %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %62, %53
  %67 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %68 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %67, i32 0, i32 1
  %69 = call i32 @sata_scr_valid(%struct.TYPE_4__* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  store i32* null, i32** %4, align 8
  br label %72

72:                                               ; preds = %71, %66, %62
  %73 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %74 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %75 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %3, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %82 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @ata_do_eh(%struct.ata_port* %73, i32 %78, i32* %79, i32* %80, i32 %85)
  ret void
}

declare dso_local %struct.ata_queued_cmd* @__ata_qc_from_tag(%struct.ata_port*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @sata_scr_valid(%struct.TYPE_4__*) #1

declare dso_local i32 @ata_do_eh(%struct.ata_port*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
