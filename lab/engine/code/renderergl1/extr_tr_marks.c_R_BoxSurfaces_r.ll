; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_marks.c_R_BoxSurfaces_r.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_marks.c_R_BoxSurfaces_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__**, %struct.TYPE_11__**, %struct.TYPE_13__* }
%struct.TYPE_10__ = type { i64, i64*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_13__ }

@SURF_NOIMPACT = common dso_local global i32 0, align 4
@SURF_NOMARKS = common dso_local global i32 0, align 4
@CONTENTS_FOG = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@SF_FACE = common dso_local global i64 0, align 8
@SF_GRID = common dso_local global i64 0, align 8
@SF_TRIANGLES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_BoxSurfaces_r(%struct.TYPE_11__* %0, i32 %1, i32 %2, i64** %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca %struct.TYPE_10__**, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64** %3, i64*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  br label %19

19:                                               ; preds = %66, %7
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %67

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = call i32 @BoxOnPlaneSide(i32 %25, i32 %26, %struct.TYPE_13__* %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %36, i64 0
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %8, align 8
  br label %66

39:                                               ; preds = %24
  %40 = load i32, i32* %15, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %45, i64 1
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %8, align 8
  br label %65

48:                                               ; preds = %39
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %51, i64 0
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i64**, i64*** %11, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i32*, i32** %13, align 8
  %59 = load i32, i32* %14, align 4
  call void @R_BoxSurfaces_r(%struct.TYPE_11__* %53, i32 %54, i32 %55, i64** %56, i32 %57, i32* %58, i32 %59)
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %62, i64 1
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  store %struct.TYPE_11__* %64, %struct.TYPE_11__** %8, align 8
  br label %65

65:                                               ; preds = %48, %42
  br label %66

66:                                               ; preds = %65, %33
  br label %19

67:                                               ; preds = %19
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %69, align 8
  store %struct.TYPE_10__** %70, %struct.TYPE_10__*** %18, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %16, align 4
  br label %74

74:                                               ; preds = %193, %67
  %75 = load i32, i32* %16, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %16, align 4
  %77 = icmp ne i32 %75, 0
  br i1 %77, label %78, label %196

78:                                               ; preds = %74
  %79 = load i32*, i32** %13, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %196

84:                                               ; preds = %78
  %85 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %18, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  store %struct.TYPE_10__* %86, %struct.TYPE_10__** %17, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @SURF_NOIMPACT, align 4
  %93 = load i32, i32* @SURF_NOMARKS, align 4
  %94 = or i32 %92, %93
  %95 = and i32 %91, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %84
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @CONTENTS_FOG, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %97, %84
  %107 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  br label %172

110:                                              ; preds = %97
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i64*, i64** %112, align 8
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @SF_FACE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %152

117:                                              ; preds = %110
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  %122 = load i64*, i64** %121, align 8
  %123 = bitcast i64* %122 to %struct.TYPE_9__*
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = call i32 @BoxOnPlaneSide(i32 %118, i32 %119, %struct.TYPE_13__* %124)
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %15, align 4
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %131, label %128

128:                                              ; preds = %117
  %129 = load i32, i32* %15, align 4
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %131, label %135

131:                                              ; preds = %128, %117
  %132 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  br label %151

135:                                              ; preds = %128
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load i64*, i64** %137, align 8
  %139 = bitcast i64* %138 to %struct.TYPE_9__*
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %14, align 4
  %144 = call double @DotProduct(i32 %142, i32 %143)
  %145 = fcmp ogt double %144, -5.000000e-01
  br i1 %145, label %146, label %150

146:                                              ; preds = %135
  %147 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  br label %150

150:                                              ; preds = %146, %135
  br label %151

151:                                              ; preds = %150, %131
  br label %171

152:                                              ; preds = %110
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  %155 = load i64*, i64** %154, align 8
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @SF_GRID, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %170

159:                                              ; preds = %152
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 1
  %162 = load i64*, i64** %161, align 8
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @SF_TRIANGLES, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %159
  %167 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  store i64 %167, i64* %169, align 8
  br label %170

170:                                              ; preds = %166, %159, %152
  br label %171

171:                                              ; preds = %170, %151
  br label %172

172:                                              ; preds = %171, %106
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %193

178:                                              ; preds = %172
  %179 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 8
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  store i64 %179, i64* %181, align 8
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = load i64*, i64** %183, align 8
  %185 = load i64**, i64*** %11, align 8
  %186 = load i32*, i32** %13, align 8
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i64*, i64** %185, i64 %188
  store i64* %184, i64** %189, align 8
  %190 = load i32*, i32** %13, align 8
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %178, %172
  %194 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %18, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %194, i32 1
  store %struct.TYPE_10__** %195, %struct.TYPE_10__*** %18, align 8
  br label %74

196:                                              ; preds = %83, %74
  ret void
}

declare dso_local i32 @BoxOnPlaneSide(i32, i32, %struct.TYPE_13__*) #1

declare dso_local double @DotProduct(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
