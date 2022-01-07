; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_hpt3x2n.c_hpt3x2n_qc_defer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_hpt3x2n.c_hpt3x2n_qc_defer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { %struct.TYPE_3__, %struct.ata_port* }
%struct.TYPE_3__ = type { i32 }
%struct.ata_port = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.ata_port** }

@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@USE_DPLL = common dso_local global i32 0, align 4
@ATA_DEFER_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*)* @hpt3x2n_qc_defer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpt3x2n_qc_defer(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_queued_cmd*, align 8
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %3, align 8
  %9 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %10 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %9, i32 0, i32 1
  %11 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  store %struct.ata_port* %11, %struct.ata_port** %4, align 8
  %12 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.ata_port**, %struct.ata_port*** %15, align 8
  %17 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %18 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = xor i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %16, i64 %21
  %23 = load %struct.ata_port*, %struct.ata_port** %22, align 8
  store %struct.ata_port* %23, %struct.ata_port** %5, align 8
  %24 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %25 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %7, align 4
  %30 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %31 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %32 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %36 = and i32 %34, %35
  %37 = call i32 @hpt3x2n_use_dpll(%struct.ata_port* %30, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %3, align 8
  %39 = call i32 @ata_std_qc_defer(%struct.ata_queued_cmd* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %1
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %58

44:                                               ; preds = %1
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @USE_DPLL, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %52 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @ATA_DEFER_PORT, align 4
  store i32 %56, i32* %2, align 4
  br label %58

57:                                               ; preds = %50, %44
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %55, %42
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @hpt3x2n_use_dpll(%struct.ata_port*, i32) #1

declare dso_local i32 @ata_std_qc_defer(%struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
