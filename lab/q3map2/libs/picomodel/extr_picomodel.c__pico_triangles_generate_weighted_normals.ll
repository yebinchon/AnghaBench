; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_picomodel.c__pico_triangles_generate_weighted_normals.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/extr_picomodel.c__pico_triangles_generate_weighted_normals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_pico_triangles_generate_weighted_normals(i64* %0, i64* %1, float** %2, float** %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca float**, align 8
  %8 = alloca float**, align 8
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store float** %2, float*** %7, align 8
  store float** %3, float*** %8, align 8
  br label %17

17:                                               ; preds = %84, %4
  %18 = load i64*, i64** %5, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = icmp ne i64* %18, %19
  br i1 %20, label %21, label %87

21:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %80, %21
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 3
  br i1 %24, label %25, label %83

25:                                               ; preds = %22
  %26 = load float**, float*** %8, align 8
  %27 = load i64*, i64** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds float*, float** %26, i64 %31
  %33 = load float*, float** %32, align 8
  store float* %33, float** %10, align 8
  %34 = load float**, float*** %7, align 8
  %35 = load i64*, i64** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 0
  %38 = srem i32 %37, 3
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %35, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds float*, float** %34, i64 %41
  %43 = load float*, float** %42, align 8
  store float* %43, float** %12, align 8
  %44 = load float**, float*** %7, align 8
  %45 = load i64*, i64** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  %48 = srem i32 %47, 3
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %45, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds float*, float** %44, i64 %51
  %53 = load float*, float** %52, align 8
  store float* %53, float** %13, align 8
  %54 = load float**, float*** %7, align 8
  %55 = load i64*, i64** %5, align 8
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 2
  %58 = srem i32 %57, 3
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %55, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds float*, float** %54, i64 %61
  %63 = load float*, float** %62, align 8
  store float* %63, float** %14, align 8
  %64 = load float*, float** %13, align 8
  %65 = load float*, float** %12, align 8
  %66 = load float*, float** %15, align 8
  %67 = call i32 @_pico_subtract_vec(float* %64, float* %65, float* %66)
  %68 = load float*, float** %14, align 8
  %69 = load float*, float** %12, align 8
  %70 = load float*, float** %16, align 8
  %71 = call i32 @_pico_subtract_vec(float* %68, float* %69, float* %70)
  %72 = load float*, float** %16, align 8
  %73 = load float*, float** %15, align 8
  %74 = load float*, float** %11, align 8
  %75 = call i32 @_pico_cross_vec(float* %72, float* %73, float* %74)
  %76 = load float*, float** %11, align 8
  %77 = load float*, float** %10, align 8
  %78 = load float*, float** %10, align 8
  %79 = call i32 @_pico_add_vec(float* %76, float* %77, float* %78)
  br label %80

80:                                               ; preds = %25
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %22

83:                                               ; preds = %22
  br label %84

84:                                               ; preds = %83
  %85 = load i64*, i64** %5, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 3
  store i64* %86, i64** %5, align 8
  br label %17

87:                                               ; preds = %17
  ret void
}

declare dso_local i32 @_pico_subtract_vec(float*, float*, float*) #1

declare dso_local i32 @_pico_cross_vec(float*, float*, float*) #1

declare dso_local i32 @_pico_add_vec(float*, float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
