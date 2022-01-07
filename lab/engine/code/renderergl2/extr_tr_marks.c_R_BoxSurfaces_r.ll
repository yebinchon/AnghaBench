; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_marks.c_R_BoxSurfaces_r.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_marks.c_R_BoxSurfaces_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32*, i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64*, %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_13__**, %struct.TYPE_15__* }

@tr = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@SURF_NOIMPACT = common dso_local global i32 0, align 4
@SURF_NOMARKS = common dso_local global i32 0, align 4
@CONTENTS_FOG = common dso_local global i32 0, align 4
@SF_FACE = common dso_local global i64 0, align 8
@SF_GRID = common dso_local global i64 0, align 8
@SF_TRIANGLES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_BoxSurfaces_r(%struct.TYPE_13__* %0, i32 %1, i32 %2, i64** %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64** %3, i64*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  br label %20

20:                                               ; preds = %67, %7
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %68

25:                                               ; preds = %20
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = call i32 @BoxOnPlaneSide(i32 %26, i32 %27, %struct.TYPE_15__* %30)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %37, i64 0
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  store %struct.TYPE_13__* %39, %struct.TYPE_13__** %8, align 8
  br label %67

40:                                               ; preds = %25
  %41 = load i32, i32* %15, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %46, i64 1
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %8, align 8
  br label %66

49:                                               ; preds = %40
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %52, i64 0
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i64**, i64*** %11, align 8
  %58 = load i32, i32* %12, align 4
  %59 = load i32*, i32** %13, align 8
  %60 = load i32, i32* %14, align 4
  call void @R_BoxSurfaces_r(%struct.TYPE_13__* %54, i32 %55, i32 %56, i64** %57, i32 %58, i32* %59, i32 %60)
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %63, i64 1
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  store %struct.TYPE_13__* %65, %struct.TYPE_13__** %8, align 8
  br label %66

66:                                               ; preds = %49, %43
  br label %67

67:                                               ; preds = %66, %34
  br label %20

68:                                               ; preds = %20
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 1), align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  store i32* %76, i32** %18, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %16, align 4
  br label %80

80:                                               ; preds = %201, %68
  %81 = load i32, i32* %16, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %16, align 4
  %83 = icmp ne i32 %81, 0
  br i1 %83, label %84, label %204

84:                                               ; preds = %80
  %85 = load i32*, i32** %13, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp sge i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %204

90:                                               ; preds = %84
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 1), align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32*, i32** %18, align 8
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  store i32* %97, i32** %19, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 1), align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = load i32*, i32** %18, align 8
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i64 %103
  store %struct.TYPE_12__* %104, %struct.TYPE_12__** %17, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @SURF_NOIMPACT, align 4
  %111 = load i32, i32* @SURF_NOMARKS, align 4
  %112 = or i32 %110, %111
  %113 = and i32 %109, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %124, label %115

115:                                              ; preds = %90
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @CONTENTS_FOG, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %115, %90
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0), align 8
  %126 = load i32*, i32** %19, align 8
  store i32 %125, i32* %126, align 4
  br label %182

127:                                              ; preds = %115
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @SF_FACE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %163

134:                                              ; preds = %127
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %10, align 4
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = call i32 @BoxOnPlaneSide(i32 %135, i32 %136, %struct.TYPE_15__* %139)
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* %15, align 4
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %146, label %143

143:                                              ; preds = %134
  %144 = load i32, i32* %15, align 4
  %145 = icmp eq i32 %144, 2
  br i1 %145, label %146, label %149

146:                                              ; preds = %143, %134
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0), align 8
  %148 = load i32*, i32** %19, align 8
  store i32 %147, i32* %148, align 4
  br label %162

149:                                              ; preds = %143
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %14, align 4
  %156 = call double @DotProduct(i32 %154, i32 %155)
  %157 = fcmp ogt double %156, -5.000000e-01
  br i1 %157, label %158, label %161

158:                                              ; preds = %149
  %159 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0), align 8
  %160 = load i32*, i32** %19, align 8
  store i32 %159, i32* %160, align 4
  br label %161

161:                                              ; preds = %158, %149
  br label %162

162:                                              ; preds = %161, %146
  br label %181

163:                                              ; preds = %127
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i64*, i64** %165, align 8
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @SF_GRID, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %180

170:                                              ; preds = %163
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = load i64*, i64** %172, align 8
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @SF_TRIANGLES, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %170
  %178 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0), align 8
  %179 = load i32*, i32** %19, align 8
  store i32 %178, i32* %179, align 4
  br label %180

180:                                              ; preds = %177, %170, %163
  br label %181

181:                                              ; preds = %180, %162
  br label %182

182:                                              ; preds = %181, %124
  %183 = load i32*, i32** %19, align 8
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0), align 8
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %201

187:                                              ; preds = %182
  %188 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0), align 8
  %189 = load i32*, i32** %19, align 8
  store i32 %188, i32* %189, align 4
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  %192 = load i64*, i64** %191, align 8
  %193 = load i64**, i64*** %11, align 8
  %194 = load i32*, i32** %13, align 8
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i64*, i64** %193, i64 %196
  store i64* %192, i64** %197, align 8
  %198 = load i32*, i32** %13, align 8
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 4
  br label %201

201:                                              ; preds = %187, %182
  %202 = load i32*, i32** %18, align 8
  %203 = getelementptr inbounds i32, i32* %202, i32 1
  store i32* %203, i32** %18, align 8
  br label %80

204:                                              ; preds = %89, %80
  ret void
}

declare dso_local i32 @BoxOnPlaneSide(i32, i32, %struct.TYPE_15__*) #1

declare dso_local double @DotProduct(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
