; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_promise.c_pdc_atapi_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_promise.c_pdc_atapi_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32*, %struct.TYPE_4__, %struct.TYPE_3__*, %struct.ata_port* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ata_port = type { i32, %struct.pdc_port_priv*, i32 }
%struct.pdc_port_priv = type { i32* }

@ATA_TFLAG_WRITE = common dso_local global i32 0, align 4
@PDC_PKT_READ = common dso_local global i32 0, align 4
@PDC_PKT_NODATA = common dso_local global i32 0, align 4
@PDC_DEVICE_SATA = common dso_local global i32 0, align 4
@ATA_REG_DEVICE = common dso_local global i32 0, align 4
@PDC_PKT_CLEAR_BSY = common dso_local global i32 0, align 4
@ATA_REG_NSECT = common dso_local global i32 0, align 4
@ATA_REG_LBAL = common dso_local global i32 0, align 4
@PDC_FEATURE_ATAPI_PIO = common dso_local global i32 0, align 4
@PDC_FEATURE_ATAPI_DMA = common dso_local global i32 0, align 4
@ATA_REG_FEATURE = common dso_local global i32 0, align 4
@ATA_REG_BYTEL = common dso_local global i32 0, align 4
@ATA_REG_BYTEH = common dso_local global i32 0, align 4
@ATA_REG_CMD = common dso_local global i32 0, align 4
@PDC_PKT_WAIT_DRDY = common dso_local global i32 0, align 4
@ATA_REG_DATA = common dso_local global i32 0, align 4
@PDC_LAST_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @pdc_atapi_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdc_atapi_pkt(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pdc_port_priv*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %12 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %13 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %12, i32 0, i32 3
  %14 = load %struct.ata_port*, %struct.ata_port** %13, align 8
  store %struct.ata_port* %14, %struct.ata_port** %3, align 8
  %15 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %16 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %4, align 4
  %18 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %19 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %24 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %6, align 8
  %26 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %27 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %26, i32 0, i32 1
  %28 = load %struct.pdc_port_priv*, %struct.pdc_port_priv** %27, align 8
  store %struct.pdc_port_priv* %28, %struct.pdc_port_priv** %7, align 8
  %29 = load %struct.pdc_port_priv*, %struct.pdc_port_priv** %7, align 8
  %30 = getelementptr inbounds %struct.pdc_port_priv, %struct.pdc_port_priv* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = bitcast i32* %32 to i64*
  store i64* %33, i64** %9, align 8
  %34 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %35 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %60 [
    i32 129, label %38
    i32 128, label %55
  ]

38:                                               ; preds = %1
  %39 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %40 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ATA_TFLAG_WRITE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @PDC_PKT_READ, align 4
  %48 = call i64 @cpu_to_le32(i32 %47)
  %49 = load i64*, i64** %9, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  store i64 %48, i64* %50, align 8
  br label %54

51:                                               ; preds = %38
  %52 = load i64*, i64** %9, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %46
  br label %62

55:                                               ; preds = %1
  %56 = load i32, i32* @PDC_PKT_NODATA, align 4
  %57 = call i64 @cpu_to_le32(i32 %56)
  %58 = load i64*, i64** %9, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  store i64 %57, i64* %59, align 8
  br label %62

60:                                               ; preds = %1
  %61 = call i32 (...) @BUG()
  br label %62

62:                                               ; preds = %60, %55, %54
  %63 = load i32, i32* %4, align 4
  %64 = call i64 @cpu_to_le32(i32 %63)
  %65 = load i64*, i64** %9, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 1
  store i64 %64, i64* %66, align 8
  %67 = load i64*, i64** %9, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 2
  store i64 0, i64* %68, align 8
  %69 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %70 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %69, i32 0, i32 0
  %71 = call i64 @sata_scr_valid(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i32, i32* @PDC_DEVICE_SATA, align 4
  store i32 %74, i32* %10, align 4
  br label %80

75:                                               ; preds = %62
  %76 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %77 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %75, %73
  %81 = load i32, i32* @ATA_REG_DEVICE, align 4
  %82 = or i32 32, %81
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 12
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 13
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @ATA_REG_DEVICE, align 4
  %89 = or i32 32, %88
  %90 = load i32, i32* @PDC_PKT_CLEAR_BSY, align 4
  %91 = or i32 %89, %90
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 14
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 15
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @ATA_REG_NSECT, align 4
  %98 = or i32 32, %97
  %99 = load i32*, i32** %8, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 16
  store i32 %98, i32* %100, align 4
  %101 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %102 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %8, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 17
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @ATA_REG_LBAL, align 4
  %108 = or i32 32, %107
  %109 = load i32*, i32** %8, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 18
  store i32 %108, i32* %110, align 4
  %111 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %112 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 19
  store i32 %114, i32* %116, align 4
  %117 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %118 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 129
  br i1 %121, label %122, label %124

122:                                              ; preds = %80
  %123 = load i32, i32* @PDC_FEATURE_ATAPI_PIO, align 4
  store i32 %123, i32* %11, align 4
  br label %126

124:                                              ; preds = %80
  %125 = load i32, i32* @PDC_FEATURE_ATAPI_DMA, align 4
  store i32 %125, i32* %11, align 4
  br label %126

126:                                              ; preds = %124, %122
  %127 = load i32, i32* @ATA_REG_FEATURE, align 4
  %128 = or i32 32, %127
  %129 = load i32*, i32** %8, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 20
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32*, i32** %8, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 21
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @ATA_REG_BYTEL, align 4
  %135 = or i32 32, %134
  %136 = load i32*, i32** %8, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 22
  store i32 %135, i32* %137, align 4
  %138 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %139 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %8, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 23
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* @ATA_REG_BYTEH, align 4
  %145 = or i32 32, %144
  %146 = load i32*, i32** %8, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 24
  store i32 %145, i32* %147, align 4
  %148 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %149 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 8
  %152 = load i32*, i32** %8, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 25
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @ATA_REG_CMD, align 4
  %155 = or i32 32, %154
  %156 = load i32*, i32** %8, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 26
  store i32 %155, i32* %157, align 4
  %158 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %159 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 7
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %8, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 27
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* @ATA_REG_DEVICE, align 4
  %165 = or i32 32, %164
  %166 = load i32, i32* @PDC_PKT_WAIT_DRDY, align 4
  %167 = or i32 %165, %166
  %168 = load i32*, i32** %8, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 28
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %10, align 4
  %171 = load i32*, i32** %8, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 29
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* %5, align 4
  %174 = and i32 %173, -31
  %175 = call i32 @BUG_ON(i32 %174)
  %176 = load i32, i32* %5, align 4
  %177 = lshr i32 %176, 1
  %178 = and i32 %177, 7
  %179 = shl i32 %178, 5
  %180 = load i32, i32* @ATA_REG_DATA, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @PDC_LAST_REG, align 4
  %183 = or i32 %181, %182
  %184 = load i32*, i32** %8, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 30
  store i32 %183, i32* %185, align 4
  %186 = load i32*, i32** %8, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 31
  %188 = load i32*, i32** %6, align 8
  %189 = load i32, i32* %5, align 4
  %190 = call i32 @memcpy(i32* %187, i32* %188, i32 %189)
  ret void
}

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @sata_scr_valid(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
