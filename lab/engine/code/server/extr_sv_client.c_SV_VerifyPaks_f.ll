; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_client.c_SV_VerifyPaks_f.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_client.c_SV_VerifyPaks_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i64, i8*, i32 }

@qtrue = common dso_local global i8* null, align 8
@sv_pure = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"vm/cgame.qvm\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"vm/ui.qvm\00", align 1
@qfalse = common dso_local global i32 0, align 4
@sv = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"ignoring outdated cp command from client %s\0A\00", align 1
@CS_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"Unpure client detected. Invalid .PK3 files referenced!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @SV_VerifyPaks_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SV_VerifyPaks_f(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [1024 x i32], align 16
  %11 = alloca [1024 x i32], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %15 = load i8*, i8** @qtrue, align 8
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %14, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sv_pure, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %283

21:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  %22 = call i32 @FS_FileIsInPAK(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %3)
  %23 = icmp eq i32 %22, 1
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = call i32 @FS_FileIsInPAK(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %4)
  %29 = icmp eq i32 %28, 1
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %14, align 4
  br label %31

31:                                               ; preds = %27, %21
  %32 = call i32 (...) @Cmd_Argc()
  store i32 %32, i32* %5, align 4
  store i32 1, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  %35 = call i8* @Cmd_Argv(i32 %33)
  store i8* %35, i8** %13, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @qfalse, align 4
  store i32 %39, i32* %14, align 4
  br label %51

40:                                               ; preds = %31
  %41 = load i8*, i8** %13, align 8
  %42 = call i32 @atoi(i8* %41)
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sv, i32 0, i32 0), align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %283

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %38
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %261

55:                                               ; preds = %52
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %56, 6
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @qfalse, align 4
  store i32 %59, i32* %14, align 4
  br label %261

60:                                               ; preds = %55
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  %63 = call i8* @Cmd_Argv(i32 %61)
  store i8* %63, i8** %13, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = load i8*, i8** %13, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 64
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load i8*, i8** %13, align 8
  %73 = call i32 @atoi(i8* %72)
  %74 = load i32, i32* %3, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %71, %66, %60
  %77 = load i32, i32* @qfalse, align 4
  store i32 %77, i32* %14, align 4
  br label %261

78:                                               ; preds = %71
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  %81 = call i8* @Cmd_Argv(i32 %79)
  store i8* %81, i8** %13, align 8
  %82 = load i8*, i8** %13, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %94

84:                                               ; preds = %78
  %85 = load i8*, i8** %13, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 64
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load i8*, i8** %13, align 8
  %91 = call i32 @atoi(i8* %90)
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %89, %84, %78
  %95 = load i32, i32* @qfalse, align 4
  store i32 %95, i32* %14, align 4
  br label %261

96:                                               ; preds = %89
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  %99 = call i8* @Cmd_Argv(i32 %97)
  store i8* %99, i8** %13, align 8
  %100 = load i8*, i8** %13, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 64
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i32, i32* @qfalse, align 4
  store i32 %105, i32* %14, align 4
  br label %261

106:                                              ; preds = %96
  store i32 0, i32* %7, align 4
  br label %107

107:                                              ; preds = %119, %106
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %107
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  %114 = call i8* @Cmd_Argv(i32 %112)
  %115 = call i32 @atoi(i8* %114)
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [1024 x i32], [1024 x i32]* %10, i64 0, i64 %117
  store i32 %115, i32* %118, align 4
  br label %119

119:                                              ; preds = %111
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %107

122:                                              ; preds = %107
  %123 = load i32, i32* %7, align 4
  %124 = sub nsw i32 %123, 1
  store i32 %124, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %125

125:                                              ; preds = %161, %122
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %5, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %164

129:                                              ; preds = %125
  store i32 0, i32* %8, align 4
  br label %130

130:                                              ; preds = %152, %129
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %5, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %155

134:                                              ; preds = %130
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  br label %152

139:                                              ; preds = %134
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [1024 x i32], [1024 x i32]* %10, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [1024 x i32], [1024 x i32]* %10, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %143, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %139
  %150 = load i32, i32* @qfalse, align 4
  store i32 %150, i32* %14, align 4
  br label %155

151:                                              ; preds = %139
  br label %152

152:                                              ; preds = %151, %138
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %8, align 4
  br label %130

155:                                              ; preds = %149, %130
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* @qfalse, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  br label %164

160:                                              ; preds = %155
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %7, align 4
  br label %125

164:                                              ; preds = %159, %125
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* @qfalse, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  br label %261

169:                                              ; preds = %164
  %170 = call i8* (...) @FS_LoadedPakPureChecksums()
  store i8* %170, i8** %12, align 8
  %171 = load i8*, i8** %12, align 8
  %172 = call i32 @Cmd_TokenizeString(i8* %171)
  %173 = call i32 (...) @Cmd_Argc()
  store i32 %173, i32* %6, align 4
  %174 = load i32, i32* %6, align 4
  %175 = icmp sgt i32 %174, 1024
  br i1 %175, label %176, label %177

176:                                              ; preds = %169
  store i32 1024, i32* %6, align 4
  br label %177

177:                                              ; preds = %176, %169
  store i32 0, i32* %7, align 4
  br label %178

178:                                              ; preds = %189, %177
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* %6, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %192

182:                                              ; preds = %178
  %183 = load i32, i32* %7, align 4
  %184 = call i8* @Cmd_Argv(i32 %183)
  %185 = call i32 @atoi(i8* %184)
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [1024 x i32], [1024 x i32]* %11, i64 0, i64 %187
  store i32 %185, i32* %188, align 4
  br label %189

189:                                              ; preds = %182
  %190 = load i32, i32* %7, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %7, align 4
  br label %178

192:                                              ; preds = %178
  store i32 0, i32* %7, align 4
  br label %193

193:                                              ; preds = %224, %192
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* %5, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %227

197:                                              ; preds = %193
  store i32 0, i32* %8, align 4
  br label %198

198:                                              ; preds = %214, %197
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* %6, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %217

202:                                              ; preds = %198
  %203 = load i32, i32* %7, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [1024 x i32], [1024 x i32]* %10, i64 0, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %8, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [1024 x i32], [1024 x i32]* %11, i64 0, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %206, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %202
  br label %217

213:                                              ; preds = %202
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %8, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %8, align 4
  br label %198

217:                                              ; preds = %212, %198
  %218 = load i32, i32* %8, align 4
  %219 = load i32, i32* %6, align 4
  %220 = icmp sge i32 %218, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  %222 = load i32, i32* @qfalse, align 4
  store i32 %222, i32* %14, align 4
  br label %227

223:                                              ; preds = %217
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %7, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %7, align 4
  br label %193

227:                                              ; preds = %221, %193
  %228 = load i32, i32* %14, align 4
  %229 = load i32, i32* @qfalse, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %227
  br label %261

232:                                              ; preds = %227
  %233 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @sv, i32 0, i32 1), align 4
  store i32 %233, i32* %3, align 4
  store i32 0, i32* %7, align 4
  br label %234

234:                                              ; preds = %245, %232
  %235 = load i32, i32* %7, align 4
  %236 = load i32, i32* %5, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %248

238:                                              ; preds = %234
  %239 = load i32, i32* %7, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [1024 x i32], [1024 x i32]* %10, i64 0, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %3, align 4
  %244 = xor i32 %243, %242
  store i32 %244, i32* %3, align 4
  br label %245

245:                                              ; preds = %238
  %246 = load i32, i32* %7, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %7, align 4
  br label %234

248:                                              ; preds = %234
  %249 = load i32, i32* %5, align 4
  %250 = load i32, i32* %3, align 4
  %251 = xor i32 %250, %249
  store i32 %251, i32* %3, align 4
  %252 = load i32, i32* %3, align 4
  %253 = load i32, i32* %5, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [1024 x i32], [1024 x i32]* %10, i64 0, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = icmp ne i32 %252, %256
  br i1 %257, label %258, label %260

258:                                              ; preds = %248
  %259 = load i32, i32* @qfalse, align 4
  store i32 %259, i32* %14, align 4
  br label %261

260:                                              ; preds = %248
  br label %261

261:                                              ; preds = %260, %258, %231, %168, %104, %94, %76, %58, %52
  %262 = load i8*, i8** @qtrue, align 8
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 3
  store i8* %262, i8** %264, align 8
  %265 = load i32, i32* %14, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %261
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 0
  store i32 1, i32* %269, align 8
  br label %282

270:                                              ; preds = %261
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  store i32 0, i32* %272, align 8
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 2
  store i64 0, i64* %274, align 8
  %275 = load i32, i32* @CS_ACTIVE, align 4
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 1
  store i32 %275, i32* %277, align 4
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %279 = call i32 @SV_SendClientSnapshot(%struct.TYPE_7__* %278)
  %280 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %281 = call i32 @SV_DropClient(%struct.TYPE_7__* %280, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  br label %282

282:                                              ; preds = %270, %267
  br label %283

283:                                              ; preds = %45, %282, %1
  ret void
}

declare dso_local i32 @FS_FileIsInPAK(i8*, i32*) #1

declare dso_local i32 @Cmd_Argc(...) #1

declare dso_local i8* @Cmd_Argv(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @Com_DPrintf(i8*, i32) #1

declare dso_local i8* @FS_LoadedPakPureChecksums(...) #1

declare dso_local i32 @Cmd_TokenizeString(i8*) #1

declare dso_local i32 @SV_SendClientSnapshot(%struct.TYPE_7__*) #1

declare dso_local i32 @SV_DropClient(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
