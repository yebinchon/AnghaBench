; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_ata_sff_freeze.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_ata_sff_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_3__*, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)*, i64 }
%struct.TYPE_4__ = type { i64 }

@ATA_NIEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_sff_freeze(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %3 = load i32, i32* @ATA_NIEN, align 4
  %4 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %5 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = or i32 %6, %3
  store i32 %7, i32* %5, align 8
  %8 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %9 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %12 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 8
  %13 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %14 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %21 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19, %1
  %26 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %27 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %28 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ata_sff_set_devctl(%struct.ata_port* %26, i32 %29)
  br label %31

31:                                               ; preds = %25, %19
  %32 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %33 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %35, align 8
  %37 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %38 = call i32 %36(%struct.ata_port* %37)
  %39 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %40 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %42, align 8
  %44 = icmp ne i32 (%struct.ata_port*)* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %31
  %46 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %47 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %49, align 8
  %51 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %52 = call i32 %50(%struct.ata_port* %51)
  br label %53

53:                                               ; preds = %45, %31
  ret void
}

declare dso_local i32 @ata_sff_set_devctl(%struct.ata_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
