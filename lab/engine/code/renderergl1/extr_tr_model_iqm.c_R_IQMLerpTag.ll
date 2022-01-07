; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_model_iqm.c_R_IQMLerpTag.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_model_iqm.c_R_IQMLerpTag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float**, float* }
%struct.TYPE_7__ = type { i8*, i32 }

@IQM_MAX_JOINTS = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @R_IQMLerpTag(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3, float %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store float %4, float* %12, align 4
  store i8* %5, i8** %13, align 8
  %19 = load i32, i32* @IQM_MAX_JOINTS, align 4
  %20 = mul nsw i32 %19, 12
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca float, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %17, align 8
  store i32 0, i32* %16, align 4
  br label %27

27:                                               ; preds = %45, %6
  %28 = load i32, i32* %16, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %27
  %34 = load i8*, i8** %13, align 8
  %35 = load i8*, i8** %17, align 8
  %36 = call i32 @strcmp(i8* %34, i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %48

39:                                               ; preds = %33
  %40 = load i8*, i8** %17, align 8
  %41 = call i64 @strlen(i8* %40)
  %42 = add nsw i64 %41, 1
  %43 = load i8*, i8** %17, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 %42
  store i8* %44, i8** %17, align 8
  br label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %16, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %16, align 4
  br label %27

48:                                               ; preds = %38, %27
  %49 = load i32, i32* %16, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp sge i32 %49, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load float**, float*** %56, align 8
  %58 = call i32 @AxisClear(float** %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load float*, float** %60, align 8
  %62 = call i32 @VectorClear(float* %61)
  %63 = load i32, i32* @qfalse, align 4
  store i32 %63, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %209

64:                                               ; preds = %48
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load float, float* %12, align 4
  %69 = call i32 @ComputeJointMats(%struct.TYPE_7__* %65, i32 %66, i32 %67, float %68, float* %23)
  %70 = load i32, i32* %16, align 4
  %71 = mul nsw i32 12, %70
  %72 = add nsw i32 %71, 0
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %23, i64 %73
  %75 = load float, float* %74, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load float**, float*** %77, align 8
  %79 = getelementptr inbounds float*, float** %78, i64 0
  %80 = load float*, float** %79, align 8
  %81 = getelementptr inbounds float, float* %80, i64 0
  store float %75, float* %81, align 4
  %82 = load i32, i32* %16, align 4
  %83 = mul nsw i32 12, %82
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %23, i64 %85
  %87 = load float, float* %86, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load float**, float*** %89, align 8
  %91 = getelementptr inbounds float*, float** %90, i64 1
  %92 = load float*, float** %91, align 8
  %93 = getelementptr inbounds float, float* %92, i64 0
  store float %87, float* %93, align 4
  %94 = load i32, i32* %16, align 4
  %95 = mul nsw i32 12, %94
  %96 = add nsw i32 %95, 2
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float, float* %23, i64 %97
  %99 = load float, float* %98, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load float**, float*** %101, align 8
  %103 = getelementptr inbounds float*, float** %102, i64 2
  %104 = load float*, float** %103, align 8
  %105 = getelementptr inbounds float, float* %104, i64 0
  store float %99, float* %105, align 4
  %106 = load i32, i32* %16, align 4
  %107 = mul nsw i32 12, %106
  %108 = add nsw i32 %107, 3
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds float, float* %23, i64 %109
  %111 = load float, float* %110, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load float*, float** %113, align 8
  %115 = getelementptr inbounds float, float* %114, i64 0
  store float %111, float* %115, align 4
  %116 = load i32, i32* %16, align 4
  %117 = mul nsw i32 12, %116
  %118 = add nsw i32 %117, 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %23, i64 %119
  %121 = load float, float* %120, align 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load float**, float*** %123, align 8
  %125 = getelementptr inbounds float*, float** %124, i64 0
  %126 = load float*, float** %125, align 8
  %127 = getelementptr inbounds float, float* %126, i64 1
  store float %121, float* %127, align 4
  %128 = load i32, i32* %16, align 4
  %129 = mul nsw i32 12, %128
  %130 = add nsw i32 %129, 5
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, float* %23, i64 %131
  %133 = load float, float* %132, align 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load float**, float*** %135, align 8
  %137 = getelementptr inbounds float*, float** %136, i64 1
  %138 = load float*, float** %137, align 8
  %139 = getelementptr inbounds float, float* %138, i64 1
  store float %133, float* %139, align 4
  %140 = load i32, i32* %16, align 4
  %141 = mul nsw i32 12, %140
  %142 = add nsw i32 %141, 6
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds float, float* %23, i64 %143
  %145 = load float, float* %144, align 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load float**, float*** %147, align 8
  %149 = getelementptr inbounds float*, float** %148, i64 2
  %150 = load float*, float** %149, align 8
  %151 = getelementptr inbounds float, float* %150, i64 1
  store float %145, float* %151, align 4
  %152 = load i32, i32* %16, align 4
  %153 = mul nsw i32 12, %152
  %154 = add nsw i32 %153, 7
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds float, float* %23, i64 %155
  %157 = load float, float* %156, align 4
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = load float*, float** %159, align 8
  %161 = getelementptr inbounds float, float* %160, i64 1
  store float %157, float* %161, align 4
  %162 = load i32, i32* %16, align 4
  %163 = mul nsw i32 12, %162
  %164 = add nsw i32 %163, 8
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float, float* %23, i64 %165
  %167 = load float, float* %166, align 4
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load float**, float*** %169, align 8
  %171 = getelementptr inbounds float*, float** %170, i64 0
  %172 = load float*, float** %171, align 8
  %173 = getelementptr inbounds float, float* %172, i64 2
  store float %167, float* %173, align 4
  %174 = load i32, i32* %16, align 4
  %175 = mul nsw i32 12, %174
  %176 = add nsw i32 %175, 9
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, float* %23, i64 %177
  %179 = load float, float* %178, align 4
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load float**, float*** %181, align 8
  %183 = getelementptr inbounds float*, float** %182, i64 1
  %184 = load float*, float** %183, align 8
  %185 = getelementptr inbounds float, float* %184, i64 2
  store float %179, float* %185, align 4
  %186 = load i32, i32* %16, align 4
  %187 = mul nsw i32 12, %186
  %188 = add nsw i32 %187, 10
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float, float* %23, i64 %189
  %191 = load float, float* %190, align 4
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load float**, float*** %193, align 8
  %195 = getelementptr inbounds float*, float** %194, i64 2
  %196 = load float*, float** %195, align 8
  %197 = getelementptr inbounds float, float* %196, i64 2
  store float %191, float* %197, align 4
  %198 = load i32, i32* %16, align 4
  %199 = mul nsw i32 12, %198
  %200 = add nsw i32 %199, 11
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, float* %23, i64 %201
  %203 = load float, float* %202, align 4
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 1
  %206 = load float*, float** %205, align 8
  %207 = getelementptr inbounds float, float* %206, i64 2
  store float %203, float* %207, align 4
  %208 = load i32, i32* @qtrue, align 4
  store i32 %208, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %209

209:                                              ; preds = %64, %54
  %210 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %210)
  %211 = load i32, i32* %7, align 4
  ret i32 %211
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @AxisClear(float**) #2

declare dso_local i32 @VectorClear(float*) #2

declare dso_local i32 @ComputeJointMats(%struct.TYPE_7__*, i32, i32, float, float*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
