; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ata_piix.c_piix_set_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ata_piix.c_piix_set_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i64, i64 }
%struct.pci_dev = type { i32 }

@piix_set_timings.timings = internal constant [5 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] [i32 1, i32 0], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 2, i32 3]], align 16
@ATA_DEV_ATA = common dso_local global i64 0, align 8
@XFER_PIO_0 = common dso_local global i64 0, align 8
@piix_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*, i32)* @piix_set_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @piix_set_timings(%struct.ata_port* %0, %struct.ata_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store %struct.ata_device* %1, %struct.ata_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %17 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.pci_dev* @to_pci_dev(i32 %20)
  store %struct.pci_dev* %21, %struct.pci_dev** %7, align 8
  %22 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %23 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %28 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 66, i32 64
  store i32 %32, i32* %10, align 4
  store i32 68, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp sge i32 %33, 2
  br i1 %34, label %35, label %38

35:                                               ; preds = %3
  %36 = load i32, i32* %15, align 4
  %37 = or i32 %36, 1
  store i32 %37, i32* %15, align 4
  br label %38

38:                                               ; preds = %35, %3
  %39 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %40 = call i64 @ata_pio_need_iordy(%struct.ata_device* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* %15, align 4
  %44 = or i32 %43, 2
  store i32 %44, i32* %15, align 4
  br label %45

45:                                               ; preds = %42, %38
  %46 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %47 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ATA_DEV_ATA, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* %15, align 4
  %53 = or i32 %52, 4
  store i32 %53, i32* %15, align 4
  br label %54

54:                                               ; preds = %51, %45
  %55 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %56 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @XFER_PIO_0, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = icmp slt i64 %57, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load i32, i32* %15, align 4
  %65 = or i32 %64, 8
  store i32 %65, i32* %15, align 4
  br label %66

66:                                               ; preds = %63, %54
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @spin_lock_irqsave(i32* @piix_lock, i64 %67)
  %69 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @pci_read_config_word(%struct.pci_dev* %69, i32 %70, i32* %12)
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %113

74:                                               ; preds = %66
  %75 = load i32, i32* %12, align 4
  %76 = and i32 %75, 65295
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %15, align 4
  %78 = shl i32 %77, 4
  %79 = load i32, i32* %12, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %12, align 4
  %81 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @pci_read_config_byte(%struct.pci_dev* %81, i32 %82, i32* %13)
  %84 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %85 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 15, i32 240
  %90 = load i32, i32* %13, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @piix_set_timings.timings, i64 0, i64 %93
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %94, i64 0, i64 0
  %96 = load i32, i32* %95, align 8
  %97 = shl i32 %96, 2
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @piix_set_timings.timings, i64 0, i64 %99
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %100, i64 0, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %97, %102
  %104 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %105 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 4, i32 0
  %110 = shl i32 %103, %109
  %111 = load i32, i32* %13, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %13, align 4
  br label %134

113:                                              ; preds = %66
  %114 = load i32, i32* %12, align 4
  %115 = and i32 %114, 52464
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %12, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @piix_set_timings.timings, i64 0, i64 %120
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %121, i64 0, i64 0
  %123 = load i32, i32* %122, align 8
  %124 = shl i32 %123, 12
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [5 x [2 x i32]], [5 x [2 x i32]]* @piix_set_timings.timings, i64 0, i64 %126
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %127, i64 0, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = shl i32 %129, 8
  %131 = or i32 %124, %130
  %132 = load i32, i32* %12, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %12, align 4
  br label %134

134:                                              ; preds = %113, %74
  %135 = load i32, i32* %12, align 4
  %136 = or i32 %135, 16384
  store i32 %136, i32* %12, align 4
  %137 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @pci_write_config_word(%struct.pci_dev* %137, i32 %138, i32 %139)
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %134
  %144 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @pci_write_config_byte(%struct.pci_dev* %144, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %143, %134
  %149 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %150 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %171

153:                                              ; preds = %148
  %154 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %155 = call i32 @pci_read_config_byte(%struct.pci_dev* %154, i32 72, i32* %14)
  %156 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %157 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = mul nsw i32 2, %158
  %160 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %161 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %159, %162
  %164 = shl i32 1, %163
  %165 = xor i32 %164, -1
  %166 = load i32, i32* %14, align 4
  %167 = and i32 %166, %165
  store i32 %167, i32* %14, align 4
  %168 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %169 = load i32, i32* %14, align 4
  %170 = call i32 @pci_write_config_byte(%struct.pci_dev* %168, i32 72, i32 %169)
  br label %171

171:                                              ; preds = %153, %148
  %172 = load i64, i64* %8, align 8
  %173 = call i32 @spin_unlock_irqrestore(i32* @piix_lock, i64 %172)
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
