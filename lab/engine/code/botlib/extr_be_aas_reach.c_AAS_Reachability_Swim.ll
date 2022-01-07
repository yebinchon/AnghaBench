; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_reach.c_AAS_Reachability_Swim.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_reach.c_AAS_Reachability_Swim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, %struct.TYPE_10__*, %struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64*, i64*, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_11__*, i32, i32, i32, i64 }

@qfalse = common dso_local global i32 0, align 4
@aasworld = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@PRESENCE_NORMAL = common dso_local global i32 0, align 4
@CONTENTS_LAVA = common dso_local global i32 0, align 4
@CONTENTS_SLIME = common dso_local global i32 0, align 4
@CONTENTS_WATER = common dso_local global i32 0, align 4
@INSIDEUNITS = common dso_local global i32 0, align 4
@TRAVEL_SWIM = common dso_local global i32 0, align 4
@areareachability = common dso_local global %struct.TYPE_11__** null, align 8
@reach_swim = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_Reachability_Swim(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @AAS_AreaSwim(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @AAS_AreaSwim(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20, %2
  %25 = load i32, i32* @qfalse, align 4
  store i32 %25, i32* %3, align 4
  br label %231

26:                                               ; preds = %20
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @aasworld, i32 0, i32 4), align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PRESENCE_NORMAL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* @qfalse, align 4
  store i32 %37, i32* %3, align 4
  br label %231

38:                                               ; preds = %26
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @aasworld, i32 0, i32 3), align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i64 %41
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %11, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @aasworld, i32 0, i32 3), align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i64 %45
  store %struct.TYPE_13__* %46, %struct.TYPE_13__** %12, align 8
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %89, %38
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 3
  br i1 %49, label %50, label %92

50:                                               ; preds = %47
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 10
  %66 = icmp sgt i64 %57, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %50
  %68 = load i32, i32* @qfalse, align 4
  store i32 %68, i32* %3, align 4
  br label %231

69:                                               ; preds = %50
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %83, 10
  %85 = icmp slt i64 %76, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %69
  %87 = load i32, i32* @qfalse, align 4
  store i32 %87, i32* %3, align 4
  br label %231

88:                                               ; preds = %69
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %47

92:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %226, %92
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %229

99:                                               ; preds = %93
  %100 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @aasworld, i32 0, i32 0), align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %100, i64 %106
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %109, 0
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @abs(i32 %112) #3
  store i32 %113, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %114

114:                                              ; preds = %222, %99
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %225

120:                                              ; preds = %114
  %121 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @aasworld, i32 0, i32 0), align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %121, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @abs(i32 %129) #3
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %221

134:                                              ; preds = %120
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %16, align 4
  %137 = call i32 @AAS_FaceCenter(i32 %135, i32 %136)
  %138 = load i32, i32* %16, align 4
  %139 = call i32 @AAS_PointContents(i32 %138)
  %140 = load i32, i32* @CONTENTS_LAVA, align 4
  %141 = load i32, i32* @CONTENTS_SLIME, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @CONTENTS_WATER, align 4
  %144 = or i32 %142, %143
  %145 = and i32 %139, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %220

147:                                              ; preds = %134
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @aasworld, i32 0, i32 2), align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i64 %150
  store %struct.TYPE_12__* %151, %struct.TYPE_12__** %14, align 8
  %152 = call %struct.TYPE_11__* (...) @AAS_AllocReachability()
  store %struct.TYPE_11__* %152, %struct.TYPE_11__** %13, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %154 = icmp ne %struct.TYPE_11__* %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %147
  %156 = load i32, i32* @qfalse, align 4
  store i32 %156, i32* %3, align 4
  br label %231

157:                                              ; preds = %147
  %158 = load i32, i32* %5, align 4
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 7
  store i64 0, i64* %165, align 8
  %166 = load i32, i32* %16, align 4
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @VectorCopy(i32 %166, i32 %169)
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @aasworld, i32 0, i32 1), align 8
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %10, align 4
  %176 = xor i32 %174, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i64 %177
  store %struct.TYPE_10__* %178, %struct.TYPE_10__** %15, align 8
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @INSIDEUNITS, align 4
  %183 = sub nsw i32 0, %182
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @VectorMA(i32 %181, i32 %183, i32 %186, i32 %189)
  %191 = load i32, i32* @TRAVEL_SWIM, align 4
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 4
  store i32 %191, i32* %193, align 8
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 2
  store i32 1, i32* %195, align 8
  %196 = load i32, i32* %5, align 4
  %197 = call i32 @AAS_AreaVolume(i32 %196)
  %198 = icmp slt i32 %197, 800
  br i1 %198, label %199, label %204

199:                                              ; preds = %157
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = add nsw i32 %202, 200
  store i32 %203, i32* %201, align 8
  br label %204

204:                                              ; preds = %199, %157
  %205 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @areareachability, align 8
  %206 = load i32, i32* %4, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %205, i64 %207
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %208, align 8
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 3
  store %struct.TYPE_11__* %209, %struct.TYPE_11__** %211, align 8
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %213 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @areareachability, align 8
  %214 = load i32, i32* %4, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %213, i64 %215
  store %struct.TYPE_11__* %212, %struct.TYPE_11__** %216, align 8
  %217 = load i32, i32* @reach_swim, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* @reach_swim, align 4
  %219 = load i32, i32* @qtrue, align 4
  store i32 %219, i32* %3, align 4
  br label %231

220:                                              ; preds = %134
  br label %221

221:                                              ; preds = %220, %120
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %7, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %7, align 4
  br label %114

225:                                              ; preds = %114
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %6, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %6, align 4
  br label %93

229:                                              ; preds = %93
  %230 = load i32, i32* @qfalse, align 4
  store i32 %230, i32* %3, align 4
  br label %231

231:                                              ; preds = %229, %204, %155, %86, %67, %36, %24
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

declare dso_local i32 @AAS_AreaSwim(i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @AAS_FaceCenter(i32, i32) #1

declare dso_local i32 @AAS_PointContents(i32) #1

declare dso_local %struct.TYPE_11__* @AAS_AllocReachability(...) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @VectorMA(i32, i32, i32, i32) #1

declare dso_local i32 @AAS_AreaVolume(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
