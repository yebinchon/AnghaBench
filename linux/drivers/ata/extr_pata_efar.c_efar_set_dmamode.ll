; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_efar.c_efar_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_efar.c_efar_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i64, i32, i32 }
%struct.pci_dev = type { i32 }

@efar_set_dmamode.timings = internal constant [5 x [2 x i64]] [[2 x i64] zeroinitializer, [2 x i64] zeroinitializer, [2 x i64] [i64 1, i64 0], [2 x i64] [i64 2, i64 1], [2 x i64] [i64 2, i64 3]], align 16
@efar_lock = common dso_local global i32 0, align 4
@XFER_UDMA_0 = common dso_local global i64 0, align 8
@XFER_MW_DMA_0 = common dso_local global i32 0, align 4
@XFER_PIO_0 = common dso_local global i32 0, align 4
@XFER_PIO_3 = common dso_local global i32 0, align 4
@XFER_PIO_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @efar_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efar_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca [3 x i32], align 4
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
  %25 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %26 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 66, i32 64
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %6, align 8
  %32 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %33 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %8, align 8
  %35 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %36 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %39 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 2, %40
  %42 = add nsw i32 %37, %41
  store i32 %42, i32* %9, align 4
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @spin_lock_irqsave(i32* @efar_lock, i64 %43)
  %45 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @pci_read_config_word(%struct.pci_dev* %45, i32 %47, i32* %7)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %50 = call i32 @pci_read_config_byte(%struct.pci_dev* %49, i32 72, i64* %11)
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @XFER_UDMA_0, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %83

54:                                               ; preds = %2
  %55 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %56 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @XFER_UDMA_0, align 8
  %59 = sub nsw i64 %57, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %9, align 4
  %62 = shl i32 1, %61
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %11, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %11, align 8
  %66 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %67 = call i32 @pci_read_config_word(%struct.pci_dev* %66, i32 74, i32* %13)
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 4, %68
  %70 = shl i32 7, %69
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %13, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %9, align 4
  %76 = mul nsw i32 4, %75
  %77 = shl i32 %74, %76
  %78 = load i32, i32* %13, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %13, align 4
  %80 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @pci_write_config_word(%struct.pci_dev* %80, i64 74, i32 %81)
  br label %196

83:                                               ; preds = %2
  %84 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %85 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @XFER_MW_DMA_0, align 4
  %88 = zext i32 %87 to i64
  %89 = sub nsw i64 %86, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %14, align 4
  %91 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %92 = load i32, i32* @XFER_PIO_0, align 4
  store i32 %92, i32* %91, align 4
  %93 = getelementptr inbounds i32, i32* %91, i64 1
  %94 = load i32, i32* @XFER_PIO_3, align 4
  store i32 %94, i32* %93, align 4
  %95 = getelementptr inbounds i32, i32* %93, i64 1
  %96 = load i32, i32* @XFER_PIO_4, align 4
  store i32 %96, i32* %95, align 4
  %97 = load i32, i32* %14, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @XFER_PIO_0, align 4
  %102 = sub i32 %100, %101
  store i32 %102, i32* %18, align 4
  store i32 3, i32* %15, align 4
  %103 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %104 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %14, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp ult i32 %105, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %83
  %112 = load i32, i32* %15, align 4
  %113 = or i32 %112, 8
  store i32 %113, i32* %15, align 4
  br label %114

114:                                              ; preds = %111, %83
  %115 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %116 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %162

119:                                              ; preds = %114
  %120 = load i32, i32* %7, align 4
  %121 = and i32 %120, 65359
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %15, align 4
  %123 = shl i32 %122, 4
  %124 = load i32, i32* %7, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %7, align 4
  %126 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %127 = call i32 @pci_read_config_byte(%struct.pci_dev* %126, i32 68, i64* %16)
  %128 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %129 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 15, i32 240
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* %16, align 8
  %136 = and i64 %135, %134
  store i64 %136, i64* %16, align 8
  %137 = load i32, i32* %18, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* @efar_set_dmamode.timings, i64 0, i64 %138
  %140 = getelementptr inbounds [2 x i64], [2 x i64]* %139, i64 0, i64 0
  %141 = load i64, i64* %140, align 16
  %142 = shl i64 %141, 2
  %143 = load i32, i32* %18, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* @efar_set_dmamode.timings, i64 0, i64 %144
  %146 = getelementptr inbounds [2 x i64], [2 x i64]* %145, i64 0, i64 1
  %147 = load i64, i64* %146, align 8
  %148 = or i64 %142, %147
  %149 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %150 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 4, i32 0
  %155 = zext i32 %154 to i64
  %156 = shl i64 %148, %155
  %157 = load i64, i64* %16, align 8
  %158 = or i64 %157, %156
  store i64 %158, i64* %16, align 8
  %159 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %160 = load i64, i64* %16, align 8
  %161 = call i32 @pci_write_config_byte(%struct.pci_dev* %159, i32 68, i64 %160)
  br label %185

162:                                              ; preds = %114
  %163 = load i32, i32* %7, align 4
  %164 = and i32 %163, 52468
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %7, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* %18, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* @efar_set_dmamode.timings, i64 0, i64 %169
  %171 = getelementptr inbounds [2 x i64], [2 x i64]* %170, i64 0, i64 0
  %172 = load i64, i64* %171, align 16
  %173 = shl i64 %172, 12
  %174 = load i32, i32* %18, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* @efar_set_dmamode.timings, i64 0, i64 %175
  %177 = getelementptr inbounds [2 x i64], [2 x i64]* %176, i64 0, i64 1
  %178 = load i64, i64* %177, align 8
  %179 = shl i64 %178, 8
  %180 = or i64 %173, %179
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = or i64 %182, %180
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %7, align 4
  br label %185

185:                                              ; preds = %162, %119
  %186 = load i32, i32* %9, align 4
  %187 = shl i32 1, %186
  %188 = xor i32 %187, -1
  %189 = sext i32 %188 to i64
  %190 = load i64, i64* %11, align 8
  %191 = and i64 %190, %189
  store i64 %191, i64* %11, align 8
  %192 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %193 = load i64, i64* %6, align 8
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @pci_write_config_word(%struct.pci_dev* %192, i64 %193, i32 %194)
  br label %196

196:                                              ; preds = %185, %54
  %197 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %198 = load i64, i64* %11, align 8
  %199 = call i32 @pci_write_config_byte(%struct.pci_dev* %197, i32 72, i64 %198)
  %200 = load i64, i64* %10, align 8
  %201 = call i32 @spin_unlock_irqrestore(i32* @efar_lock, i64 %200)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
