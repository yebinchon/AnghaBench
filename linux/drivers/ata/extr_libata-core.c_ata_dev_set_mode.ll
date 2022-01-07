; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_dev_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_dev_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32, i64, i32*, i64, i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ata_eh_context, %struct.ata_port* }
%struct.ata_eh_context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ata_port = type { i32 }

@ATA_HORKAGE_NOSETXFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ATA_DFLAG_PIO = common dso_local global i32 0, align 4
@ATA_SHIFT_PIO = common dso_local global i64 0, align 8
@ATA_FLAG_SATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c" (SET_XFERMODE skipped)\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"NOSETXFER but PATA detected - can't skip SETXFER, might malfunction\0A\00", align 1
@AC_ERR_DEV = common dso_local global i32 0, align 4
@ATA_EHI_POST_SETMODE = common dso_local global i32 0, align 4
@ATA_DEV_UNKNOWN = common dso_local global i32 0, align 4
@XFER_PIO_2 = common dso_local global i64 0, align 8
@ATA_SHIFT_MWDMA = common dso_local global i64 0, align 8
@XFER_MW_DMA_0 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c" (device error ignored)\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"xfer_shift=%u, xfer_mode=0x%x\0A\00", align 1
@ATA_EHI_QUIET = common dso_local global i32 0, align 4
@ATA_EHI_DID_HARDRESET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"configured for %s%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"failed to set xfermode (err_mask=0x%x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*)* @ata_dev_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_dev_set_mode(%struct.ata_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_device*, align 8
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_eh_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %3, align 8
  %11 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %12 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %11, i32 0, i32 7
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load %struct.ata_port*, %struct.ata_port** %14, align 8
  store %struct.ata_port* %15, %struct.ata_port** %4, align 8
  %16 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %17 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %16, i32 0, i32 7
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.ata_eh_context* %19, %struct.ata_eh_context** %5, align 8
  %20 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %21 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ATA_HORKAGE_NOSETXFER, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %6, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %25 = load i32, i32* @ATA_DFLAG_PIO, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %28 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %32 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ATA_SHIFT_PIO, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %1
  %37 = load i32, i32* @ATA_DFLAG_PIO, align 4
  %38 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %39 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %36, %1
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %47 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ATA_FLAG_SATA, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %54 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i64 @ata_id_is_sata(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %68

59:                                               ; preds = %52, %45, %42
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %64 = call i32 @ata_dev_warn(%struct.ata_device* %63, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %59
  %66 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %67 = call i32 @ata_dev_set_xfermode(%struct.ata_device* %66)
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %65, %58
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @AC_ERR_DEV, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %214

75:                                               ; preds = %68
  %76 = load i32, i32* @ATA_EHI_POST_SETMODE, align 4
  %77 = load %struct.ata_eh_context*, %struct.ata_eh_context** %5, align 8
  %78 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %76
  store i32 %81, i32* %79, align 4
  %82 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %83 = load i32, i32* @ATA_DEV_UNKNOWN, align 4
  %84 = call i32 @ata_dev_revalidate(%struct.ata_device* %82, i32 %83, i32 0)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* @ATA_EHI_POST_SETMODE, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.ata_eh_context*, %struct.ata_eh_context** %5, align 8
  %88 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %86
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %75
  %95 = load i32, i32* %10, align 4
  store i32 %95, i32* %2, align 4
  br label %220

96:                                               ; preds = %75
  %97 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %98 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @ATA_SHIFT_PIO, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %136

102:                                              ; preds = %96
  %103 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %104 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = call i64 @ata_id_is_cfa(i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  store i32 1, i32* %8, align 4
  br label %109

109:                                              ; preds = %108, %102
  %110 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %111 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = call i64 @ata_id_major_version(i32* %112)
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %109
  %116 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %117 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @XFER_PIO_2, align 8
  %120 = icmp sle i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  store i32 1, i32* %8, align 4
  br label %122

122:                                              ; preds = %121, %115, %109
  %123 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %124 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @ata_id_has_iordy(i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %122
  %129 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %130 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @XFER_PIO_2, align 8
  %133 = icmp sle i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  store i32 1, i32* %8, align 4
  br label %135

135:                                              ; preds = %134, %128, %122
  br label %136

136:                                              ; preds = %135, %96
  %137 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %138 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @ATA_SHIFT_MWDMA, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %158

142:                                              ; preds = %136
  %143 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %144 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @XFER_MW_DMA_0, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %158

148:                                              ; preds = %142
  %149 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %150 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 63
  %153 = load i32, i32* %152, align 4
  %154 = ashr i32 %153, 8
  %155 = and i32 %154, 1
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %148
  store i32 1, i32* %8, align 4
  br label %158

158:                                              ; preds = %157, %148, %142, %136
  %159 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %160 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %163 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @ata_id_xfermask(i32* %164)
  %166 = call i64 @ata_xfer_mask2mode(i32 %165)
  %167 = icmp eq i64 %161, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %158
  store i32 1, i32* %8, align 4
  br label %169

169:                                              ; preds = %168, %158
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* @AC_ERR_DEV, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %169
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %174
  br label %214

178:                                              ; preds = %174
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %179

179:                                              ; preds = %178
  br label %180

180:                                              ; preds = %179, %169
  %181 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %182 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %185 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %184, i32 0, i32 5
  %186 = load i64, i64* %185, align 8
  %187 = trunc i64 %186 to i32
  %188 = call i32 @DPRINTK(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %183, i32 %187)
  %189 = load %struct.ata_eh_context*, %struct.ata_eh_context** %5, align 8
  %190 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @ATA_EHI_QUIET, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %180
  %197 = load %struct.ata_eh_context*, %struct.ata_eh_context** %5, align 8
  %198 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @ATA_EHI_DID_HARDRESET, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %196, %180
  %205 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %206 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %207 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %206, i32 0, i32 5
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @ata_xfer_mode2mask(i64 %208)
  %210 = call i32 @ata_mode_string(i32 %209)
  %211 = load i8*, i8** %7, align 8
  %212 = call i32 @ata_dev_info(%struct.ata_device* %205, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %210, i8* %211)
  br label %213

213:                                              ; preds = %204, %196
  store i32 0, i32* %2, align 4
  br label %220

214:                                              ; preds = %177, %74
  %215 = load %struct.ata_device*, %struct.ata_device** %3, align 8
  %216 = load i32, i32* %9, align 4
  %217 = call i32 @ata_dev_err(%struct.ata_device* %215, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %216)
  %218 = load i32, i32* @EIO, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %2, align 4
  br label %220

220:                                              ; preds = %214, %213, %94
  %221 = load i32, i32* %2, align 4
  ret i32 %221
}

declare dso_local i64 @ata_id_is_sata(i32*) #1

declare dso_local i32 @ata_dev_warn(%struct.ata_device*, i8*) #1

declare dso_local i32 @ata_dev_set_xfermode(%struct.ata_device*) #1

declare dso_local i32 @ata_dev_revalidate(%struct.ata_device*, i32, i32) #1

declare dso_local i64 @ata_id_is_cfa(i32*) #1

declare dso_local i64 @ata_id_major_version(i32*) #1

declare dso_local i32 @ata_id_has_iordy(i32*) #1

declare dso_local i64 @ata_xfer_mask2mode(i32) #1

declare dso_local i32 @ata_id_xfermask(i32*) #1

declare dso_local i32 @DPRINTK(i8*, i64, i32) #1

declare dso_local i32 @ata_dev_info(%struct.ata_device*, i8*, i32, i8*) #1

declare dso_local i32 @ata_mode_string(i32) #1

declare dso_local i32 @ata_xfer_mode2mask(i64) #1

declare dso_local i32 @ata_dev_err(%struct.ata_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
