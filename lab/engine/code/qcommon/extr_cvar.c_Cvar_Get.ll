; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cvar.c_Cvar_Get.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_cvar.c_Cvar_Get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i8*, i32, i64, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*, i32*, i32, i8*, i32, i32, i32, i8* }

@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Cvar_Get: NULL parameter\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid cvar name string: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"BADNAME\00", align 1
@qfalse = common dso_local global i32 0, align 4
@CVAR_VM_CREATED = common dso_local global i32 0, align 4
@CVAR_USER_CREATED = common dso_local global i32 0, align 4
@CVAR_ROM = common dso_local global i32 0, align 4
@CVAR_SERVER_CREATED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Warning: cvar \22%s\22 given initial values: \22%s\22 and \22%s\22\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4
@cvar_modifiedFlags = common dso_local global i32 0, align 4
@MAX_CVARS = common dso_local global i32 0, align 4
@cvar_indexes = common dso_local global %struct.TYPE_8__* null, align 8
@com_errorEntered = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Error: Too many cvars, cannot create a new one!\00", align 1
@cvar_numIndexes = common dso_local global i32 0, align 4
@cvar_vars = common dso_local global %struct.TYPE_8__* null, align 8
@hashTable = common dso_local global %struct.TYPE_8__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @Cvar_Get(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @ERR_FATAL, align 4
  %19 = call i32 @Com_Error(i32 %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @Cvar_ValidateString(i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @Com_Printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i8*, i8** %5, align 8
  %29 = call %struct.TYPE_8__* @Cvar_FindVar(i8* %28)
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %8, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = icmp ne %struct.TYPE_8__* %30, null
  br i1 %31, label %32, label %212

32:                                               ; preds = %27
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* @qfalse, align 4
  %36 = call i8* @Cvar_Validate(%struct.TYPE_8__* %33, i8* %34, i32 %35)
  store i8* %36, i8** %6, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @CVAR_VM_CREATED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %32
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @CVAR_VM_CREATED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @CVAR_VM_CREATED, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %48, %43
  br label %75

56:                                               ; preds = %32
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @CVAR_USER_CREATED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @CVAR_VM_CREATED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i32, i32* @CVAR_VM_CREATED, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %68, %63
  br label %74

74:                                               ; preds = %73, %56
  br label %75

75:                                               ; preds = %74, %55
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @CVAR_USER_CREATED, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %117

82:                                               ; preds = %75
  %83 = load i32, i32* @CVAR_USER_CREATED, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @Z_Free(i8* %91)
  %93 = load i8*, i8** %6, align 8
  %94 = call i8* @CopyString(i8* %93)
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @CVAR_ROM, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %82
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @Z_Free(i8* %109)
  br label %111

111:                                              ; preds = %106, %101
  %112 = load i8*, i8** %6, align 8
  %113 = call i8* @CopyString(i8* %112)
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  br label %116

116:                                              ; preds = %111, %82
  br label %117

117:                                              ; preds = %116, %75
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @CVAR_SERVER_CREATED, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %117
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @CVAR_SERVER_CREATED, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %124
  %130 = load i32, i32* @CVAR_SERVER_CREATED, align 4
  %131 = xor i32 %130, -1
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %134, %131
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %129, %124
  br label %148

137:                                              ; preds = %117
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @CVAR_SERVER_CREATED, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load i32, i32* @CVAR_SERVER_CREATED, align 4
  %144 = xor i32 %143, -1
  %145 = load i32, i32* %7, align 4
  %146 = and i32 %145, %144
  store i32 %146, i32* %7, align 4
  br label %147

147:                                              ; preds = %142, %137
  br label %148

148:                                              ; preds = %147, %136
  %149 = load i32, i32* %7, align 4
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 8
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 0
  %158 = load i8, i8* %157, align 1
  %159 = icmp ne i8 %158, 0
  br i1 %159, label %169, label %160

160:                                              ; preds = %148
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @Z_Free(i8* %163)
  %165 = load i8*, i8** %6, align 8
  %166 = call i8* @CopyString(i8* %165)
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  store i8* %166, i8** %168, align 8
  br label %190

169:                                              ; preds = %148
  %170 = load i8*, i8** %6, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 0
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %189

175:                                              ; preds = %169
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  %179 = load i8*, i8** %6, align 8
  %180 = call i64 @strcmp(i8* %178, i8* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %175
  %183 = load i8*, i8** %5, align 8
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 1
  %186 = load i8*, i8** %185, align 8
  %187 = load i8*, i8** %6, align 8
  %188 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* %183, i8* %186, i8* %187)
  br label %189

189:                                              ; preds = %182, %175, %169
  br label %190

190:                                              ; preds = %189, %160
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 2
  %193 = load i8*, i8** %192, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %207

195:                                              ; preds = %190
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 2
  %198 = load i8*, i8** %197, align 8
  store i8* %198, i8** %11, align 8
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 2
  store i8* null, i8** %200, align 8
  %201 = load i8*, i8** %5, align 8
  %202 = load i8*, i8** %11, align 8
  %203 = load i32, i32* @qtrue, align 4
  %204 = call i32 @Cvar_Set2(i8* %201, i8* %202, i32 %203)
  %205 = load i8*, i8** %11, align 8
  %206 = call i32 @Z_Free(i8* %205)
  br label %207

207:                                              ; preds = %195, %190
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* @cvar_modifiedFlags, align 4
  %210 = or i32 %209, %208
  store i32 %210, i32* @cvar_modifiedFlags, align 4
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %211, %struct.TYPE_8__** %4, align 8
  br label %339

212:                                              ; preds = %27
  store i32 0, i32* %10, align 4
  br label %213

213:                                              ; preds = %227, %212
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* @MAX_CVARS, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %230

217:                                              ; preds = %213
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cvar_indexes, align 8
  %219 = load i32, i32* %10, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 15
  %223 = load i8*, i8** %222, align 8
  %224 = icmp ne i8* %223, null
  br i1 %224, label %226, label %225

225:                                              ; preds = %217
  br label %230

226:                                              ; preds = %217
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %10, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %10, align 4
  br label %213

230:                                              ; preds = %225, %213
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* @MAX_CVARS, align 4
  %233 = icmp sge i32 %231, %232
  br i1 %233, label %234, label %241

234:                                              ; preds = %230
  %235 = load i32, i32* @com_errorEntered, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %234
  %238 = load i32, i32* @ERR_FATAL, align 4
  %239 = call i32 @Com_Error(i32 %238, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %240

240:                                              ; preds = %237, %234
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %339

241:                                              ; preds = %230
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cvar_indexes, align 8
  %243 = load i32, i32* %10, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i64 %244
  store %struct.TYPE_8__* %245, %struct.TYPE_8__** %8, align 8
  %246 = load i32, i32* %10, align 4
  %247 = load i32, i32* @cvar_numIndexes, align 4
  %248 = icmp sge i32 %246, %247
  br i1 %248, label %249, label %252

249:                                              ; preds = %241
  %250 = load i32, i32* %10, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* @cvar_numIndexes, align 4
  br label %252

252:                                              ; preds = %249, %241
  %253 = load i8*, i8** %5, align 8
  %254 = call i8* @CopyString(i8* %253)
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 15
  store i8* %254, i8** %256, align 8
  %257 = load i8*, i8** %6, align 8
  %258 = call i8* @CopyString(i8* %257)
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 11
  store i8* %258, i8** %260, align 8
  %261 = load i32, i32* @qtrue, align 4
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 14
  store i32 %261, i32* %263, align 8
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 3
  store i32 1, i32* %265, align 8
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 11
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 @atof(i8* %268)
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 13
  store i32 %269, i32* %271, align 4
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 11
  %274 = load i8*, i8** %273, align 8
  %275 = call i32 @atoi(i8* %274)
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 12
  store i32 %275, i32* %277, align 8
  %278 = load i8*, i8** %6, align 8
  %279 = call i8* @CopyString(i8* %278)
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 1
  store i8* %279, i8** %281, align 8
  %282 = load i32, i32* @qfalse, align 4
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 10
  store i32 %282, i32* %284, align 8
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 9
  store i32* null, i32** %286, align 8
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cvar_vars, align 8
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 8
  store %struct.TYPE_8__* %287, %struct.TYPE_8__** %289, align 8
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cvar_vars, align 8
  %291 = icmp ne %struct.TYPE_8__* %290, null
  br i1 %291, label %292, label %296

292:                                              ; preds = %252
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cvar_vars, align 8
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 7
  store %struct.TYPE_8__* %293, %struct.TYPE_8__** %295, align 8
  br label %296

296:                                              ; preds = %292, %252
  %297 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 7
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %298, align 8
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %299, %struct.TYPE_8__** @cvar_vars, align 8
  %300 = load i32, i32* %7, align 4
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 0
  store i32 %300, i32* %302, align 8
  %303 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @cvar_modifiedFlags, align 4
  %307 = or i32 %306, %305
  store i32 %307, i32* @cvar_modifiedFlags, align 4
  %308 = load i8*, i8** %5, align 8
  %309 = call i64 @generateHashValue(i8* %308)
  store i64 %309, i64* %9, align 8
  %310 = load i64, i64* %9, align 8
  %311 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 4
  store i64 %310, i64* %312, align 8
  %313 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @hashTable, align 8
  %314 = load i64, i64* %9, align 8
  %315 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %313, i64 %314
  %316 = load %struct.TYPE_8__*, %struct.TYPE_8__** %315, align 8
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 6
  store %struct.TYPE_8__* %316, %struct.TYPE_8__** %318, align 8
  %319 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @hashTable, align 8
  %320 = load i64, i64* %9, align 8
  %321 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %319, i64 %320
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %321, align 8
  %323 = icmp ne %struct.TYPE_8__* %322, null
  br i1 %323, label %324, label %331

324:                                              ; preds = %296
  %325 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %326 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @hashTable, align 8
  %327 = load i64, i64* %9, align 8
  %328 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %326, i64 %327
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 5
  store %struct.TYPE_8__* %325, %struct.TYPE_8__** %330, align 8
  br label %331

331:                                              ; preds = %324, %296
  %332 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 5
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %333, align 8
  %334 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %335 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @hashTable, align 8
  %336 = load i64, i64* %9, align 8
  %337 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %335, i64 %336
  store %struct.TYPE_8__* %334, %struct.TYPE_8__** %337, align 8
  %338 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %338, %struct.TYPE_8__** %4, align 8
  br label %339

339:                                              ; preds = %331, %240, %207
  %340 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %340
}

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @Cvar_ValidateString(i8*) #1

declare dso_local i32 @Com_Printf(i8*, i8*) #1

declare dso_local %struct.TYPE_8__* @Cvar_FindVar(i8*) #1

declare dso_local i8* @Cvar_Validate(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @Z_Free(i8*) #1

declare dso_local i8* @CopyString(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @Com_DPrintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @Cvar_Set2(i8*, i8*, i32) #1

declare dso_local i32 @atof(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @generateHashValue(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
