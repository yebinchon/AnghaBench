; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_ata_sff_irq_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_ata_sff_irq_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__*, i32, i32, %struct.ata_ioports }
%struct.TYPE_2__ = type { i32 (%struct.ata_port*)*, i64, i32 (%struct.ata_port*)* }
%struct.ata_ioports = type { i64 }

@ATA_NIEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_sff_irq_on(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca %struct.ata_ioports*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %4 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %5 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %4, i32 0, i32 3
  store %struct.ata_ioports* %5, %struct.ata_ioports** %3, align 8
  %6 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %7 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %9, align 8
  %11 = icmp ne i32 (%struct.ata_port*)* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %14 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %16, align 8
  %18 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %19 = call i32 %17(%struct.ata_port* %18)
  br label %66

20:                                               ; preds = %1
  %21 = load i32, i32* @ATA_NIEN, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %24 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %28 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %31 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %33 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %20
  %39 = load %struct.ata_ioports*, %struct.ata_ioports** %3, align 8
  %40 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38, %20
  %44 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %45 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %46 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ata_sff_set_devctl(%struct.ata_port* %44, i32 %47)
  br label %49

49:                                               ; preds = %43, %38
  %50 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %51 = call i32 @ata_wait_idle(%struct.ata_port* %50)
  %52 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %53 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %55, align 8
  %57 = icmp ne i32 (%struct.ata_port*)* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %49
  %59 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %60 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32 (%struct.ata_port*)*, i32 (%struct.ata_port*)** %62, align 8
  %64 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %65 = call i32 %63(%struct.ata_port* %64)
  br label %66

66:                                               ; preds = %12, %58, %49
  ret void
}

declare dso_local i32 @ata_sff_set_devctl(%struct.ata_port*, i32) #1

declare dso_local i32 @ata_wait_idle(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
