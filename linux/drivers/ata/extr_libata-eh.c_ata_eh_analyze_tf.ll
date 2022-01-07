; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-eh.c_ata_eh_analyze_tf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-eh.c_ata_eh_analyze_tf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_9__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ata_taskfile = type { i32, i32 }

@ATA_BUSY = common dso_local global i32 0, align 4
@ATA_DRQ = common dso_local global i32 0, align 4
@ATA_DRDY = common dso_local global i32 0, align 4
@AC_ERR_HSM = common dso_local global i32 0, align 4
@ATA_EH_RESET = common dso_local global i32 0, align 4
@ATA_ERR = common dso_local global i32 0, align 4
@ATA_DF = common dso_local global i32 0, align 4
@AC_ERR_DEV = common dso_local global i32 0, align 4
@ATA_SENSE = common dso_local global i32 0, align 4
@ATA_ICRC = common dso_local global i32 0, align 4
@AC_ERR_ATA_BUS = common dso_local global i32 0, align 4
@ATA_UNC = common dso_local global i32 0, align 4
@ATA_AMNF = common dso_local global i32 0, align 4
@AC_ERR_MEDIA = common dso_local global i32 0, align 4
@ATA_IDNF = common dso_local global i32 0, align 4
@AC_ERR_INVALID = common dso_local global i32 0, align 4
@ATA_PFLAG_FROZEN = common dso_local global i32 0, align 4
@ATA_QCFLAG_SENSE_VALID = common dso_local global i32 0, align 4
@NEEDS_RETRY = common dso_local global i32 0, align 4
@ADD_TO_MLQUEUE = common dso_local global i32 0, align 4
@ATA_QCFLAG_RETRY = common dso_local global i32 0, align 4
@AC_ERR_OTHER = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@AC_ERR_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_queued_cmd*, %struct.ata_taskfile*)* @ata_eh_analyze_tf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_eh_analyze_tf(%struct.ata_queued_cmd* %0, %struct.ata_taskfile* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_queued_cmd*, align 8
  %5 = alloca %struct.ata_taskfile*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %4, align 8
  store %struct.ata_taskfile* %1, %struct.ata_taskfile** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %12 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.ata_taskfile*, %struct.ata_taskfile** %5, align 8
  %15 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @ATA_BUSY, align 4
  %19 = load i32, i32* @ATA_DRQ, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @ATA_DRDY, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %17, %22
  %24 = load i32, i32* @ATA_DRDY, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load i32, i32* @AC_ERR_HSM, align 4
  %28 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %29 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* @ATA_EH_RESET, align 4
  store i32 %32, i32* %3, align 4
  br label %210

33:                                               ; preds = %2
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @ATA_ERR, align 4
  %36 = load i32, i32* @ATA_DF, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %33
  %41 = load i32, i32* @AC_ERR_DEV, align 4
  %42 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %43 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @ATA_DF, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %40
  %51 = load i32, i32* @ATA_SENSE, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %50, %40
  br label %57

56:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %210

57:                                               ; preds = %55
  %58 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %59 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %58, i32 0, i32 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %151 [
    i32 128, label %63
    i32 130, label %75
    i32 129, label %111
  ]

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @ATA_SENSE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %70 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %71 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %70, i32 0, i32 2
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = call i32 @ata_eh_request_sense(%struct.ata_queued_cmd* %69, %struct.TYPE_8__* %72)
  br label %74

74:                                               ; preds = %68, %63
  br label %75

75:                                               ; preds = %57, %74
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @ATA_ICRC, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load i32, i32* @AC_ERR_ATA_BUS, align 4
  %82 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %83 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %80, %75
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @ATA_UNC, align 4
  %89 = load i32, i32* @ATA_AMNF, align 4
  %90 = or i32 %88, %89
  %91 = and i32 %87, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load i32, i32* @AC_ERR_MEDIA, align 4
  %95 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %96 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %93, %86
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @ATA_IDNF, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load i32, i32* @AC_ERR_INVALID, align 4
  %106 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %107 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %104, %99
  br label %151

111:                                              ; preds = %57
  %112 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %113 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %112, i32 0, i32 5
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ATA_PFLAG_FROZEN, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %150, label %120

120:                                              ; preds = %111
  %121 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %122 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %121, i32 0, i32 4
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  %124 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %125 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %124, i32 0, i32 2
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %130 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = ashr i32 %132, 4
  %134 = call i32 @atapi_eh_request_sense(%struct.TYPE_9__* %123, i32 %128, i32 %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %120
  %138 = load i32, i32* @ATA_QCFLAG_SENSE_VALID, align 4
  %139 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %140 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %149

143:                                              ; preds = %120
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %146 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %143, %137
  br label %150

150:                                              ; preds = %149, %111
  br label %151

151:                                              ; preds = %150, %57, %110
  %152 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %153 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @ATA_QCFLAG_SENSE_VALID, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %193

158:                                              ; preds = %151
  %159 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %160 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %159, i32 0, i32 2
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = call i32 @scsi_check_sense(%struct.TYPE_8__* %161)
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* @NEEDS_RETRY, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %170, label %166

166:                                              ; preds = %158
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %181

170:                                              ; preds = %166, %158
  %171 = load i32, i32* @ATA_QCFLAG_RETRY, align 4
  %172 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %173 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 4
  %176 = load i32, i32* @AC_ERR_OTHER, align 4
  %177 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %178 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 8
  br label %192

181:                                              ; preds = %166
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* @SUCCESS, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %181
  %186 = load i32, i32* @AC_ERR_HSM, align 4
  %187 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %188 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 8
  br label %191

191:                                              ; preds = %185, %181
  br label %192

192:                                              ; preds = %191, %170
  br label %193

193:                                              ; preds = %192, %151
  %194 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %195 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @AC_ERR_HSM, align 4
  %198 = load i32, i32* @AC_ERR_TIMEOUT, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @AC_ERR_ATA_BUS, align 4
  %201 = or i32 %199, %200
  %202 = and i32 %196, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %193
  %205 = load i32, i32* @ATA_EH_RESET, align 4
  %206 = load i32, i32* %7, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %7, align 4
  br label %208

208:                                              ; preds = %204, %193
  %209 = load i32, i32* %7, align 4
  store i32 %209, i32* %3, align 4
  br label %210

210:                                              ; preds = %208, %56, %26
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i32 @ata_eh_request_sense(%struct.ata_queued_cmd*, %struct.TYPE_8__*) #1

declare dso_local i32 @atapi_eh_request_sense(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @scsi_check_sense(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
