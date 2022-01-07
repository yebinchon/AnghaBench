; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_rdc.c_rdc_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_rdc.c_rdc_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i64, i32, i32 }
%struct.pci_dev = type { i32 }

@rdc_set_dmamode.timings = internal constant [5 x [2 x i64]] [[2 x i64] zeroinitializer, [2 x i64] zeroinitializer, [2 x i64] [i64 1, i64 0], [2 x i64] [i64 2, i64 1], [2 x i64] [i64 2, i64 3]], align 16
@rdc_lock = common dso_local global i32 0, align 4
@XFER_UDMA_0 = common dso_local global i64 0, align 8
@XFER_MW_DMA_0 = common dso_local global i32 0, align 4
@XFER_PIO_0 = common dso_local global i32 0, align 4
@XFER_PIO_3 = common dso_local global i32 0, align 4
@XFER_PIO_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @rdc_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdc_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca [3 x i32], align 4
  %21 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %22 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %23 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.pci_dev* @to_pci_dev(i32 %26)
  store %struct.pci_dev* %27, %struct.pci_dev** %5, align 8
  %28 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %29 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 66, i32 64
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %7, align 8
  %35 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %36 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %9, align 8
  %38 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %39 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %42 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 2, %43
  %45 = add nsw i32 %40, %44
  store i32 %45, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @spin_lock_irqsave(i32* @rdc_lock, i64 %46)
  %48 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %49 = load i64, i64* %7, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @pci_read_config_word(%struct.pci_dev* %48, i32 %50, i32* %8)
  %52 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %53 = call i32 @pci_read_config_byte(%struct.pci_dev* %52, i32 72, i64* %11)
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @XFER_UDMA_0, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %57, label %116

57:                                               ; preds = %2
  %58 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %59 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @XFER_UDMA_0, align 8
  %62 = sub nsw i64 %60, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = and i32 %64, 1
  %66 = sub i32 2, %65
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @min(i32 %66, i32 %67)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp eq i32 %69, 5
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  store i32 4096, i32* %15, align 4
  br label %78

72:                                               ; preds = %57
  %73 = load i32, i32* %12, align 4
  %74 = icmp ugt i32 %73, 2
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 1, i32* %15, align 4
  br label %77

76:                                               ; preds = %72
  store i32 0, i32* %15, align 4
  br label %77

77:                                               ; preds = %76, %75
  br label %78

78:                                               ; preds = %77, %71
  %79 = load i32, i32* %10, align 4
  %80 = shl i32 1, %79
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %11, align 8
  %83 = or i64 %82, %81
  store i64 %83, i64* %11, align 8
  %84 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %85 = call i32 @pci_read_config_word(%struct.pci_dev* %84, i32 74, i32* %13)
  %86 = load i32, i32* %10, align 4
  %87 = mul nsw i32 4, %86
  %88 = shl i32 3, %87
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %13, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %10, align 4
  %94 = mul nsw i32 4, %93
  %95 = shl i32 %92, %94
  %96 = load i32, i32* %13, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %13, align 4
  %98 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @pci_write_config_word(%struct.pci_dev* %98, i64 74, i32 %99)
  %101 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %102 = call i32 @pci_read_config_word(%struct.pci_dev* %101, i32 84, i32* %14)
  %103 = load i32, i32* %10, align 4
  %104 = shl i32 4097, %103
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %14, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %10, align 4
  %110 = shl i32 %108, %109
  %111 = load i32, i32* %14, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %14, align 4
  %113 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @pci_write_config_word(%struct.pci_dev* %113, i64 84, i32 %114)
  br label %229

116:                                              ; preds = %2
  %117 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %118 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* @XFER_MW_DMA_0, align 4
  %121 = zext i32 %120 to i64
  %122 = sub nsw i64 %119, %121
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %17, align 4
  %124 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 0
  %125 = load i32, i32* @XFER_PIO_0, align 4
  store i32 %125, i32* %124, align 4
  %126 = getelementptr inbounds i32, i32* %124, i64 1
  %127 = load i32, i32* @XFER_PIO_3, align 4
  store i32 %127, i32* %126, align 4
  %128 = getelementptr inbounds i32, i32* %126, i64 1
  %129 = load i32, i32* @XFER_PIO_4, align 4
  store i32 %129, i32* %128, align 4
  %130 = load i32, i32* %17, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @XFER_PIO_0, align 4
  %135 = sub i32 %133, %134
  store i32 %135, i32* %21, align 4
  store i32 3, i32* %18, align 4
  %136 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %137 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %17, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = icmp ult i32 %138, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %116
  %145 = load i32, i32* %18, align 4
  %146 = or i32 %145, 8
  store i32 %146, i32* %18, align 4
  br label %147

147:                                              ; preds = %144, %116
  %148 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %149 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %195

152:                                              ; preds = %147
  %153 = load i32, i32* %8, align 4
  %154 = and i32 %153, 65359
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %18, align 4
  %156 = shl i32 %155, 4
  %157 = load i32, i32* %8, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %8, align 4
  %159 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %160 = call i32 @pci_read_config_byte(%struct.pci_dev* %159, i32 68, i64* %19)
  %161 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %162 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i32 15, i32 240
  %167 = sext i32 %166 to i64
  %168 = load i64, i64* %19, align 8
  %169 = and i64 %168, %167
  store i64 %169, i64* %19, align 8
  %170 = load i32, i32* %21, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* @rdc_set_dmamode.timings, i64 0, i64 %171
  %173 = getelementptr inbounds [2 x i64], [2 x i64]* %172, i64 0, i64 0
  %174 = load i64, i64* %173, align 16
  %175 = shl i64 %174, 2
  %176 = load i32, i32* %21, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* @rdc_set_dmamode.timings, i64 0, i64 %177
  %179 = getelementptr inbounds [2 x i64], [2 x i64]* %178, i64 0, i64 1
  %180 = load i64, i64* %179, align 8
  %181 = or i64 %175, %180
  %182 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %183 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i32 4, i32 0
  %188 = zext i32 %187 to i64
  %189 = shl i64 %181, %188
  %190 = load i64, i64* %19, align 8
  %191 = or i64 %190, %189
  store i64 %191, i64* %19, align 8
  %192 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %193 = load i64, i64* %19, align 8
  %194 = call i32 @pci_write_config_byte(%struct.pci_dev* %192, i32 68, i64 %193)
  br label %218

195:                                              ; preds = %147
  %196 = load i32, i32* %8, align 4
  %197 = and i32 %196, 52468
  store i32 %197, i32* %8, align 4
  %198 = load i32, i32* %18, align 4
  %199 = load i32, i32* %8, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %8, align 4
  %201 = load i32, i32* %21, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* @rdc_set_dmamode.timings, i64 0, i64 %202
  %204 = getelementptr inbounds [2 x i64], [2 x i64]* %203, i64 0, i64 0
  %205 = load i64, i64* %204, align 16
  %206 = shl i64 %205, 12
  %207 = load i32, i32* %21, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* @rdc_set_dmamode.timings, i64 0, i64 %208
  %210 = getelementptr inbounds [2 x i64], [2 x i64]* %209, i64 0, i64 1
  %211 = load i64, i64* %210, align 8
  %212 = shl i64 %211, 8
  %213 = or i64 %206, %212
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = or i64 %215, %213
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %8, align 4
  br label %218

218:                                              ; preds = %195, %152
  %219 = load i32, i32* %10, align 4
  %220 = shl i32 1, %219
  %221 = xor i32 %220, -1
  %222 = sext i32 %221 to i64
  %223 = load i64, i64* %11, align 8
  %224 = and i64 %223, %222
  store i64 %224, i64* %11, align 8
  %225 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %226 = load i64, i64* %7, align 8
  %227 = load i32, i32* %8, align 4
  %228 = call i32 @pci_write_config_word(%struct.pci_dev* %225, i64 %226, i32 %227)
  br label %229

229:                                              ; preds = %218, %78
  %230 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %231 = load i64, i64* %11, align 8
  %232 = call i32 @pci_write_config_byte(%struct.pci_dev* %230, i32 72, i64 %231)
  %233 = load i64, i64* %6, align 8
  %234 = call i32 @spin_unlock_irqrestore(i32* @rdc_lock, i64 %233)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
