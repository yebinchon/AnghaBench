; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ep93xx.c_ep93xx_pata_device_is_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ep93xx.c_ep93xx_pata_device_is_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { {}* }
%struct.TYPE_3__ = type { %struct.ep93xx_pata_data* }
%struct.ep93xx_pata_data = type { i32 }

@IDECTRL_ADDR_NSECT = common dso_local global i32 0, align 4
@IDECTRL_ADDR_LBAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_port*, i32)* @ep93xx_pata_device_is_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_pata_device_is_present(%struct.ata_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ep93xx_pata_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %12, align 8
  store %struct.ep93xx_pata_data* %13, %struct.ep93xx_pata_data** %6, align 8
  %14 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %15 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.ata_port*, i32)**
  %19 = load i32 (%struct.ata_port*, i32)*, i32 (%struct.ata_port*, i32)** %18, align 8
  %20 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 %19(%struct.ata_port* %20, i32 %21)
  %23 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %6, align 8
  %24 = load i32, i32* @IDECTRL_ADDR_NSECT, align 4
  %25 = call i32 @ep93xx_pata_write_reg(%struct.ep93xx_pata_data* %23, i32 85, i32 %24)
  %26 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %6, align 8
  %27 = load i32, i32* @IDECTRL_ADDR_LBAL, align 4
  %28 = call i32 @ep93xx_pata_write_reg(%struct.ep93xx_pata_data* %26, i32 170, i32 %27)
  %29 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %6, align 8
  %30 = load i32, i32* @IDECTRL_ADDR_NSECT, align 4
  %31 = call i32 @ep93xx_pata_write_reg(%struct.ep93xx_pata_data* %29, i32 170, i32 %30)
  %32 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %6, align 8
  %33 = load i32, i32* @IDECTRL_ADDR_LBAL, align 4
  %34 = call i32 @ep93xx_pata_write_reg(%struct.ep93xx_pata_data* %32, i32 85, i32 %33)
  %35 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %6, align 8
  %36 = load i32, i32* @IDECTRL_ADDR_NSECT, align 4
  %37 = call i32 @ep93xx_pata_write_reg(%struct.ep93xx_pata_data* %35, i32 85, i32 %36)
  %38 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %6, align 8
  %39 = load i32, i32* @IDECTRL_ADDR_LBAL, align 4
  %40 = call i32 @ep93xx_pata_write_reg(%struct.ep93xx_pata_data* %38, i32 170, i32 %39)
  %41 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %6, align 8
  %42 = load i32, i32* @IDECTRL_ADDR_NSECT, align 4
  %43 = call i32 @ep93xx_pata_read_reg(%struct.ep93xx_pata_data* %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.ep93xx_pata_data*, %struct.ep93xx_pata_data** %6, align 8
  %45 = load i32, i32* @IDECTRL_ADDR_LBAL, align 4
  %46 = call i32 @ep93xx_pata_read_reg(%struct.ep93xx_pata_data* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 85
  br i1 %48, label %49, label %53

49:                                               ; preds = %2
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 170
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %54

53:                                               ; preds = %49, %2
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %52
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @ep93xx_pata_write_reg(%struct.ep93xx_pata_data*, i32, i32) #1

declare dso_local i32 @ep93xx_pata_read_reg(%struct.ep93xx_pata_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
