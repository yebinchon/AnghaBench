; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_host_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_host_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32, i32, %struct.ata_port**, i32, i32 }
%struct.ata_port = type { i32, i64, i32, %struct.TYPE_3__, i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.scsi_host_template = type { i32 }

@ATA_MAX_QUEUE = common dso_local global i32 0, align 4
@ATA_HOST_STARTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"BUG: trying to register unstarted host\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ata_print_id = common dso_local global i32 0, align 4
@ATA_CBL_NONE = common dso_local global i64 0, align 8
@ATA_FLAG_SATA = common dso_local global i32 0, align 4
@ATA_CBL_SATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"%cATA max %s %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DUMMY\0A\00", align 1
@async_port_probe = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_host_register(%struct.ata_host* %0, %struct.scsi_host_template* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_host*, align 8
  %5 = alloca %struct.scsi_host_template*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_port*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ata_port*, align 8
  store %struct.ata_host* %0, %struct.ata_host** %4, align 8
  store %struct.scsi_host_template* %1, %struct.scsi_host_template** %5, align 8
  %11 = load %struct.scsi_host_template*, %struct.scsi_host_template** %5, align 8
  %12 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ATA_MAX_QUEUE, align 4
  %15 = call i32 @clamp(i32 %13, i32 1, i32 %14)
  %16 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %17 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %19 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ATA_HOST_STARTED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %2
  %25 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %26 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @WARN_ON(i32 1)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %245

32:                                               ; preds = %2
  %33 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %34 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %54, %32
  %37 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %38 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %37, i32 0, i32 2
  %39 = load %struct.ata_port**, %struct.ata_port*** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %39, i64 %41
  %43 = load %struct.ata_port*, %struct.ata_port** %42, align 8
  %44 = icmp ne %struct.ata_port* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %36
  %46 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %47 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %46, i32 0, i32 2
  %48 = load %struct.ata_port**, %struct.ata_port*** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %48, i64 %50
  %52 = load %struct.ata_port*, %struct.ata_port** %51, align 8
  %53 = call i32 @kfree(%struct.ata_port* %52)
  br label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %36

57:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %84, %57
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %61 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %87

64:                                               ; preds = %58
  %65 = call i32 @atomic_inc_return(i32* @ata_print_id)
  %66 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %67 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %66, i32 0, i32 2
  %68 = load %struct.ata_port**, %struct.ata_port*** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %68, i64 %70
  %72 = load %struct.ata_port*, %struct.ata_port** %71, align 8
  %73 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %72, i32 0, i32 8
  store i32 %65, i32* %73, align 8
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  %76 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %77 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %76, i32 0, i32 2
  %78 = load %struct.ata_port**, %struct.ata_port*** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %78, i64 %80
  %82 = load %struct.ata_port*, %struct.ata_port** %81, align 8
  %83 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %82, i32 0, i32 0
  store i32 %75, i32* %83, align 8
  br label %84

84:                                               ; preds = %64
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %58

87:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %110, %87
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %91 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %113

94:                                               ; preds = %88
  %95 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %96 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %99 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %98, i32 0, i32 2
  %100 = load %struct.ata_port**, %struct.ata_port*** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %100, i64 %102
  %104 = load %struct.ata_port*, %struct.ata_port** %103, align 8
  %105 = call i32 @ata_tport_add(i32 %97, %struct.ata_port* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %94
  br label %229

109:                                              ; preds = %94
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %88

113:                                              ; preds = %88
  %114 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %115 = load %struct.scsi_host_template*, %struct.scsi_host_template** %5, align 8
  %116 = call i32 @ata_scsi_add_hosts(%struct.ata_host* %114, %struct.scsi_host_template* %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %229

120:                                              ; preds = %113
  store i32 0, i32* %6, align 4
  br label %121

121:                                              ; preds = %204, %120
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %124 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %207

127:                                              ; preds = %121
  %128 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %129 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %128, i32 0, i32 2
  %130 = load %struct.ata_port**, %struct.ata_port*** %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %130, i64 %132
  %134 = load %struct.ata_port*, %struct.ata_port** %133, align 8
  store %struct.ata_port* %134, %struct.ata_port** %8, align 8
  %135 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %136 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @ATA_CBL_NONE, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %127
  %141 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %142 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @ATA_FLAG_SATA, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %140
  %148 = load i64, i64* @ATA_CBL_SATA, align 8
  %149 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %150 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %149, i32 0, i32 1
  store i64 %148, i64* %150, align 8
  br label %151

151:                                              ; preds = %147, %140, %127
  %152 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %153 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %152, i32 0, i32 3
  %154 = call i32 @sata_link_init_spd(%struct.TYPE_3__* %153)
  %155 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %156 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %155, i32 0, i32 7
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = icmp ne %struct.TYPE_3__* %157, null
  br i1 %158, label %159, label %164

159:                                              ; preds = %151
  %160 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %161 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %160, i32 0, i32 7
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %161, align 8
  %163 = call i32 @sata_link_init_spd(%struct.TYPE_3__* %162)
  br label %164

164:                                              ; preds = %159, %151
  %165 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %166 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %169 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %172 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = call i64 @ata_pack_xfermask(i32 %167, i32 %170, i32 %173)
  store i64 %174, i64* %9, align 8
  %175 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %176 = call i32 @ata_port_is_dummy(%struct.ata_port* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %200, label %178

178:                                              ; preds = %164
  %179 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %180 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %181 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @ATA_FLAG_SATA, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i32 83, i32 80
  %188 = load i64, i64* %9, align 8
  %189 = call i32 @ata_mode_string(i64 %188)
  %190 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %191 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (%struct.ata_port*, i8*, ...) @ata_port_info(%struct.ata_port* %179, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %187, i32 %189, i32 %194)
  %196 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %197 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 0
  %199 = call i32 @ata_ehi_clear_desc(%struct.TYPE_4__* %198)
  br label %203

200:                                              ; preds = %164
  %201 = load %struct.ata_port*, %struct.ata_port** %8, align 8
  %202 = call i32 (%struct.ata_port*, i8*, ...) @ata_port_info(%struct.ata_port* %201, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %203

203:                                              ; preds = %200, %178
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %6, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %6, align 4
  br label %121

207:                                              ; preds = %121
  store i32 0, i32* %6, align 4
  br label %208

208:                                              ; preds = %225, %207
  %209 = load i32, i32* %6, align 4
  %210 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %211 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = icmp slt i32 %209, %212
  br i1 %213, label %214, label %228

214:                                              ; preds = %208
  %215 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %216 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %215, i32 0, i32 2
  %217 = load %struct.ata_port**, %struct.ata_port*** %216, align 8
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %217, i64 %219
  %221 = load %struct.ata_port*, %struct.ata_port** %220, align 8
  store %struct.ata_port* %221, %struct.ata_port** %10, align 8
  %222 = load i32, i32* @async_port_probe, align 4
  %223 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %224 = call i32 @async_schedule(i32 %222, %struct.ata_port* %223)
  br label %225

225:                                              ; preds = %214
  %226 = load i32, i32* %6, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %6, align 4
  br label %208

228:                                              ; preds = %208
  store i32 0, i32* %3, align 4
  br label %245

229:                                              ; preds = %119, %108
  br label %230

230:                                              ; preds = %234, %229
  %231 = load i32, i32* %6, align 4
  %232 = add nsw i32 %231, -1
  store i32 %232, i32* %6, align 4
  %233 = icmp sge i32 %232, 0
  br i1 %233, label %234, label %243

234:                                              ; preds = %230
  %235 = load %struct.ata_host*, %struct.ata_host** %4, align 8
  %236 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %235, i32 0, i32 2
  %237 = load %struct.ata_port**, %struct.ata_port*** %236, align 8
  %238 = load i32, i32* %6, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %237, i64 %239
  %241 = load %struct.ata_port*, %struct.ata_port** %240, align 8
  %242 = call i32 @ata_tport_delete(%struct.ata_port* %241)
  br label %230

243:                                              ; preds = %230
  %244 = load i32, i32* %7, align 4
  store i32 %244, i32* %3, align 4
  br label %245

245:                                              ; preds = %243, %228, %24
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree(%struct.ata_port*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @ata_tport_add(i32, %struct.ata_port*) #1

declare dso_local i32 @ata_scsi_add_hosts(%struct.ata_host*, %struct.scsi_host_template*) #1

declare dso_local i32 @sata_link_init_spd(%struct.TYPE_3__*) #1

declare dso_local i64 @ata_pack_xfermask(i32, i32, i32) #1

declare dso_local i32 @ata_port_is_dummy(%struct.ata_port*) #1

declare dso_local i32 @ata_port_info(%struct.ata_port*, i8*, ...) #1

declare dso_local i32 @ata_mode_string(i64) #1

declare dso_local i32 @ata_ehi_clear_desc(%struct.TYPE_4__*) #1

declare dso_local i32 @async_schedule(i32, %struct.ata_port*) #1

declare dso_local i32 @ata_tport_delete(%struct.ata_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
