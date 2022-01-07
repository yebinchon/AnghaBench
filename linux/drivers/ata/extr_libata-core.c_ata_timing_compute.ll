; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_timing_compute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_timing_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32*, i16 }
%struct.ata_timing = type { i32, i32, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ATA_ID_FIELD_VALID = common dso_local global i64 0, align 8
@XFER_PIO_0 = common dso_local global i16 0, align 2
@XFER_SW_DMA_0 = common dso_local global i16 0, align 2
@XFER_PIO_2 = common dso_local global i16 0, align 2
@ATA_ID_EIDE_PIO = common dso_local global i64 0, align 8
@XFER_PIO_4 = common dso_local global i16 0, align 2
@XFER_PIO_5 = common dso_local global i16 0, align 2
@ATA_ID_EIDE_PIO_IORDY = common dso_local global i64 0, align 8
@XFER_MW_DMA_0 = common dso_local global i16 0, align 2
@XFER_MW_DMA_2 = common dso_local global i16 0, align 2
@ATA_ID_EIDE_DMA_MIN = common dso_local global i64 0, align 8
@ATA_TIMING_CYCLE = common dso_local global i32 0, align 4
@ATA_TIMING_CYC8B = common dso_local global i32 0, align 4
@XFER_PIO_6 = common dso_local global i16 0, align 2
@ATA_TIMING_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_timing_compute(%struct.ata_device* %0, i16 zeroext %1, %struct.ata_timing* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_device*, align 8
  %8 = alloca i16, align 2
  %9 = alloca %struct.ata_timing*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ata_timing*, align 8
  %14 = alloca %struct.ata_timing, align 8
  store %struct.ata_device* %0, %struct.ata_device** %7, align 8
  store i16 %1, i16* %8, align 2
  store %struct.ata_timing* %2, %struct.ata_timing** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %16 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %12, align 8
  %18 = load i16, i16* %8, align 2
  %19 = call %struct.ata_timing* @ata_timing_find_mode(i16 zeroext %18)
  store %struct.ata_timing* %19, %struct.ata_timing** %13, align 8
  %20 = icmp ne %struct.ata_timing* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %241

24:                                               ; preds = %5
  %25 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %26 = load %struct.ata_timing*, %struct.ata_timing** %13, align 8
  %27 = call i32 @memcpy(%struct.ata_timing* %25, %struct.ata_timing* %26, i32 40)
  %28 = load i32*, i32** %12, align 8
  %29 = load i64, i64* @ATA_ID_FIELD_VALID, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 2
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %111

34:                                               ; preds = %24
  %35 = call i32 @memset(%struct.ata_timing* %14, i32 0, i32 40)
  %36 = load i16, i16* %8, align 2
  %37 = zext i16 %36 to i32
  %38 = load i16, i16* @XFER_PIO_0, align 2
  %39 = zext i16 %38 to i32
  %40 = icmp sge i32 %37, %39
  br i1 %40, label %41, label %85

41:                                               ; preds = %34
  %42 = load i16, i16* %8, align 2
  %43 = zext i16 %42 to i32
  %44 = load i16, i16* @XFER_SW_DMA_0, align 2
  %45 = zext i16 %44 to i32
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %85

47:                                               ; preds = %41
  %48 = load i16, i16* %8, align 2
  %49 = zext i16 %48 to i32
  %50 = load i16, i16* @XFER_PIO_2, align 2
  %51 = zext i16 %50 to i32
  %52 = icmp sle i32 %49, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i32*, i32** %12, align 8
  %55 = load i64, i64* @ATA_ID_EIDE_PIO, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %84

60:                                               ; preds = %47
  %61 = load i16, i16* %8, align 2
  %62 = zext i16 %61 to i32
  %63 = load i16, i16* @XFER_PIO_4, align 2
  %64 = zext i16 %63 to i32
  %65 = icmp sle i32 %62, %64
  br i1 %65, label %76, label %66

66:                                               ; preds = %60
  %67 = load i16, i16* %8, align 2
  %68 = zext i16 %67 to i32
  %69 = load i16, i16* @XFER_PIO_5, align 2
  %70 = zext i16 %69 to i32
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %66
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @ata_id_is_cfa(i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %72, %60
  %77 = load i32*, i32** %12, align 8
  %78 = load i64, i64* @ATA_ID_EIDE_PIO_IORDY, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  %82 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %76, %72, %66
  br label %84

84:                                               ; preds = %83, %53
  br label %104

85:                                               ; preds = %41, %34
  %86 = load i16, i16* %8, align 2
  %87 = zext i16 %86 to i32
  %88 = load i16, i16* @XFER_MW_DMA_0, align 2
  %89 = zext i16 %88 to i32
  %90 = icmp sge i32 %87, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %85
  %92 = load i16, i16* %8, align 2
  %93 = zext i16 %92 to i32
  %94 = load i16, i16* @XFER_MW_DMA_2, align 2
  %95 = zext i16 %94 to i32
  %96 = icmp sle i32 %93, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load i32*, i32** %12, align 8
  %99 = load i64, i64* @ATA_ID_EIDE_DMA_MIN, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 0
  store i32 %101, i32* %102, align 8
  br label %103

103:                                              ; preds = %97, %91, %85
  br label %104

104:                                              ; preds = %103, %84
  %105 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %106 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %107 = load i32, i32* @ATA_TIMING_CYCLE, align 4
  %108 = load i32, i32* @ATA_TIMING_CYC8B, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @ata_timing_merge(%struct.ata_timing* %14, %struct.ata_timing* %105, %struct.ata_timing* %106, i32 %109)
  br label %111

111:                                              ; preds = %104, %24
  %112 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %113 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @ata_timing_quantize(%struct.ata_timing* %112, %struct.ata_timing* %113, i32 %114, i32 %115)
  %117 = load i16, i16* %8, align 2
  %118 = zext i16 %117 to i32
  %119 = load i16, i16* @XFER_PIO_6, align 2
  %120 = zext i16 %119 to i32
  %121 = icmp sgt i32 %118, %120
  br i1 %121, label %122, label %134

122:                                              ; preds = %111
  %123 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %124 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %125 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %124, i32 0, i32 1
  %126 = load i16, i16* %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @ata_timing_compute(%struct.ata_device* %123, i16 zeroext %126, %struct.ata_timing* %14, i32 %127, i32 %128)
  %130 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %131 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %132 = load i32, i32* @ATA_TIMING_ALL, align 4
  %133 = call i32 @ata_timing_merge(%struct.ata_timing* %14, %struct.ata_timing* %130, %struct.ata_timing* %131, i32 %132)
  br label %134

134:                                              ; preds = %122, %111
  %135 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %136 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %139 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %137, %140
  %142 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %143 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = icmp slt i64 %141, %145
  br i1 %146, label %147, label %175

147:                                              ; preds = %134
  %148 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %149 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %153 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %156 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %154, %157
  %159 = sub nsw i64 %151, %158
  %160 = sdiv i64 %159, 2
  %161 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %162 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, %160
  store i64 %164, i64* %162, align 8
  %165 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %166 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %170 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = sub nsw i64 %168, %171
  %173 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %174 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %173, i32 0, i32 3
  store i64 %172, i64* %174, align 8
  br label %175

175:                                              ; preds = %147, %134
  %176 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %177 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %176, i32 0, i32 4
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %180 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %179, i32 0, i32 5
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %178, %181
  %183 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %184 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = icmp slt i64 %182, %186
  br i1 %187, label %188, label %216

188:                                              ; preds = %175
  %189 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %190 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %194 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %193, i32 0, i32 4
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %197 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %196, i32 0, i32 5
  %198 = load i64, i64* %197, align 8
  %199 = add nsw i64 %195, %198
  %200 = sub nsw i64 %192, %199
  %201 = sdiv i64 %200, 2
  %202 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %203 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %202, i32 0, i32 4
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %204, %201
  store i64 %205, i64* %203, align 8
  %206 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %207 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %211 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = sub nsw i64 %209, %212
  %214 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %215 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %214, i32 0, i32 5
  store i64 %213, i64* %215, align 8
  br label %216

216:                                              ; preds = %188, %175
  %217 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %218 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %217, i32 0, i32 4
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %221 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %220, i32 0, i32 5
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %219, %222
  %224 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %225 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = icmp sgt i64 %223, %227
  br i1 %228, label %229, label %240

229:                                              ; preds = %216
  %230 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %231 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %230, i32 0, i32 4
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %234 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %233, i32 0, i32 5
  %235 = load i64, i64* %234, align 8
  %236 = add nsw i64 %232, %235
  %237 = trunc i64 %236 to i32
  %238 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %239 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %238, i32 0, i32 0
  store i32 %237, i32* %239, align 8
  br label %240

240:                                              ; preds = %229, %216
  store i32 0, i32* %6, align 4
  br label %241

241:                                              ; preds = %240, %21
  %242 = load i32, i32* %6, align 4
  ret i32 %242
}

declare dso_local %struct.ata_timing* @ata_timing_find_mode(i16 zeroext) #1

declare dso_local i32 @memcpy(%struct.ata_timing*, %struct.ata_timing*, i32) #1

declare dso_local i32 @memset(%struct.ata_timing*, i32, i32) #1

declare dso_local i32 @ata_id_is_cfa(i32*) #1

declare dso_local i32 @ata_timing_merge(%struct.ata_timing*, %struct.ata_timing*, %struct.ata_timing*, i32) #1

declare dso_local i32 @ata_timing_quantize(%struct.ata_timing*, %struct.ata_timing*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
