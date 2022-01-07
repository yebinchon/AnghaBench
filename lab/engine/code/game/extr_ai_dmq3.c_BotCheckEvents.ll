; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotCheckEvents.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotCheckEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i8*, i8*, i32, i8*, i32, i8* }
%struct.TYPE_12__ = type { i64, i64, i64, i32, i32, i32, i32 }

@g_entities = common dso_local global %struct.TYPE_15__* null, align 8
@ET_EVENTS = common dso_local global i64 0, align 8
@EV_EVENT_BITS = common dso_local global i64 0, align 8
@ENTITYNUM_NONE = common dso_local global i32 0, align 4
@ENTITYNUM_WORLD = common dso_local global i32 0, align 4
@qtrue = common dso_local global i8* null, align 8
@qfalse = common dso_local global i8* null, align 8
@MAX_SOUNDS = common dso_local global i32 0, align 4
@PRT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"EV_GLOBAL_SOUND: eventParm (%d) out of range\0A\00", align 1
@CS_SOUNDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"sound/items/poweruprespawn.wav\00", align 1
@gametype = common dso_local global i32 0, align 4
@GT_CTF = common dso_local global i32 0, align 4
@lastteleport_origin = common dso_local global i32 0, align 4
@lastteleport_time = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"EV_GENERAL_SOUND: eventParm (%d) out of range\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"*falling1.wav\00", align 1
@INVENTORY_TELEPORTER = common dso_local global i64 0, align 8
@GT_1FCTF = common dso_local global i32 0, align 4
@PW_NEUTRALFLAG = common dso_local global i32 0, align 4
@TEAM_BLUE = common dso_local global i32 0, align 4
@TEAM_RED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotCheckEvents(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [128 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i64, i64* %12, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** @g_entities, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %17, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %295

27:                                               ; preds = %2
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** @g_entities, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i64, i64* %37, i64 %40
  store i64 %34, i64* %41, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ET_EVENTS, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %27
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ET_EVENTS, align 8
  %52 = sub nsw i64 %50, %51
  %53 = load i64, i64* @EV_EVENT_BITS, align 8
  %54 = xor i64 %53, -1
  %55 = and i64 %52, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %5, align 4
  br label %65

57:                                               ; preds = %27
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @EV_EVENT_BITS, align 8
  %62 = xor i64 %61, -1
  %63 = and i64 %60, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %57, %47
  %66 = load i32, i32* %5, align 4
  switch i32 %66, label %295 [
    i32 161, label %67
    i32 167, label %150
    i32 166, label %182
    i32 160, label %232
    i32 169, label %239
    i32 172, label %293
    i32 171, label %293
    i32 173, label %293
    i32 170, label %293
    i32 155, label %293
    i32 175, label %293
    i32 176, label %293
    i32 177, label %293
    i32 157, label %293
    i32 156, label %293
    i32 159, label %293
    i32 158, label %293
    i32 163, label %293
    i32 164, label %293
    i32 154, label %293
    i32 135, label %293
    i32 136, label %293
    i32 134, label %293
    i32 137, label %293
    i32 165, label %293
    i32 168, label %293
    i32 162, label %293
    i32 178, label %293
    i32 174, label %293
    i32 153, label %294
    i32 152, label %294
    i32 145, label %294
    i32 144, label %294
    i32 143, label %294
    i32 142, label %294
    i32 141, label %294
    i32 140, label %294
    i32 139, label %294
    i32 138, label %294
    i32 151, label %294
    i32 150, label %294
    i32 149, label %294
    i32 148, label %294
    i32 147, label %294
    i32 146, label %294
  ]

67:                                               ; preds = %65
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %7, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %8, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %82, label %113

82:                                               ; preds = %67
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %100, label %92

92:                                               ; preds = %82
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @ENTITYNUM_NONE, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @ENTITYNUM_WORLD, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96, %92, %82
  %101 = load i8*, i8** @qtrue, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 16
  store i8* %101, i8** %103, align 8
  br label %108

104:                                              ; preds = %96
  %105 = load i8*, i8** @qfalse, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 16
  store i8* %105, i8** %107, align 8
  br label %108

108:                                              ; preds = %104, %100
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 15
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 8
  br label %149

113:                                              ; preds = %67
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %114, %117
  br i1 %118, label %119, label %133

119:                                              ; preds = %113
  %120 = load i32, i32* %9, align 4
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 8
  %126 = call i8* (...) @FloatTime()
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 14
  store i8* %126, i8** %128, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 13
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 8
  br label %148

133:                                              ; preds = %113
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %134, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %133
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load i8*, i8** @qtrue, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 12
  store i8* %144, i8** %146, align 8
  br label %147

147:                                              ; preds = %143, %139, %133
  br label %148

148:                                              ; preds = %147, %119
  br label %149

149:                                              ; preds = %148, %108
  br label %295

150:                                              ; preds = %65
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %161, label %155

155:                                              ; preds = %150
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @MAX_SOUNDS, align 4
  %160 = icmp sge i32 %158, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %155, %150
  %162 = load i32, i32* @PRT_ERROR, align 4
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @BotAI_Print(i32 %162, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %165)
  br label %295

167:                                              ; preds = %155
  %168 = load i32, i32* @CS_SOUNDS, align 4
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %168, %171
  %173 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %174 = call i32 @trap_GetConfigstring(i32 %172, i8* %173, i32 128)
  %175 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %176 = call i32 @strcmp(i8* %175, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %167
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %180 = call i32 @BotGoForPowerups(%struct.TYPE_13__* %179)
  br label %181

181:                                              ; preds = %178, %167
  br label %295

182:                                              ; preds = %65
  %183 = load i32, i32* @gametype, align 4
  %184 = load i32, i32* @GT_CTF, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %231

186:                                              ; preds = %182
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  switch i32 %189, label %230 [
    i32 130, label %190
    i32 133, label %198
    i32 129, label %206
    i32 132, label %212
    i32 128, label %218
    i32 131, label %224
  ]

190:                                              ; preds = %186
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 8
  store i32 0, i32* %192, align 4
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 9
  store i32 0, i32* %194, align 8
  %195 = load i8*, i8** @qtrue, align 8
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 11
  store i8* %195, i8** %197, align 8
  br label %230

198:                                              ; preds = %186
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 8
  store i32 0, i32* %200, align 4
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 9
  store i32 0, i32* %202, align 8
  %203 = load i8*, i8** @qtrue, align 8
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 11
  store i8* %203, i8** %205, align 8
  br label %230

206:                                              ; preds = %186
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 8
  store i32 0, i32* %208, align 4
  %209 = load i8*, i8** @qtrue, align 8
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 11
  store i8* %209, i8** %211, align 8
  br label %230

212:                                              ; preds = %186
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 9
  store i32 0, i32* %214, align 8
  %215 = load i8*, i8** @qtrue, align 8
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 11
  store i8* %215, i8** %217, align 8
  br label %230

218:                                              ; preds = %186
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 8
  store i32 1, i32* %220, align 4
  %221 = load i8*, i8** @qtrue, align 8
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 11
  store i8* %221, i8** %223, align 8
  br label %230

224:                                              ; preds = %186
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 9
  store i32 1, i32* %226, align 8
  %227 = load i8*, i8** @qtrue, align 8
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 11
  store i8* %227, i8** %229, align 8
  br label %230

230:                                              ; preds = %186, %224, %218, %212, %206, %198, %190
  br label %231

231:                                              ; preds = %230, %182
  br label %295

232:                                              ; preds = %65
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 6
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @lastteleport_origin, align 4
  %237 = call i32 @VectorCopy(i32 %235, i32 %236)
  %238 = call i8* (...) @FloatTime()
  store i8* %238, i8** @lastteleport_time, align 8
  br label %295

239:                                              ; preds = %65
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = sext i32 %245 to i64
  %247 = icmp eq i64 %242, %246
  br i1 %247, label %248, label %292

248:                                              ; preds = %239
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 8
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %259, label %253

253:                                              ; preds = %248
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @MAX_SOUNDS, align 4
  %258 = icmp sge i32 %256, %257
  br i1 %258, label %259, label %265

259:                                              ; preds = %253, %248
  %260 = load i32, i32* @PRT_ERROR, align 4
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @BotAI_Print(i32 %260, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %263)
  br label %295

265:                                              ; preds = %253
  %266 = load i32, i32* @CS_SOUNDS, align 4
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 8
  %270 = add nsw i32 %266, %269
  %271 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %272 = call i32 @trap_GetConfigstring(i32 %270, i8* %271, i32 128)
  %273 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %274 = call i32 @strcmp(i8* %273, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %291, label %276

276:                                              ; preds = %265
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 10
  %279 = load i32*, i32** %278, align 8
  %280 = load i64, i64* @INVENTORY_TELEPORTER, align 8
  %281 = getelementptr inbounds i32, i32* %279, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = icmp sgt i32 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %276
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = sext i32 %287 to i64
  %289 = call i32 @trap_EA_Use(i64 %288)
  br label %290

290:                                              ; preds = %284, %276
  br label %291

291:                                              ; preds = %290, %265
  br label %292

292:                                              ; preds = %291, %239
  br label %295

293:                                              ; preds = %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65
  br label %295

294:                                              ; preds = %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65, %65
  br label %295

295:                                              ; preds = %26, %65, %294, %293, %292, %259, %232, %231, %181, %161, %149
  ret void
}

declare dso_local i8* @FloatTime(...) #1

declare dso_local i32 @BotAI_Print(i32, i8*, i32) #1

declare dso_local i32 @trap_GetConfigstring(i32, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @BotGoForPowerups(%struct.TYPE_13__*) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @trap_EA_Use(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
