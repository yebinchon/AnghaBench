; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_TextField_HandleKey.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_TextField_HandleKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (...)*, i32 (i32)*, i32 (i64, i8*)*, i32 (i64, i8*, i32)* }
%struct.TYPE_8__ = type { i32, i64, i32, i64, i64 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@DC = common dso_local global %struct.TYPE_10__* null, align 8
@K_CHAR_FLAG = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@ITEM_TYPE_NUMERICFIELD = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@MAX_EDITFIELD = common dso_local global i32 0, align 4
@K_DEL = common dso_local global i32 0, align 4
@K_KP_DEL = common dso_local global i32 0, align 4
@K_RIGHTARROW = common dso_local global i32 0, align 4
@K_KP_RIGHTARROW = common dso_local global i32 0, align 4
@K_LEFTARROW = common dso_local global i32 0, align 4
@K_KP_LEFTARROW = common dso_local global i32 0, align 4
@K_HOME = common dso_local global i32 0, align 4
@K_KP_HOME = common dso_local global i32 0, align 4
@K_END = common dso_local global i32 0, align 4
@K_KP_END = common dso_local global i32 0, align 4
@K_INS = common dso_local global i32 0, align 4
@K_KP_INS = common dso_local global i32 0, align 4
@K_TAB = common dso_local global i32 0, align 4
@K_DOWNARROW = common dso_local global i32 0, align 4
@K_KP_DOWNARROW = common dso_local global i32 0, align 4
@ITEM_TYPE_EDITFIELD = common dso_local global i64 0, align 8
@g_editItem = common dso_local global %struct.TYPE_8__* null, align 8
@K_UPARROW = common dso_local global i32 0, align 4
@K_KP_UPARROW = common dso_local global i32 0, align 4
@K_ENTER = common dso_local global i32 0, align 4
@K_KP_ENTER = common dso_local global i32 0, align 4
@K_ESCAPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Item_TextField_HandleKey(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %9, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %510

18:                                               ; preds = %2
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %20 = call i32 @memset(i8* %19, i32 0, i32 1024)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DC, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 3
  %23 = load i32 (i64, i8*, i32)*, i32 (i64, i8*, i32)** %22, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %28 = call i32 %23(i64 %26, i8* %27, i32 1024)
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %30 = call i32 @strlen(i8* %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %18
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %41, %35, %18
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @K_CHAR_FLAG, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %238

50:                                               ; preds = %45
  %51 = load i32, i32* @K_CHAR_FLAG, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 8
  br i1 %56, label %57, label %108

57:                                               ; preds = %50
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %98

62:                                               ; preds = %57
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 %67
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %75, %78
  %80 = call i32 @memmove(i8* %68, i8* %73, i32 %79)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %82, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %62
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %92, %62
  br label %98

98:                                               ; preds = %97, %57
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DC, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  %101 = load i32 (i64, i8*)*, i32 (i64, i8*)** %100, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %106 = call i32 %101(i64 %104, i8* %105)
  %107 = load i32, i32* @qtrue, align 4
  store i32 %107, i32* %3, align 4
  br label %512

108:                                              ; preds = %50
  %109 = load i32, i32* %5, align 4
  %110 = icmp slt i32 %109, 32
  br i1 %110, label %116, label %111

111:                                              ; preds = %108
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %111, %108
  %117 = load i32, i32* @qtrue, align 4
  store i32 %117, i32* %3, align 4
  br label %512

118:                                              ; preds = %111
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @ITEM_TYPE_NUMERICFIELD, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %118
  %125 = load i32, i32* %5, align 4
  %126 = icmp slt i32 %125, 48
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %5, align 4
  %129 = icmp sgt i32 %128, 57
  br i1 %129, label %130, label %132

130:                                              ; preds = %127, %124
  %131 = load i32, i32* @qfalse, align 4
  store i32 %131, i32* %3, align 4
  br label %512

132:                                              ; preds = %127
  br label %133

133:                                              ; preds = %132, %118
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DC, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32 (...)*, i32 (...)** %135, align 8
  %137 = call i32 (...) %136()
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %176, label %139

139:                                              ; preds = %133
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @MAX_EDITFIELD, align 4
  %142 = sub nsw i32 %141, 1
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %155, label %144

144:                                              ; preds = %139
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %144
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp sge i32 %150, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %149, %139
  %156 = load i32, i32* @qtrue, align 4
  store i32 %156, i32* %3, align 4
  br label %512

157:                                              ; preds = %149, %144
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 %162
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 %167
  %169 = load i32, i32* %7, align 4
  %170 = add nsw i32 %169, 1
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sub nsw i32 %170, %173
  %175 = call i32 @memmove(i8* %163, i8* %168, i32 %174)
  br label %192

176:                                              ; preds = %133
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %176
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = icmp sge i32 %184, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %181
  %190 = load i32, i32* @qtrue, align 4
  store i32 %190, i32* %3, align 4
  br label %512

191:                                              ; preds = %181, %176
  br label %192

192:                                              ; preds = %191, %157
  %193 = load i32, i32* %5, align 4
  %194 = trunc i32 %193 to i8
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 %198
  store i8 %194, i8* %199, align 1
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DC, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 2
  %202 = load i32 (i64, i8*)*, i32 (i64, i8*)** %201, align 8
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %207 = call i32 %202(i64 %205, i8* %206)
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = add nsw i32 %211, 1
  %213 = icmp slt i32 %210, %212
  br i1 %213, label %214, label %237

214:                                              ; preds = %192
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %216, align 8
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %236

223:                                              ; preds = %214
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = icmp sgt i32 %226, %229
  br i1 %230, label %231, label %236

231:                                              ; preds = %223
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %233, align 4
  br label %236

236:                                              ; preds = %231, %223, %214
  br label %237

237:                                              ; preds = %236, %192
  br label %430

238:                                              ; preds = %45
  %239 = load i32, i32* %5, align 4
  %240 = load i32, i32* @K_DEL, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %246, label %242

242:                                              ; preds = %238
  %243 = load i32, i32* %5, align 4
  %244 = load i32, i32* @K_KP_DEL, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %282

246:                                              ; preds = %242, %238
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* %7, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %252, label %280

252:                                              ; preds = %246
  %253 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %253, i64 %257
  %259 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %259, i64 %263
  %265 = getelementptr inbounds i8, i8* %264, i64 1
  %266 = load i32, i32* %7, align 4
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = sub nsw i32 %266, %269
  %271 = call i32 @memmove(i8* %258, i8* %265, i32 %270)
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DC, align 8
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 2
  %274 = load i32 (i64, i8*)*, i32 (i64, i8*)** %273, align 8
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 3
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %279 = call i32 %274(i64 %277, i8* %278)
  br label %280

280:                                              ; preds = %252, %246
  %281 = load i32, i32* @qtrue, align 4
  store i32 %281, i32* %3, align 4
  br label %512

282:                                              ; preds = %242
  %283 = load i32, i32* %5, align 4
  %284 = load i32, i32* @K_RIGHTARROW, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %290, label %286

286:                                              ; preds = %282
  %287 = load i32, i32* %5, align 4
  %288 = load i32, i32* @K_KP_RIGHTARROW, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %332

290:                                              ; preds = %286, %282
  %291 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %319

295:                                              ; preds = %290
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = icmp sge i32 %298, %301
  br i1 %302, label %303, label %319

303:                                              ; preds = %295
  %304 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* %7, align 4
  %308 = icmp slt i32 %306, %307
  br i1 %308, label %309, label %319

309:                                              ; preds = %303
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %311, align 8
  %314 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %315, align 4
  %318 = load i32, i32* @qtrue, align 4
  store i32 %318, i32* %3, align 4
  br label %512

319:                                              ; preds = %303, %295, %290
  %320 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* %7, align 4
  %324 = icmp slt i32 %322, %323
  br i1 %324, label %325, label %330

325:                                              ; preds = %319
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %327, align 8
  br label %330

330:                                              ; preds = %325, %319
  %331 = load i32, i32* @qtrue, align 4
  store i32 %331, i32* %3, align 4
  br label %512

332:                                              ; preds = %286
  %333 = load i32, i32* %5, align 4
  %334 = load i32, i32* @K_LEFTARROW, align 4
  %335 = icmp eq i32 %333, %334
  br i1 %335, label %340, label %336

336:                                              ; preds = %332
  %337 = load i32, i32* %5, align 4
  %338 = load i32, i32* @K_KP_LEFTARROW, align 4
  %339 = icmp eq i32 %337, %338
  br i1 %339, label %340, label %365

340:                                              ; preds = %336, %332
  %341 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = icmp sgt i32 %343, 0
  br i1 %344, label %345, label %350

345:                                              ; preds = %340
  %346 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = add nsw i32 %348, -1
  store i32 %349, i32* %347, align 8
  br label %350

350:                                              ; preds = %345, %340
  %351 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = icmp slt i32 %353, %356
  br i1 %357, label %358, label %363

358:                                              ; preds = %350
  %359 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %360 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = add nsw i32 %361, -1
  store i32 %362, i32* %360, align 4
  br label %363

363:                                              ; preds = %358, %350
  %364 = load i32, i32* @qtrue, align 4
  store i32 %364, i32* %3, align 4
  br label %512

365:                                              ; preds = %336
  %366 = load i32, i32* %5, align 4
  %367 = load i32, i32* @K_HOME, align 4
  %368 = icmp eq i32 %366, %367
  br i1 %368, label %373, label %369

369:                                              ; preds = %365
  %370 = load i32, i32* %5, align 4
  %371 = load i32, i32* @K_KP_HOME, align 4
  %372 = icmp eq i32 %370, %371
  br i1 %372, label %373, label %379

373:                                              ; preds = %369, %365
  %374 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %374, i32 0, i32 0
  store i32 0, i32* %375, align 8
  %376 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %377 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %376, i32 0, i32 1
  store i32 0, i32* %377, align 4
  %378 = load i32, i32* @qtrue, align 4
  store i32 %378, i32* %3, align 4
  br label %512

379:                                              ; preds = %369
  %380 = load i32, i32* %5, align 4
  %381 = load i32, i32* @K_END, align 4
  %382 = icmp eq i32 %380, %381
  br i1 %382, label %387, label %383

383:                                              ; preds = %379
  %384 = load i32, i32* %5, align 4
  %385 = load i32, i32* @K_KP_END, align 4
  %386 = icmp eq i32 %384, %385
  br i1 %386, label %387, label %408

387:                                              ; preds = %383, %379
  %388 = load i32, i32* %7, align 4
  %389 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %389, i32 0, i32 0
  store i32 %388, i32* %390, align 8
  %391 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %395 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %394, i32 0, i32 2
  %396 = load i32, i32* %395, align 4
  %397 = icmp sgt i32 %393, %396
  br i1 %397, label %398, label %406

398:                                              ; preds = %387
  %399 = load i32, i32* %7, align 4
  %400 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %401 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %400, i32 0, i32 2
  %402 = load i32, i32* %401, align 4
  %403 = sub nsw i32 %399, %402
  %404 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %405 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %404, i32 0, i32 1
  store i32 %403, i32* %405, align 4
  br label %406

406:                                              ; preds = %398, %387
  %407 = load i32, i32* @qtrue, align 4
  store i32 %407, i32* %3, align 4
  br label %512

408:                                              ; preds = %383
  %409 = load i32, i32* %5, align 4
  %410 = load i32, i32* @K_INS, align 4
  %411 = icmp eq i32 %409, %410
  br i1 %411, label %416, label %412

412:                                              ; preds = %408
  %413 = load i32, i32* %5, align 4
  %414 = load i32, i32* @K_KP_INS, align 4
  %415 = icmp eq i32 %413, %414
  br i1 %415, label %416, label %429

416:                                              ; preds = %412, %408
  %417 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DC, align 8
  %418 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %417, i32 0, i32 1
  %419 = load i32 (i32)*, i32 (i32)** %418, align 8
  %420 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DC, align 8
  %421 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %420, i32 0, i32 0
  %422 = load i32 (...)*, i32 (...)** %421, align 8
  %423 = call i32 (...) %422()
  %424 = icmp ne i32 %423, 0
  %425 = xor i1 %424, true
  %426 = zext i1 %425 to i32
  %427 = call i32 %419(i32 %426)
  %428 = load i32, i32* @qtrue, align 4
  store i32 %428, i32* %3, align 4
  br label %512

429:                                              ; preds = %412
  br label %430

430:                                              ; preds = %429, %237
  %431 = load i32, i32* %5, align 4
  %432 = load i32, i32* @K_TAB, align 4
  %433 = icmp eq i32 %431, %432
  br i1 %433, label %442, label %434

434:                                              ; preds = %430
  %435 = load i32, i32* %5, align 4
  %436 = load i32, i32* @K_DOWNARROW, align 4
  %437 = icmp eq i32 %435, %436
  br i1 %437, label %442, label %438

438:                                              ; preds = %434
  %439 = load i32, i32* %5, align 4
  %440 = load i32, i32* @K_KP_DOWNARROW, align 4
  %441 = icmp eq i32 %439, %440
  br i1 %441, label %442, label %464

442:                                              ; preds = %438, %434, %430
  %443 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %444 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %443, i32 0, i32 2
  %445 = load i32, i32* %444, align 8
  %446 = call %struct.TYPE_8__* @Menu_SetNextCursorItem(i32 %445)
  store %struct.TYPE_8__* %446, %struct.TYPE_8__** %8, align 8
  %447 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %448 = icmp ne %struct.TYPE_8__* %447, null
  br i1 %448, label %449, label %463

449:                                              ; preds = %442
  %450 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %451 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %450, i32 0, i32 1
  %452 = load i64, i64* %451, align 8
  %453 = load i64, i64* @ITEM_TYPE_EDITFIELD, align 8
  %454 = icmp eq i64 %452, %453
  br i1 %454, label %461, label %455

455:                                              ; preds = %449
  %456 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %457 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %456, i32 0, i32 1
  %458 = load i64, i64* %457, align 8
  %459 = load i64, i64* @ITEM_TYPE_NUMERICFIELD, align 8
  %460 = icmp eq i64 %458, %459
  br i1 %460, label %461, label %463

461:                                              ; preds = %455, %449
  %462 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %462, %struct.TYPE_8__** @g_editItem, align 8
  br label %463

463:                                              ; preds = %461, %455, %442
  br label %464

464:                                              ; preds = %463, %438
  %465 = load i32, i32* %5, align 4
  %466 = load i32, i32* @K_UPARROW, align 4
  %467 = icmp eq i32 %465, %466
  br i1 %467, label %472, label %468

468:                                              ; preds = %464
  %469 = load i32, i32* %5, align 4
  %470 = load i32, i32* @K_KP_UPARROW, align 4
  %471 = icmp eq i32 %469, %470
  br i1 %471, label %472, label %494

472:                                              ; preds = %468, %464
  %473 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %474 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %473, i32 0, i32 2
  %475 = load i32, i32* %474, align 8
  %476 = call %struct.TYPE_8__* @Menu_SetPrevCursorItem(i32 %475)
  store %struct.TYPE_8__* %476, %struct.TYPE_8__** %8, align 8
  %477 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %478 = icmp ne %struct.TYPE_8__* %477, null
  br i1 %478, label %479, label %493

479:                                              ; preds = %472
  %480 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %481 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %480, i32 0, i32 1
  %482 = load i64, i64* %481, align 8
  %483 = load i64, i64* @ITEM_TYPE_EDITFIELD, align 8
  %484 = icmp eq i64 %482, %483
  br i1 %484, label %491, label %485

485:                                              ; preds = %479
  %486 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %487 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %486, i32 0, i32 1
  %488 = load i64, i64* %487, align 8
  %489 = load i64, i64* @ITEM_TYPE_NUMERICFIELD, align 8
  %490 = icmp eq i64 %488, %489
  br i1 %490, label %491, label %493

491:                                              ; preds = %485, %479
  %492 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %492, %struct.TYPE_8__** @g_editItem, align 8
  br label %493

493:                                              ; preds = %491, %485, %472
  br label %494

494:                                              ; preds = %493, %468
  %495 = load i32, i32* %5, align 4
  %496 = load i32, i32* @K_ENTER, align 4
  %497 = icmp eq i32 %495, %496
  br i1 %497, label %506, label %498

498:                                              ; preds = %494
  %499 = load i32, i32* %5, align 4
  %500 = load i32, i32* @K_KP_ENTER, align 4
  %501 = icmp eq i32 %499, %500
  br i1 %501, label %506, label %502

502:                                              ; preds = %498
  %503 = load i32, i32* %5, align 4
  %504 = load i32, i32* @K_ESCAPE, align 4
  %505 = icmp eq i32 %503, %504
  br i1 %505, label %506, label %508

506:                                              ; preds = %502, %498, %494
  %507 = load i32, i32* @qfalse, align 4
  store i32 %507, i32* %3, align 4
  br label %512

508:                                              ; preds = %502
  %509 = load i32, i32* @qtrue, align 4
  store i32 %509, i32* %3, align 4
  br label %512

510:                                              ; preds = %2
  %511 = load i32, i32* @qfalse, align 4
  store i32 %511, i32* %3, align 4
  br label %512

512:                                              ; preds = %510, %508, %506, %416, %406, %373, %363, %330, %309, %280, %189, %155, %130, %116, %98
  %513 = load i32, i32* %3, align 4
  ret i32 %513
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_8__* @Menu_SetNextCursorItem(i32) #1

declare dso_local %struct.TYPE_8__* @Menu_SetPrevCursorItem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
