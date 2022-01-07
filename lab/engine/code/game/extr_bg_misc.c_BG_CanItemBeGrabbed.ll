; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_bg_misc.c_BG_CanItemBeGrabbed.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_bg_misc.c_BG_CanItemBeGrabbed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i32*, i64*, i32*, i32* }

@qtrue = common dso_local global i32 0, align 4
@bg_numItems = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"BG_CanItemBeGrabbed: index out of range\00", align 1
@bg_itemlist = common dso_local global %struct.TYPE_9__* null, align 8
@qfalse = common dso_local global i32 0, align 4
@STAT_ARMOR = common dso_local global i64 0, align 8
@STAT_MAX_HEALTH = common dso_local global i64 0, align 8
@STAT_HEALTH = common dso_local global i64 0, align 8
@GT_CTF = common dso_local global i32 0, align 4
@PERS_TEAM = common dso_local global i64 0, align 8
@TEAM_RED = common dso_local global i32 0, align 4
@PW_BLUEFLAG = common dso_local global i64 0, align 8
@PW_REDFLAG = common dso_local global i64 0, align 8
@TEAM_BLUE = common dso_local global i32 0, align 4
@STAT_HOLDABLE_ITEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"BG_CanItemBeGrabbed: IT_BAD\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"BG_CanItemBeGrabbed: unknown enum %d\0A\00", align 1
@GT_1FCTF = common dso_local global i32 0, align 4
@GT_HARVESTER = common dso_local global i32 0, align 4
@PW_GUARD = common dso_local global i64 0, align 8
@PW_NEUTRALFLAG = common dso_local global i64 0, align 8
@PW_SCOUT = common dso_local global i64 0, align 8
@STAT_PERSISTANT_POWERUP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BG_CanItemBeGrabbed(i32 %0, %struct.TYPE_10__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %10 = load i32, i32* @qtrue, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @bg_numItems, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15, %3
  %22 = load i32, i32* @ERR_DROP, align 4
  %23 = call i32 @Com_Error(i32 %22, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %15
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** @bg_itemlist, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i64 %29
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %8, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %24
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = call i32 @dmlab_can_pickup(i64 %38, %struct.TYPE_8__* %39)
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %35, %24
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %242 [
    i32 128, label %45
    i32 138, label %47
    i32 137, label %61
    i32 134, label %80
    i32 131, label %127
    i32 129, label %129
    i32 133, label %223
    i32 130, label %235
    i32 135, label %237
    i32 136, label %239
  ]

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %249

47:                                               ; preds = %41
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %55, 200
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* @qfalse, align 4
  store i32 %58, i32* %4, align 4
  br label %249

59:                                               ; preds = %47
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %249

61:                                               ; preds = %41
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* @STAT_ARMOR, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* @STAT_MAX_HEALTH, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = mul i64 %73, 2
  %75 = icmp uge i64 %67, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %61
  %77 = load i32, i32* @qfalse, align 4
  store i32 %77, i32* %4, align 4
  br label %249

78:                                               ; preds = %61
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %4, align 4
  br label %249

80:                                               ; preds = %41
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 5
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 100
  br i1 %89, label %90, label %109

90:                                               ; preds = %85, %80
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* @STAT_HEALTH, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = load i64, i64* @STAT_MAX_HEALTH, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = mul i64 %102, 2
  %104 = icmp uge i64 %96, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %90
  %106 = load i32, i32* @qfalse, align 4
  store i32 %106, i32* %4, align 4
  br label %249

107:                                              ; preds = %90
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %4, align 4
  br label %249

109:                                              ; preds = %85
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i64*, i64** %111, align 8
  %113 = load i64, i64* @STAT_HEALTH, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i64*, i64** %117, align 8
  %119 = load i64, i64* @STAT_MAX_HEALTH, align 8
  %120 = getelementptr inbounds i64, i64* %118, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = icmp uge i64 %115, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %109
  %124 = load i32, i32* @qfalse, align 4
  store i32 %124, i32* %4, align 4
  br label %249

125:                                              ; preds = %109
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %4, align 4
  br label %249

127:                                              ; preds = %41
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %4, align 4
  br label %249

129:                                              ; preds = %41
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @GT_CTF, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %221

133:                                              ; preds = %129
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = load i64, i64* @PERS_TEAM, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @TEAM_RED, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %176

142:                                              ; preds = %133
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @PW_BLUEFLAG, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %173, label %148

148:                                              ; preds = %142
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @PW_REDFLAG, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %148
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %173, label %159

159:                                              ; preds = %154, %148
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @PW_REDFLAG, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %175

165:                                              ; preds = %159
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = load i64, i64* @PW_BLUEFLAG, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %165, %154, %142
  %174 = load i32, i32* %9, align 4
  store i32 %174, i32* %4, align 4
  br label %249

175:                                              ; preds = %165, %159
  br label %220

176:                                              ; preds = %133
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 3
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* @PERS_TEAM, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @TEAM_BLUE, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %219

185:                                              ; preds = %176
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @PW_REDFLAG, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %216, label %191

191:                                              ; preds = %185
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @PW_BLUEFLAG, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %202

197:                                              ; preds = %191
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %216, label %202

202:                                              ; preds = %197, %191
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @PW_BLUEFLAG, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %218

208:                                              ; preds = %202
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = load i64, i64* @PW_REDFLAG, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %208, %197, %185
  %217 = load i32, i32* %9, align 4
  store i32 %217, i32* %4, align 4
  br label %249

218:                                              ; preds = %208, %202
  br label %219

219:                                              ; preds = %218, %176
  br label %220

220:                                              ; preds = %219, %175
  br label %221

221:                                              ; preds = %220, %129
  %222 = load i32, i32* @qfalse, align 4
  store i32 %222, i32* %4, align 4
  br label %249

223:                                              ; preds = %41
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 1
  %226 = load i64*, i64** %225, align 8
  %227 = load i64, i64* @STAT_HOLDABLE_ITEM, align 8
  %228 = getelementptr inbounds i64, i64* %226, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %223
  %232 = load i32, i32* @qfalse, align 4
  store i32 %232, i32* %4, align 4
  br label %249

233:                                              ; preds = %223
  %234 = load i32, i32* %9, align 4
  store i32 %234, i32* %4, align 4
  br label %249

235:                                              ; preds = %41
  %236 = load i32, i32* %9, align 4
  store i32 %236, i32* %4, align 4
  br label %249

237:                                              ; preds = %41
  %238 = load i32, i32* %9, align 4
  store i32 %238, i32* %4, align 4
  br label %249

239:                                              ; preds = %41
  %240 = load i32, i32* @ERR_DROP, align 4
  %241 = call i32 @Com_Error(i32 %240, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %242

242:                                              ; preds = %41, %239
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @Com_Printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %245)
  br label %247

247:                                              ; preds = %242
  %248 = load i32, i32* @qfalse, align 4
  store i32 %248, i32* %4, align 4
  br label %249

249:                                              ; preds = %247, %237, %235, %233, %231, %221, %216, %173, %127, %125, %123, %107, %105, %78, %76, %59, %57, %45
  %250 = load i32, i32* %4, align 4
  ret i32 %250
}

declare dso_local i32 @Com_Error(i32, i8*) #1

declare dso_local i32 @dmlab_can_pickup(i64, %struct.TYPE_8__*) #1

declare dso_local i32 @Com_Printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
