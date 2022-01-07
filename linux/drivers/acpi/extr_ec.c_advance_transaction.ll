; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_advance_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_advance_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec = type { i32, i32, i32, %struct.transaction* }
%struct.transaction = type { i32, i64, i64, i64, i64, i32*, i64, i64, i32* }

@.str = private unnamed_addr constant [8 x i8] c"%s (%d)\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"IRQ\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TASK\00", align 1
@ACPI_EC_COMMAND_POLL = common dso_local global i32 0, align 4
@ec_event_clearing = common dso_local global i64 0, align 8
@ACPI_EC_EVT_TIMING_EVENT = common dso_local global i64 0, align 8
@EC_FLAGS_QUERY_GUARDING = common dso_local global i32 0, align 4
@ACPI_EC_FLAG_IBF = common dso_local global i32 0, align 4
@ACPI_EC_FLAG_OBF = common dso_local global i32 0, align 4
@ACPI_EC_COMMAND_COMPLETE = common dso_local global i32 0, align 4
@ACPI_EC_COMMAND_QUERY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"Command(%s) completed by hardware\00", align 1
@EC_FLAGS_QUERY_HANDSHAKE = common dso_local global i64 0, align 8
@ACPI_EC_FLAG_SCI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Command(%s) completed by software\00", align 1
@ec_storm_threshold = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_ec*)* @advance_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @advance_transaction(%struct.acpi_ec* %0) #0 {
  %2 = alloca %struct.acpi_ec*, align 8
  %3 = alloca %struct.transaction*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.acpi_ec* %0, %struct.acpi_ec** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = call i64 (...) @in_interrupt()
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %10 = call i32 (...) @smp_processor_id()
  %11 = call i32 @ec_dbg_stm(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %9, i32 %10)
  %12 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %13 = call i32 @acpi_ec_clear_gpe(%struct.acpi_ec* %12)
  %14 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %15 = call i32 @acpi_ec_read_status(%struct.acpi_ec* %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %17 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %16, i32 0, i32 3
  %18 = load %struct.transaction*, %struct.transaction** %17, align 8
  store %struct.transaction* %18, %struct.transaction** %3, align 8
  %19 = load %struct.transaction*, %struct.transaction** %3, align 8
  %20 = icmp ne %struct.transaction* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.transaction*, %struct.transaction** %3, align 8
  %23 = getelementptr inbounds %struct.transaction, %struct.transaction* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ACPI_EC_COMMAND_POLL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %51, label %28

28:                                               ; preds = %21, %1
  %29 = load i64, i64* @ec_event_clearing, align 8
  %30 = load i64, i64* @ACPI_EC_EVT_TIMING_EVENT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %34 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* @EC_FLAGS_QUERY_GUARDING, align 4
  %39 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %40 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %39, i32 0, i32 1
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %37, %32
  %44 = load i32, i32* @EC_FLAGS_QUERY_GUARDING, align 4
  %45 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %46 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %45, i32 0, i32 1
  %47 = call i32 @clear_bit(i32 %44, i32* %46)
  %48 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %49 = call i32 @acpi_ec_complete_query(%struct.acpi_ec* %48)
  br label %50

50:                                               ; preds = %43, %37, %28
  br label %51

51:                                               ; preds = %50, %21
  %52 = load %struct.transaction*, %struct.transaction** %3, align 8
  %53 = icmp ne %struct.transaction* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  br label %206

55:                                               ; preds = %51
  %56 = load %struct.transaction*, %struct.transaction** %3, align 8
  %57 = getelementptr inbounds %struct.transaction, %struct.transaction* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @ACPI_EC_COMMAND_POLL, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %157

62:                                               ; preds = %55
  %63 = load %struct.transaction*, %struct.transaction** %3, align 8
  %64 = getelementptr inbounds %struct.transaction, %struct.transaction* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.transaction*, %struct.transaction** %3, align 8
  %67 = getelementptr inbounds %struct.transaction, %struct.transaction* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %65, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %62
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @ACPI_EC_FLAG_IBF, align 4
  %73 = and i32 %71, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %70
  %76 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %77 = load %struct.transaction*, %struct.transaction** %3, align 8
  %78 = getelementptr inbounds %struct.transaction, %struct.transaction* %77, i32 0, i32 8
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.transaction*, %struct.transaction** %3, align 8
  %81 = getelementptr inbounds %struct.transaction, %struct.transaction* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %81, align 8
  %84 = getelementptr inbounds i32, i32* %79, i64 %82
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @acpi_ec_write_data(%struct.acpi_ec* %76, i32 %85)
  br label %88

87:                                               ; preds = %70
  br label %206

88:                                               ; preds = %75
  br label %156

89:                                               ; preds = %62
  %90 = load %struct.transaction*, %struct.transaction** %3, align 8
  %91 = getelementptr inbounds %struct.transaction, %struct.transaction* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.transaction*, %struct.transaction** %3, align 8
  %94 = getelementptr inbounds %struct.transaction, %struct.transaction* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %92, %95
  br i1 %96, label %97, label %137

97:                                               ; preds = %89
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @ACPI_EC_FLAG_OBF, align 4
  %100 = and i32 %98, %99
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %135

102:                                              ; preds = %97
  %103 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %104 = call i32 @acpi_ec_read_data(%struct.acpi_ec* %103)
  %105 = load %struct.transaction*, %struct.transaction** %3, align 8
  %106 = getelementptr inbounds %struct.transaction, %struct.transaction* %105, i32 0, i32 5
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.transaction*, %struct.transaction** %3, align 8
  %109 = getelementptr inbounds %struct.transaction, %struct.transaction* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %109, align 8
  %112 = getelementptr inbounds i32, i32* %107, i64 %110
  store i32 %104, i32* %112, align 4
  %113 = load %struct.transaction*, %struct.transaction** %3, align 8
  %114 = getelementptr inbounds %struct.transaction, %struct.transaction* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.transaction*, %struct.transaction** %3, align 8
  %117 = getelementptr inbounds %struct.transaction, %struct.transaction* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %115, %118
  br i1 %119, label %120, label %134

120:                                              ; preds = %102
  %121 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %122 = load i32, i32* @ACPI_EC_COMMAND_COMPLETE, align 4
  %123 = call i32 @ec_transaction_transition(%struct.acpi_ec* %121, i32 %122)
  %124 = load %struct.transaction*, %struct.transaction** %3, align 8
  %125 = getelementptr inbounds %struct.transaction, %struct.transaction* %124, i32 0, i32 6
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @ACPI_EC_COMMAND_QUERY, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %120
  %130 = load i64, i64* @ACPI_EC_COMMAND_QUERY, align 8
  %131 = call i32 @acpi_ec_cmd_string(i64 %130)
  %132 = call i32 @ec_dbg_evt(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %129, %120
  store i32 1, i32* %5, align 4
  br label %134

134:                                              ; preds = %133, %102
  br label %136

135:                                              ; preds = %97
  br label %206

136:                                              ; preds = %134
  br label %155

137:                                              ; preds = %89
  %138 = load %struct.transaction*, %struct.transaction** %3, align 8
  %139 = getelementptr inbounds %struct.transaction, %struct.transaction* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.transaction*, %struct.transaction** %3, align 8
  %142 = getelementptr inbounds %struct.transaction, %struct.transaction* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %140, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %137
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* @ACPI_EC_FLAG_IBF, align 4
  %148 = and i32 %146, %147
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %152 = load i32, i32* @ACPI_EC_COMMAND_COMPLETE, align 4
  %153 = call i32 @ec_transaction_transition(%struct.acpi_ec* %151, i32 %152)
  store i32 1, i32* %5, align 4
  br label %154

154:                                              ; preds = %150, %145, %137
  br label %155

155:                                              ; preds = %154, %136
  br label %156

156:                                              ; preds = %155, %88
  br label %240

157:                                              ; preds = %55
  %158 = load i64, i64* @EC_FLAGS_QUERY_HANDSHAKE, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %189

160:                                              ; preds = %157
  %161 = load i32, i32* %4, align 4
  %162 = load i32, i32* @ACPI_EC_FLAG_SCI, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %189, label %165

165:                                              ; preds = %160
  %166 = load %struct.transaction*, %struct.transaction** %3, align 8
  %167 = getelementptr inbounds %struct.transaction, %struct.transaction* %166, i32 0, i32 6
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @ACPI_EC_COMMAND_QUERY, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %189

171:                                              ; preds = %165
  %172 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %173 = load i32, i32* @ACPI_EC_COMMAND_POLL, align 4
  %174 = call i32 @ec_transaction_transition(%struct.acpi_ec* %172, i32 %173)
  %175 = load %struct.transaction*, %struct.transaction** %3, align 8
  %176 = getelementptr inbounds %struct.transaction, %struct.transaction* %175, i32 0, i32 5
  %177 = load i32*, i32** %176, align 8
  %178 = load %struct.transaction*, %struct.transaction** %3, align 8
  %179 = getelementptr inbounds %struct.transaction, %struct.transaction* %178, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %180, 1
  store i64 %181, i64* %179, align 8
  %182 = getelementptr inbounds i32, i32* %177, i64 %180
  store i32 0, i32* %182, align 4
  %183 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %184 = load i32, i32* @ACPI_EC_COMMAND_COMPLETE, align 4
  %185 = call i32 @ec_transaction_transition(%struct.acpi_ec* %183, i32 %184)
  %186 = load i64, i64* @ACPI_EC_COMMAND_QUERY, align 8
  %187 = call i32 @acpi_ec_cmd_string(i64 %186)
  %188 = call i32 @ec_dbg_evt(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %187)
  store i32 1, i32* %5, align 4
  br label %205

189:                                              ; preds = %165, %160, %157
  %190 = load i32, i32* %4, align 4
  %191 = load i32, i32* @ACPI_EC_FLAG_IBF, align 4
  %192 = and i32 %190, %191
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %189
  %195 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %196 = load %struct.transaction*, %struct.transaction** %3, align 8
  %197 = getelementptr inbounds %struct.transaction, %struct.transaction* %196, i32 0, i32 6
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @acpi_ec_write_cmd(%struct.acpi_ec* %195, i64 %198)
  %200 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %201 = load i32, i32* @ACPI_EC_COMMAND_POLL, align 4
  %202 = call i32 @ec_transaction_transition(%struct.acpi_ec* %200, i32 %201)
  br label %204

203:                                              ; preds = %189
  br label %206

204:                                              ; preds = %194
  br label %205

205:                                              ; preds = %204, %171
  br label %240

206:                                              ; preds = %203, %135, %87, %54
  %207 = load i32, i32* %4, align 4
  %208 = load i32, i32* @ACPI_EC_FLAG_SCI, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %239, label %211

211:                                              ; preds = %206
  %212 = call i64 (...) @in_interrupt()
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %238

214:                                              ; preds = %211
  %215 = load %struct.transaction*, %struct.transaction** %3, align 8
  %216 = icmp ne %struct.transaction* %215, null
  br i1 %216, label %217, label %238

217:                                              ; preds = %214
  %218 = load %struct.transaction*, %struct.transaction** %3, align 8
  %219 = getelementptr inbounds %struct.transaction, %struct.transaction* %218, i32 0, i32 7
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @ec_storm_threshold, align 8
  %222 = icmp slt i64 %220, %221
  br i1 %222, label %223, label %228

223:                                              ; preds = %217
  %224 = load %struct.transaction*, %struct.transaction** %3, align 8
  %225 = getelementptr inbounds %struct.transaction, %struct.transaction* %224, i32 0, i32 7
  %226 = load i64, i64* %225, align 8
  %227 = add nsw i64 %226, 1
  store i64 %227, i64* %225, align 8
  br label %228

228:                                              ; preds = %223, %217
  %229 = load %struct.transaction*, %struct.transaction** %3, align 8
  %230 = getelementptr inbounds %struct.transaction, %struct.transaction* %229, i32 0, i32 7
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @ec_storm_threshold, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %228
  %235 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %236 = call i32 @acpi_ec_mask_gpe(%struct.acpi_ec* %235)
  br label %237

237:                                              ; preds = %234, %228
  br label %238

238:                                              ; preds = %237, %214, %211
  br label %239

239:                                              ; preds = %238, %206
  br label %240

240:                                              ; preds = %239, %205, %156
  %241 = load i32, i32* %4, align 4
  %242 = load i32, i32* @ACPI_EC_FLAG_SCI, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %240
  %246 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %247 = call i32 @acpi_ec_submit_query(%struct.acpi_ec* %246)
  br label %248

248:                                              ; preds = %245, %240
  %249 = load i32, i32* %5, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %258

251:                                              ; preds = %248
  %252 = call i64 (...) @in_interrupt()
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %251
  %255 = load %struct.acpi_ec*, %struct.acpi_ec** %2, align 8
  %256 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %255, i32 0, i32 0
  %257 = call i32 @wake_up(i32* %256)
  br label %258

258:                                              ; preds = %254, %251, %248
  ret void
}

declare dso_local i32 @ec_dbg_stm(i8*, i8*, i32) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @acpi_ec_clear_gpe(%struct.acpi_ec*) #1

declare dso_local i32 @acpi_ec_read_status(%struct.acpi_ec*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @acpi_ec_complete_query(%struct.acpi_ec*) #1

declare dso_local i32 @acpi_ec_write_data(%struct.acpi_ec*, i32) #1

declare dso_local i32 @acpi_ec_read_data(%struct.acpi_ec*) #1

declare dso_local i32 @ec_transaction_transition(%struct.acpi_ec*, i32) #1

declare dso_local i32 @ec_dbg_evt(i8*, i32) #1

declare dso_local i32 @acpi_ec_cmd_string(i64) #1

declare dso_local i32 @acpi_ec_write_cmd(%struct.acpi_ec*, i64) #1

declare dso_local i32 @acpi_ec_mask_gpe(%struct.acpi_ec*) #1

declare dso_local i32 @acpi_ec_submit_query(%struct.acpi_ec*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
