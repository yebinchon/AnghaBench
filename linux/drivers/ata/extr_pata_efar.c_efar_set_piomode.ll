; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_efar.c_efar_set_piomode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_efar.c_efar_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i64, i32 }
%struct.pci_dev = type { i32 }

@XFER_PIO_0 = common dso_local global i32 0, align 4
@efar_set_piomode.timings = internal constant [5 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] [i32 1, i32 0], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 2, i32 3]], align 16
@ATA_DEV_ATA = common dso_local global i64 0, align 8
@efar_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @efar_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efar_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %14 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %15 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @XFER_PIO_0, align 4
  %18 = sub i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %20 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.pci_dev* @to_pci_dev(i32 %23)
  store %struct.pci_dev* %24, %struct.pci_dev** %6, align 8
  %25 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %26 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 66, i32 64
  store i32 %30, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ugt i32 %31, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* %11, align 4
  %35 = or i32 %34, 1
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %33, %2
  %37 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %38 = call i64 @ata_pio_need_iordy(%struct.ata_device* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* %11, align 4
  %42 = or i32 %41, 2
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %40, %36
  %44 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %45 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ATA_DEV_ATA, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* %11, align 4
  %51 = or i32 %50, 4
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %49, %43
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @spin_lock_irqsave(i32* @efar_lock, i64 %53)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @pci_read_config_word(%struct.pci_dev* %55, i32 %56, i32* %9)
  %58 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %59 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %52
  %63 = load i32, i32* %9, align 4
  %64 = and i32 %63, 52464
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %9, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %5, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @efar_set_piomode.timings, i64 0, i64 %69
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %70, i64 0, i64 0
  %72 = load i32, i32* %71, align 8
  %73 = shl i32 %72, 12
  %74 = load i32, i32* %5, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @efar_set_piomode.timings, i64 0, i64 %75
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %76, i64 0, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 8
  %80 = or i32 %73, %79
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  br label %123

83:                                               ; preds = %52
  %84 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %85 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = mul nsw i32 4, %86
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %9, align 4
  %89 = and i32 %88, 65295
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %11, align 4
  %91 = shl i32 %90, 4
  %92 = load i32, i32* %9, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %9, align 4
  %94 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %95 = call i32 @pci_read_config_byte(%struct.pci_dev* %94, i32 68, i32* %13)
  %96 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %97 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 15, i32 240
  %102 = load i32, i32* %13, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %5, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @efar_set_piomode.timings, i64 0, i64 %105
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %106, i64 0, i64 0
  %108 = load i32, i32* %107, align 8
  %109 = shl i32 %108, 2
  %110 = load i32, i32* %5, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @efar_set_piomode.timings, i64 0, i64 %111
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %112, i64 0, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %109, %114
  %116 = load i32, i32* %12, align 4
  %117 = shl i32 %115, %116
  %118 = load i32, i32* %13, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %13, align 4
  %120 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @pci_write_config_byte(%struct.pci_dev* %120, i32 68, i32 %121)
  br label %123

123:                                              ; preds = %83, %62
  %124 = load i32, i32* %9, align 4
  %125 = or i32 %124, 16384
  store i32 %125, i32* %9, align 4
  %126 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @pci_write_config_word(%struct.pci_dev* %126, i32 %127, i32 %128)
  %130 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %131 = call i32 @pci_read_config_byte(%struct.pci_dev* %130, i32 72, i32* %10)
  %132 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %133 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = mul nsw i32 2, %134
  %136 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %137 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %135, %138
  %140 = shl i32 1, %139
  %141 = xor i32 %140, -1
  %142 = load i32, i32* %10, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %10, align 4
  %144 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @pci_write_config_byte(%struct.pci_dev* %144, i32 72, i32 %145)
  %147 = load i64, i64* %8, align 8
  %148 = call i32 @spin_unlock_irqrestore(i32* @efar_lock, i64 %147)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i64 @ata_pio_need_iordy(%struct.ata_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
