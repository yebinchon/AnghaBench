; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_rdc.c_rdc_set_piomode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_rdc.c_rdc_set_piomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i32, i64 }
%struct.pci_dev = type { i32 }

@XFER_PIO_0 = common dso_local global i32 0, align 4
@rdc_set_piomode.timings = internal constant [5 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] [i32 1, i32 0], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 2, i32 3]], align 16
@ATA_DEV_ATA = common dso_local global i64 0, align 8
@rdc_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @rdc_set_piomode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdc_set_piomode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %15 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %16 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @XFER_PIO_0, align 4
  %19 = sub i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %21 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.pci_dev* @to_pci_dev(i32 %24)
  store %struct.pci_dev* %25, %struct.pci_dev** %6, align 8
  %26 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %27 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %32 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 66, i32 64
  store i32 %36, i32* %9, align 4
  store i32 68, i32* %10, align 4
  store i32 0, i32* %14, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp uge i32 %37, 2
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load i32, i32* %14, align 4
  %41 = or i32 %40, 1
  store i32 %41, i32* %14, align 4
  br label %42

42:                                               ; preds = %39, %2
  %43 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %44 = call i64 @ata_pio_need_iordy(%struct.ata_device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* %14, align 4
  %48 = or i32 %47, 2
  store i32 %48, i32* %14, align 4
  br label %49

49:                                               ; preds = %46, %42
  %50 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %51 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ATA_DEV_ATA, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* %14, align 4
  %57 = or i32 %56, 4
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %55, %49
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @spin_lock_irqsave(i32* @rdc_lock, i64 %59)
  %61 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @pci_read_config_word(%struct.pci_dev* %61, i32 %62, i32* %11)
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %107

66:                                               ; preds = %58
  %67 = load i32, i32* %11, align 4
  %68 = and i32 %67, 65295
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = or i32 %69, 16384
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %14, align 4
  %72 = shl i32 %71, 4
  %73 = load i32, i32* %11, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %11, align 4
  %75 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @pci_read_config_byte(%struct.pci_dev* %75, i32 %76, i32* %12)
  %78 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %79 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 15, i32 240
  %84 = load i32, i32* %12, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %5, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @rdc_set_piomode.timings, i64 0, i64 %87
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %88, i64 0, i64 0
  %90 = load i32, i32* %89, align 8
  %91 = shl i32 %90, 2
  %92 = load i32, i32* %5, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @rdc_set_piomode.timings, i64 0, i64 %93
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %94, i64 0, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %91, %96
  %98 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %99 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 4, i32 0
  %104 = shl i32 %97, %103
  %105 = load i32, i32* %12, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %12, align 4
  br label %128

107:                                              ; preds = %58
  %108 = load i32, i32* %11, align 4
  %109 = and i32 %108, 52464
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %11, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %5, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @rdc_set_piomode.timings, i64 0, i64 %114
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %115, i64 0, i64 0
  %117 = load i32, i32* %116, align 8
  %118 = shl i32 %117, 12
  %119 = load i32, i32* %5, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @rdc_set_piomode.timings, i64 0, i64 %120
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %121, i64 0, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 %123, 8
  %125 = or i32 %118, %124
  %126 = load i32, i32* %11, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %11, align 4
  br label %128

128:                                              ; preds = %107, %66
  %129 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @pci_write_config_word(%struct.pci_dev* %129, i32 %130, i32 %131)
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %128
  %136 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %12, align 4
  %139 = call i32 @pci_write_config_byte(%struct.pci_dev* %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %135, %128
  %141 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %142 = call i32 @pci_read_config_byte(%struct.pci_dev* %141, i32 72, i32* %13)
  %143 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %144 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = mul nsw i32 2, %145
  %147 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %148 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %146, %149
  %151 = shl i32 1, %150
  %152 = xor i32 %151, -1
  %153 = load i32, i32* %13, align 4
  %154 = and i32 %153, %152
  store i32 %154, i32* %13, align 4
  %155 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %156 = load i32, i32* %13, align 4
  %157 = call i32 @pci_write_config_byte(%struct.pci_dev* %155, i32 72, i32 %156)
  %158 = load i64, i64* %7, align 8
  %159 = call i32 @spin_unlock_irqrestore(i32* @rdc_lock, i64 %158)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i64 @ata_pio_need_iordy(%struct.ata_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
