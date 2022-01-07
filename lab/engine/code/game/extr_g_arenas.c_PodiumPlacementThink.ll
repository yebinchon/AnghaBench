; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_arenas.c_PodiumPlacementThink.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_arenas.c_PodiumPlacementThink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, i64*, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, i64 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64* }

@level = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@.str = private unnamed_addr constant [13 x i8] c"g_podiumDist\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"g_podiumDrop\00", align 1
@podium1 = common dso_local global %struct.TYPE_14__* null, align 8
@PITCH = common dso_local global i64 0, align 8
@ROLL = common dso_local global i64 0, align 8
@offsetFirst = common dso_local global i64* null, align 8
@podium2 = common dso_local global %struct.TYPE_14__* null, align 8
@offsetSecond = common dso_local global i64* null, align 8
@podium3 = common dso_local global %struct.TYPE_14__* null, align 8
@offsetThird = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @PodiumPlacementThink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PodiumPlacementThink(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @level, i32 0, i32 2), align 8
  %9 = add nsw i64 %8, 100
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 2
  store i64 %9, i64* %11, align 8
  %12 = load i64*, i64** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @level, i32 0, i32 1), align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @AngleVectors(i64* %12, i32* %13, i32* null, i32* null)
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @level, i32 0, i32 0), align 8
  %16 = call i64 @trap_Cvar_VariableIntegerValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %3, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @VectorMA(i32* %15, i64 %16, i32* %17, i32* %18)
  %20 = call i64 @trap_Cvar_VariableIntegerValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = sub nsw i64 %24, %20
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %22, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @G_SetOrigin(%struct.TYPE_14__* %27, i32* %28)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** @podium1, align 8
  %31 = icmp ne %struct.TYPE_14__* %30, null
  br i1 %31, label %32, label %97

32:                                               ; preds = %1
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @level, i32 0, i32 0), align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @VectorSubtract(i32* %33, i32* %37, i32* %38)
  %40 = load i32*, i32** %3, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** @podium1, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = call i32 @vectoangles(i32* %40, i64* %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** @podium1, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* @PITCH, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** @podium1, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* @ROLL, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** @podium1, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @AngleVectors(i64* %65, i32* %66, i32* %67, i32* %68)
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i64*, i64** @offsetFirst, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @VectorMA(i32* %73, i64 %76, i32* %77, i32* %78)
  %80 = load i32*, i32** %3, align 8
  %81 = load i64*, i64** @offsetFirst, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 1
  %83 = load i64, i64* %82, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @VectorMA(i32* %80, i64 %83, i32* %84, i32* %85)
  %87 = load i32*, i32** %3, align 8
  %88 = load i64*, i64** @offsetFirst, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 2
  %90 = load i64, i64* %89, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @VectorMA(i32* %87, i64 %90, i32* %91, i32* %92)
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** @podium1, align 8
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 @G_SetOrigin(%struct.TYPE_14__* %94, i32* %95)
  br label %97

97:                                               ; preds = %32, %1
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** @podium2, align 8
  %99 = icmp ne %struct.TYPE_14__* %98, null
  br i1 %99, label %100, label %165

100:                                              ; preds = %97
  %101 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @level, i32 0, i32 0), align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @VectorSubtract(i32* %101, i32* %105, i32* %106)
  %108 = load i32*, i32** %3, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** @podium2, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = call i32 @vectoangles(i32* %108, i64* %113)
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** @podium2, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = load i64, i64* @PITCH, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  store i64 0, i64* %121, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** @podium2, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = load i64, i64* @ROLL, align 8
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  store i64 0, i64* %128, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** @podium2, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i64*, i64** %132, align 8
  %134 = load i32*, i32** %5, align 8
  %135 = load i32*, i32** %6, align 8
  %136 = load i32*, i32** %7, align 8
  %137 = call i32 @AngleVectors(i64* %133, i32* %134, i32* %135, i32* %136)
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i64*, i64** @offsetSecond, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 0
  %144 = load i64, i64* %143, align 8
  %145 = load i32*, i32** %5, align 8
  %146 = load i32*, i32** %3, align 8
  %147 = call i32 @VectorMA(i32* %141, i64 %144, i32* %145, i32* %146)
  %148 = load i32*, i32** %3, align 8
  %149 = load i64*, i64** @offsetSecond, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 1
  %151 = load i64, i64* %150, align 8
  %152 = load i32*, i32** %6, align 8
  %153 = load i32*, i32** %3, align 8
  %154 = call i32 @VectorMA(i32* %148, i64 %151, i32* %152, i32* %153)
  %155 = load i32*, i32** %3, align 8
  %156 = load i64*, i64** @offsetSecond, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 2
  %158 = load i64, i64* %157, align 8
  %159 = load i32*, i32** %7, align 8
  %160 = load i32*, i32** %3, align 8
  %161 = call i32 @VectorMA(i32* %155, i64 %158, i32* %159, i32* %160)
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** @podium2, align 8
  %163 = load i32*, i32** %3, align 8
  %164 = call i32 @G_SetOrigin(%struct.TYPE_14__* %162, i32* %163)
  br label %165

165:                                              ; preds = %100, %97
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** @podium3, align 8
  %167 = icmp ne %struct.TYPE_14__* %166, null
  br i1 %167, label %168, label %233

168:                                              ; preds = %165
  %169 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @level, i32 0, i32 0), align 8
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i32*, i32** %3, align 8
  %175 = call i32 @VectorSubtract(i32* %169, i32* %173, i32* %174)
  %176 = load i32*, i32** %3, align 8
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** @podium3, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load i64*, i64** %180, align 8
  %182 = call i32 @vectoangles(i32* %176, i64* %181)
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** @podium3, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = load i64*, i64** %186, align 8
  %188 = load i64, i64* @PITCH, align 8
  %189 = getelementptr inbounds i64, i64* %187, i64 %188
  store i64 0, i64* %189, align 8
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** @podium3, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 0
  %194 = load i64*, i64** %193, align 8
  %195 = load i64, i64* @ROLL, align 8
  %196 = getelementptr inbounds i64, i64* %194, i64 %195
  store i64 0, i64* %196, align 8
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** @podium3, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 0
  %201 = load i64*, i64** %200, align 8
  %202 = load i32*, i32** %5, align 8
  %203 = load i32*, i32** %6, align 8
  %204 = load i32*, i32** %7, align 8
  %205 = call i32 @AngleVectors(i64* %201, i32* %202, i32* %203, i32* %204)
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load i64*, i64** @offsetThird, align 8
  %211 = getelementptr inbounds i64, i64* %210, i64 0
  %212 = load i64, i64* %211, align 8
  %213 = load i32*, i32** %5, align 8
  %214 = load i32*, i32** %3, align 8
  %215 = call i32 @VectorMA(i32* %209, i64 %212, i32* %213, i32* %214)
  %216 = load i32*, i32** %3, align 8
  %217 = load i64*, i64** @offsetThird, align 8
  %218 = getelementptr inbounds i64, i64* %217, i64 1
  %219 = load i64, i64* %218, align 8
  %220 = load i32*, i32** %6, align 8
  %221 = load i32*, i32** %3, align 8
  %222 = call i32 @VectorMA(i32* %216, i64 %219, i32* %220, i32* %221)
  %223 = load i32*, i32** %3, align 8
  %224 = load i64*, i64** @offsetThird, align 8
  %225 = getelementptr inbounds i64, i64* %224, i64 2
  %226 = load i64, i64* %225, align 8
  %227 = load i32*, i32** %7, align 8
  %228 = load i32*, i32** %3, align 8
  %229 = call i32 @VectorMA(i32* %223, i64 %226, i32* %227, i32* %228)
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** @podium3, align 8
  %231 = load i32*, i32** %3, align 8
  %232 = call i32 @G_SetOrigin(%struct.TYPE_14__* %230, i32* %231)
  br label %233

233:                                              ; preds = %168, %165
  ret void
}

declare dso_local i32 @AngleVectors(i64*, i32*, i32*, i32*) #1

declare dso_local i32 @VectorMA(i32*, i64, i32*, i32*) #1

declare dso_local i64 @trap_Cvar_VariableIntegerValue(i8*) #1

declare dso_local i32 @G_SetOrigin(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #1

declare dso_local i32 @vectoangles(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
