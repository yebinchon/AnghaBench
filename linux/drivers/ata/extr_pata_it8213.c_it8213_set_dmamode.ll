; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_it8213.c_it8213_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_it8213.c_it8213_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i64, i32, i32 }
%struct.pci_dev = type { i32 }

@it8213_set_dmamode.timings = internal constant [5 x [2 x i64]] [[2 x i64] zeroinitializer, [2 x i64] zeroinitializer, [2 x i64] [i64 1, i64 0], [2 x i64] [i64 2, i64 1], [2 x i64] [i64 2, i64 3]], align 16
@XFER_UDMA_0 = common dso_local global i64 0, align 8
@XFER_MW_DMA_0 = common dso_local global i32 0, align 4
@it8213_set_dmamode.needed_pio = internal constant [3 x i32] [i32 130, i32 129, i32 128], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @it8213_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it8213_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %19 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %20 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.pci_dev* @to_pci_dev(i32 %23)
  store %struct.pci_dev* %24, %struct.pci_dev** %5, align 8
  %25 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %26 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  %28 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %29 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %8, align 4
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = call i32 @pci_read_config_word(%struct.pci_dev* %31, i32 64, i32* %6)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %34 = call i32 @pci_read_config_byte(%struct.pci_dev* %33, i32 72, i64* %9)
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @XFER_UDMA_0, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %97

38:                                               ; preds = %2
  %39 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %40 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @XFER_UDMA_0, align 8
  %43 = sub nsw i64 %41, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, 1
  %47 = sub i32 2, %46
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @min(i32 %47, i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ugt i32 %50, 4
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  store i32 4096, i32* %13, align 4
  br label %59

53:                                               ; preds = %38
  %54 = load i32, i32* %10, align 4
  %55 = icmp ugt i32 %54, 2
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 1, i32* %13, align 4
  br label %58

57:                                               ; preds = %53
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %57, %56
  br label %59

59:                                               ; preds = %58, %52
  %60 = load i32, i32* %8, align 4
  %61 = shl i32 1, %60
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %9, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %9, align 8
  %65 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %66 = call i32 @pci_read_config_word(%struct.pci_dev* %65, i32 74, i32* %11)
  %67 = load i32, i32* %8, align 4
  %68 = mul nsw i32 4, %67
  %69 = shl i32 3, %68
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %11, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %8, align 4
  %75 = mul nsw i32 4, %74
  %76 = shl i32 %73, %75
  %77 = load i32, i32* %11, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %11, align 4
  %79 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @pci_write_config_word(%struct.pci_dev* %79, i32 74, i32 %80)
  %82 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %83 = call i32 @pci_read_config_word(%struct.pci_dev* %82, i32 84, i32* %12)
  %84 = load i32, i32* %8, align 4
  %85 = shl i32 4097, %84
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %12, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %8, align 4
  %91 = shl i32 %89, %90
  %92 = load i32, i32* %12, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %12, align 4
  %94 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @pci_write_config_word(%struct.pci_dev* %94, i32 84, i32 %95)
  br label %193

97:                                               ; preds = %2
  %98 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %99 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @XFER_MW_DMA_0, align 4
  %102 = zext i32 %101 to i64
  %103 = sub nsw i64 %100, %102
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %15, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds [3 x i32], [3 x i32]* @it8213_set_dmamode.needed_pio, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = sub i32 %108, 130
  store i32 %109, i32* %18, align 4
  store i32 3, i32* %16, align 4
  %110 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %111 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %15, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds [3 x i32], [3 x i32]* @it8213_set_dmamode.needed_pio, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp ult i32 %112, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %97
  %119 = load i32, i32* %16, align 4
  %120 = or i32 %119, 8
  store i32 %120, i32* %16, align 4
  br label %121

121:                                              ; preds = %118, %97
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %160

124:                                              ; preds = %121
  %125 = load i32, i32* %6, align 4
  %126 = and i32 %125, 65359
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %16, align 4
  %128 = shl i32 %127, 4
  %129 = load i32, i32* %6, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %6, align 4
  %131 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %132 = call i32 @pci_read_config_byte(%struct.pci_dev* %131, i32 68, i64* %17)
  %133 = load i64, i64* %17, align 8
  %134 = and i64 %133, 240
  store i64 %134, i64* %17, align 8
  %135 = load i32, i32* %18, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* @it8213_set_dmamode.timings, i64 0, i64 %136
  %138 = getelementptr inbounds [2 x i64], [2 x i64]* %137, i64 0, i64 0
  %139 = load i64, i64* %138, align 16
  %140 = shl i64 %139, 2
  %141 = load i32, i32* %18, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* @it8213_set_dmamode.timings, i64 0, i64 %142
  %144 = getelementptr inbounds [2 x i64], [2 x i64]* %143, i64 0, i64 1
  %145 = load i64, i64* %144, align 8
  %146 = or i64 %140, %145
  %147 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %148 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i32 4, i32 0
  %153 = zext i32 %152 to i64
  %154 = shl i64 %146, %153
  %155 = load i64, i64* %17, align 8
  %156 = or i64 %155, %154
  store i64 %156, i64* %17, align 8
  %157 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %158 = load i64, i64* %17, align 8
  %159 = call i32 @pci_write_config_byte(%struct.pci_dev* %157, i32 68, i64 %158)
  br label %183

160:                                              ; preds = %121
  %161 = load i32, i32* %6, align 4
  %162 = and i32 %161, 52468
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %16, align 4
  %164 = load i32, i32* %6, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %18, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* @it8213_set_dmamode.timings, i64 0, i64 %167
  %169 = getelementptr inbounds [2 x i64], [2 x i64]* %168, i64 0, i64 0
  %170 = load i64, i64* %169, align 16
  %171 = shl i64 %170, 12
  %172 = load i32, i32* %18, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* @it8213_set_dmamode.timings, i64 0, i64 %173
  %175 = getelementptr inbounds [2 x i64], [2 x i64]* %174, i64 0, i64 1
  %176 = load i64, i64* %175, align 8
  %177 = shl i64 %176, 8
  %178 = or i64 %171, %177
  %179 = load i32, i32* %6, align 4
  %180 = sext i32 %179 to i64
  %181 = or i64 %180, %178
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %6, align 4
  br label %183

183:                                              ; preds = %160, %124
  %184 = load i32, i32* %8, align 4
  %185 = shl i32 1, %184
  %186 = xor i32 %185, -1
  %187 = sext i32 %186 to i64
  %188 = load i64, i64* %9, align 8
  %189 = and i64 %188, %187
  store i64 %189, i64* %9, align 8
  %190 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %191 = load i32, i32* %6, align 4
  %192 = call i32 @pci_write_config_word(%struct.pci_dev* %190, i32 64, i32 %191)
  br label %193

193:                                              ; preds = %183, %59
  %194 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %195 = load i64, i64* %9, align 8
  %196 = call i32 @pci_write_config_byte(%struct.pci_dev* %194, i32 72, i64 %195)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
