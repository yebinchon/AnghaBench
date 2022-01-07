; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_samsung_cf.c_pata_s3c_bus_softreset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_samsung_cf.c_pata_s3c_bus_softreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, i32, i32, i32, %struct.ata_ioports }
%struct.ata_ioports = type { i32 }

@ATA_SRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*, i64)* @pata_s3c_bus_softreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pata_s3c_bus_softreset(%struct.ata_port* %0, i64 %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ata_ioports*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %7 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %6, i32 0, i32 4
  store %struct.ata_ioports* %7, %struct.ata_ioports** %5, align 8
  %8 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %9 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %12 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %15 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ata_outb(i32 %10, i32 %13, i32 %16)
  %18 = call i32 @udelay(i32 20)
  %19 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %20 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %23 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ATA_SRST, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %28 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ata_outb(i32 %21, i32 %26, i32 %29)
  %31 = call i32 @udelay(i32 20)
  %32 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %33 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %36 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ata_ioports*, %struct.ata_ioports** %5, align 8
  %39 = getelementptr inbounds %struct.ata_ioports, %struct.ata_ioports* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ata_outb(i32 %34, i32 %37, i32 %40)
  %42 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %43 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %46 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %48 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %47, i32 0, i32 2
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @pata_s3c_wait_after_reset(i32* %48, i64 %49)
  ret i32 %50
}

declare dso_local i32 @ata_outb(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pata_s3c_wait_after_reset(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
