; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_tetrahedron.c_TH_CreateAASFaceTriangles.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_tetrahedron.c_TH_CreateAASFaceTriangles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@thworld = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @TH_CreateAASFaceTriangles(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [3 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %14, align 8
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %88, %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %91

21:                                               ; preds = %15
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %25, %26
  %28 = sub nsw i32 %27, 2
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = srem i32 %28, %31
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @TH_AASFaceVertex(%struct.TYPE_11__* %22, i32 %32, i32 %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %38, %39
  %41 = sub nsw i32 %40, 1
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = srem i32 %41, %44
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @TH_AASFaceVertex(%struct.TYPE_11__* %35, i32 %45, i32 %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = srem i32 %49, %52
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @TH_AASFaceVertex(%struct.TYPE_11__* %48, i32 %53, i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i64 @TH_Colinear(i32 %56, i32 %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %21
  br label %88

62:                                               ; preds = %21
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = srem i32 %65, %68
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @TH_AASFaceVertex(%struct.TYPE_11__* %63, i32 %69, i32 %70)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 2
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = srem i32 %74, %77
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @TH_AASFaceVertex(%struct.TYPE_11__* %72, i32 %78, i32 %79)
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i64 @TH_Colinear(i32 %81, i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %62
  br label %88

87:                                               ; preds = %62
  br label %91

88:                                               ; preds = %86, %61
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %15

91:                                               ; preds = %87, %15
  %92 = load i32, i32* %3, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %155

97:                                               ; preds = %91
  %98 = load i32, i32* %3, align 4
  store i32 %98, i32* %4, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @TH_AASFaceVertex(%struct.TYPE_11__* %99, i32 %100, i32 %101)
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @TH_FindOrCreateVertex(i32 %103)
  %105 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 %104, i32* %105, align 4
  store i32 1, i32* %3, align 4
  br label %106

106:                                              ; preds = %151, %97
  %107 = load i32, i32* %3, align 4
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %110, 1
  %112 = icmp slt i32 %107, %111
  br i1 %112, label %113, label %154

113:                                              ; preds = %106
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %3, align 4
  %117 = add nsw i32 %115, %116
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = srem i32 %117, %120
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @TH_AASFaceVertex(%struct.TYPE_11__* %114, i32 %121, i32 %122)
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* %3, align 4
  %127 = add nsw i32 %125, %126
  %128 = add nsw i32 %127, 1
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = srem i32 %128, %131
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @TH_AASFaceVertex(%struct.TYPE_11__* %124, i32 %132, i32 %133)
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @TH_FindOrCreateVertex(i32 %135)
  %137 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  store i32 %136, i32* %137, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @TH_FindOrCreateVertex(i32 %138)
  %140 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  store i32 %139, i32* %140, align 4
  %141 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %142 = call i32 @TH_CreateTriangle(i32* %141)
  store i32 %142, i32* %6, align 4
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @thworld, i32 0, i32 0), align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i64 %145
  store %struct.TYPE_10__* %146, %struct.TYPE_10__** %13, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  store i32 -1, i32* %148, align 4
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %150 = call i32 @TH_AddTriangleToList(%struct.TYPE_10__** %14, %struct.TYPE_10__* %149)
  br label %151

151:                                              ; preds = %113
  %152 = load i32, i32* %3, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %3, align 4
  br label %106

154:                                              ; preds = %106
  br label %213

155:                                              ; preds = %91
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @TH_FaceCenter(%struct.TYPE_11__* %156, i32 %157)
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @TH_FindOrCreateVertex(i32 %159)
  %161 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 %160, i32* %161, align 4
  store i32 0, i32* %3, align 4
  br label %162

162:                                              ; preds = %209, %155
  %163 = load i32, i32* %3, align 4
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp slt i32 %163, %166
  br i1 %167, label %168, label %212

168:                                              ; preds = %162
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %170 = load i32, i32* %3, align 4
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = srem i32 %170, %173
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @TH_AASFaceVertex(%struct.TYPE_11__* %169, i32 %174, i32 %175)
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %178 = load i32, i32* %3, align 4
  %179 = add nsw i32 %178, 1
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = srem i32 %179, %182
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @TH_AASFaceVertex(%struct.TYPE_11__* %177, i32 %183, i32 %184)
  %186 = load i32, i32* %12, align 4
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* %9, align 4
  %189 = call i64 @TH_Colinear(i32 %186, i32 %187, i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %168
  br label %209

192:                                              ; preds = %168
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @TH_FindOrCreateVertex(i32 %193)
  %195 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  store i32 %194, i32* %195, align 4
  %196 = load i32, i32* %9, align 4
  %197 = call i32 @TH_FindOrCreateVertex(i32 %196)
  %198 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  store i32 %197, i32* %198, align 4
  %199 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %200 = call i32 @TH_CreateTriangle(i32* %199)
  store i32 %200, i32* %6, align 4
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @thworld, i32 0, i32 0), align 8
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i64 %203
  store %struct.TYPE_10__* %204, %struct.TYPE_10__** %13, align 8
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  store i32 -1, i32* %206, align 4
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %208 = call i32 @TH_AddTriangleToList(%struct.TYPE_10__** %14, %struct.TYPE_10__* %207)
  br label %209

209:                                              ; preds = %192, %191
  %210 = load i32, i32* %3, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %3, align 4
  br label %162

212:                                              ; preds = %162
  br label %213

213:                                              ; preds = %212, %154
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  ret %struct.TYPE_10__* %214
}

declare dso_local i32 @TH_AASFaceVertex(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @TH_Colinear(i32, i32, i32) #1

declare dso_local i32 @TH_FindOrCreateVertex(i32) #1

declare dso_local i32 @TH_CreateTriangle(i32*) #1

declare dso_local i32 @TH_AddTriangleToList(%struct.TYPE_10__**, %struct.TYPE_10__*) #1

declare dso_local i32 @TH_FaceCenter(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
