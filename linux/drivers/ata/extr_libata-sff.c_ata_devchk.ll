; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_ata_devchk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_ata_devchk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_2__*, %struct.ata_ioports }
%struct.TYPE_2__ = type { i32 (%struct.ata_port*, i32)* }
%struct.ata_ioports = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*, i32)* @ata_devchk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_devchk(%struct.ata_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_ioports*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 1
  store %struct.ata_ioports* %10, %struct.ata_ioports** %6, align 8
  %11 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %12 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.ata_port*, i32)*, i32 (%struct.ata_port*, i32)** %14, align 8
  %16 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 %15(%struct.ata_port* %16, i32 %17)
  %19 = load %struct.ata_ioports*, %struct.ata_ioports** %6, align 8
  %20 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @iowrite8(i32 85, i32 %21)
  %23 = load %struct.ata_ioports*, %struct.ata_ioports** %6, align 8
  %24 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @iowrite8(i32 170, i32 %25)
  %27 = load %struct.ata_ioports*, %struct.ata_ioports** %6, align 8
  %28 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @iowrite8(i32 170, i32 %29)
  %31 = load %struct.ata_ioports*, %struct.ata_ioports** %6, align 8
  %32 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @iowrite8(i32 85, i32 %33)
  %35 = load %struct.ata_ioports*, %struct.ata_ioports** %6, align 8
  %36 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @iowrite8(i32 85, i32 %37)
  %39 = load %struct.ata_ioports*, %struct.ata_ioports** %6, align 8
  %40 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @iowrite8(i32 170, i32 %41)
  %43 = load %struct.ata_ioports*, %struct.ata_ioports** %6, align 8
  %44 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ioread8(i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.ata_ioports*, %struct.ata_ioports** %6, align 8
  %48 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ioread8(i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 85
  br i1 %52, label %53, label %57

53:                                               ; preds = %2
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, 170
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %58

57:                                               ; preds = %53, %2
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %56
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @iowrite8(i32, i32) #1

declare dso_local i32 @ioread8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
