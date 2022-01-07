; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_surface.c_LerpMeshVertexes.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_surface.c_LerpMeshVertexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_12__ = type { float**, i64, float**, float** }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { float*, float*, i32 }

@backEnd = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@tess = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, float)* @LerpMeshVertexes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LerpMeshVertexes(%struct.TYPE_11__* %0, float %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca float, align 4
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store float %1, float* %4, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @backEnd, i32 0, i32 0), align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 %17, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i64 %22
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %8, align 8
  %24 = load float**, float*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 0), align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 1), align 8
  %26 = getelementptr inbounds float*, float** %24, i64 %25
  %27 = load float*, float** %26, align 8
  store float* %27, float** %5, align 8
  %28 = load float**, float*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 2), align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 1), align 8
  %30 = getelementptr inbounds float*, float** %28, i64 %29
  %31 = load float*, float** %30, align 8
  store float* %31, float** %6, align 8
  %32 = load float**, float*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 3), align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 1), align 8
  %34 = getelementptr inbounds float*, float** %32, i64 %33
  %35 = load float*, float** %34, align 8
  store float* %35, float** %7, align 8
  %36 = load float, float* %4, align 4
  %37 = fcmp oeq float %36, 0.000000e+00
  br i1 %37, label %38, label %73

38:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %69, %38
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %72

45:                                               ; preds = %39
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load float*, float** %5, align 8
  %50 = call i32 @VectorCopy(i32 %48, float* %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load float*, float** %52, align 8
  %54 = load float*, float** %6, align 8
  %55 = call i32 @VectorCopy4(float* %53, float* %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load float*, float** %57, align 8
  %59 = load float*, float** %7, align 8
  %60 = call i32 @VectorCopy4(float* %58, float* %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 1
  store %struct.TYPE_10__* %62, %struct.TYPE_10__** %8, align 8
  %63 = load float*, float** %5, align 8
  %64 = getelementptr inbounds float, float* %63, i64 4
  store float* %64, float** %5, align 8
  %65 = load float*, float** %6, align 8
  %66 = getelementptr inbounds float, float* %65, i64 4
  store float* %66, float** %6, align 8
  %67 = load float*, float** %7, align 8
  %68 = getelementptr inbounds float, float* %67, i64 4
  store float* %68, float** %7, align 8
  br label %69

69:                                               ; preds = %45
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %39

72:                                               ; preds = %39
  br label %234

73:                                               ; preds = %2
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @backEnd, i32 0, i32 0), align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = mul nsw i32 %80, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i64 %85
  store %struct.TYPE_10__* %86, %struct.TYPE_10__** %10, align 8
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %230, %73
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %233

93:                                               ; preds = %87
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load float, float* %4, align 4
  %101 = load float*, float** %5, align 8
  %102 = call i32 @VectorLerp(i32 %96, i32 %99, float %100, float* %101)
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load float*, float** %104, align 8
  %106 = getelementptr inbounds float, float* %105, i64 0
  %107 = load float, float* %106, align 4
  %108 = load float, float* %4, align 4
  %109 = fsub float 1.000000e+00, %108
  %110 = fmul float %107, %109
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load float*, float** %112, align 8
  %114 = getelementptr inbounds float, float* %113, i64 0
  %115 = load float, float* %114, align 4
  %116 = load float, float* %4, align 4
  %117 = fmul float %115, %116
  %118 = fadd float %110, %117
  %119 = load float*, float** %6, align 8
  %120 = getelementptr inbounds float, float* %119, i64 0
  store float %118, float* %120, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load float*, float** %122, align 8
  %124 = getelementptr inbounds float, float* %123, i64 1
  %125 = load float, float* %124, align 4
  %126 = load float, float* %4, align 4
  %127 = fsub float 1.000000e+00, %126
  %128 = fmul float %125, %127
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load float*, float** %130, align 8
  %132 = getelementptr inbounds float, float* %131, i64 1
  %133 = load float, float* %132, align 4
  %134 = load float, float* %4, align 4
  %135 = fmul float %133, %134
  %136 = fadd float %128, %135
  %137 = load float*, float** %6, align 8
  %138 = getelementptr inbounds float, float* %137, i64 1
  store float %136, float* %138, align 4
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load float*, float** %140, align 8
  %142 = getelementptr inbounds float, float* %141, i64 2
  %143 = load float, float* %142, align 4
  %144 = load float, float* %4, align 4
  %145 = fsub float 1.000000e+00, %144
  %146 = fmul float %143, %145
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load float*, float** %148, align 8
  %150 = getelementptr inbounds float, float* %149, i64 2
  %151 = load float, float* %150, align 4
  %152 = load float, float* %4, align 4
  %153 = fmul float %151, %152
  %154 = fadd float %146, %153
  %155 = load float*, float** %6, align 8
  %156 = getelementptr inbounds float, float* %155, i64 2
  store float %154, float* %156, align 4
  %157 = load float*, float** %6, align 8
  %158 = getelementptr inbounds float, float* %157, i64 3
  store float 0.000000e+00, float* %158, align 4
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  %161 = load float*, float** %160, align 8
  %162 = getelementptr inbounds float, float* %161, i64 0
  %163 = load float, float* %162, align 4
  %164 = load float, float* %4, align 4
  %165 = fsub float 1.000000e+00, %164
  %166 = fmul float %163, %165
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  %169 = load float*, float** %168, align 8
  %170 = getelementptr inbounds float, float* %169, i64 0
  %171 = load float, float* %170, align 4
  %172 = load float, float* %4, align 4
  %173 = fmul float %171, %172
  %174 = fadd float %166, %173
  %175 = load float*, float** %7, align 8
  %176 = getelementptr inbounds float, float* %175, i64 0
  store float %174, float* %176, align 4
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 1
  %179 = load float*, float** %178, align 8
  %180 = getelementptr inbounds float, float* %179, i64 1
  %181 = load float, float* %180, align 4
  %182 = load float, float* %4, align 4
  %183 = fsub float 1.000000e+00, %182
  %184 = fmul float %181, %183
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 1
  %187 = load float*, float** %186, align 8
  %188 = getelementptr inbounds float, float* %187, i64 1
  %189 = load float, float* %188, align 4
  %190 = load float, float* %4, align 4
  %191 = fmul float %189, %190
  %192 = fadd float %184, %191
  %193 = load float*, float** %7, align 8
  %194 = getelementptr inbounds float, float* %193, i64 1
  store float %192, float* %194, align 4
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 1
  %197 = load float*, float** %196, align 8
  %198 = getelementptr inbounds float, float* %197, i64 2
  %199 = load float, float* %198, align 4
  %200 = load float, float* %4, align 4
  %201 = fsub float 1.000000e+00, %200
  %202 = fmul float %199, %201
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 1
  %205 = load float*, float** %204, align 8
  %206 = getelementptr inbounds float, float* %205, i64 2
  %207 = load float, float* %206, align 4
  %208 = load float, float* %4, align 4
  %209 = fmul float %207, %208
  %210 = fadd float %202, %209
  %211 = load float*, float** %7, align 8
  %212 = getelementptr inbounds float, float* %211, i64 2
  store float %210, float* %212, align 4
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 1
  %215 = load float*, float** %214, align 8
  %216 = getelementptr inbounds float, float* %215, i64 3
  %217 = load float, float* %216, align 4
  %218 = load float*, float** %7, align 8
  %219 = getelementptr inbounds float, float* %218, i64 3
  store float %217, float* %219, align 4
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 1
  store %struct.TYPE_10__* %221, %struct.TYPE_10__** %8, align 8
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 1
  store %struct.TYPE_10__* %223, %struct.TYPE_10__** %10, align 8
  %224 = load float*, float** %5, align 8
  %225 = getelementptr inbounds float, float* %224, i64 4
  store float* %225, float** %5, align 8
  %226 = load float*, float** %6, align 8
  %227 = getelementptr inbounds float, float* %226, i64 4
  store float* %227, float** %6, align 8
  %228 = load float*, float** %7, align 8
  %229 = getelementptr inbounds float, float* %228, i64 4
  store float* %229, float** %7, align 8
  br label %230

230:                                              ; preds = %93
  %231 = load i32, i32* %9, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %9, align 4
  br label %87

233:                                              ; preds = %87
  br label %234

234:                                              ; preds = %233, %72
  ret void
}

declare dso_local i32 @VectorCopy(i32, float*) #1

declare dso_local i32 @VectorCopy4(float*, float*) #1

declare dso_local i32 @VectorLerp(i32, i32, float, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
