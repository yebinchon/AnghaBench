; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_FillInNormalizedZ.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_FillInNormalizedZ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8**, i32, i32)* @FillInNormalizedZ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FillInNormalizedZ(i8** %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %94, %4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %97

25:                                               ; preds = %21
  %26 = load i8**, i8*** %5, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = mul nsw i32 %27, %28
  %30 = mul nsw i32 %29, 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %26, i64 %31
  store i8** %32, i8*** %11, align 8
  %33 = load i8**, i8*** %6, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %7, align 4
  %36 = mul nsw i32 %34, %35
  %37 = mul nsw i32 %36, 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %33, i64 %38
  store i8** %39, i8*** %12, align 8
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %90, %25
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %93

44:                                               ; preds = %40
  %45 = load i8**, i8*** %11, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i32 1
  store i8** %46, i8*** %11, align 8
  %47 = load i8*, i8** %45, align 8
  store i8* %47, i8** %13, align 8
  %48 = load i8**, i8*** %11, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i32 1
  store i8** %49, i8*** %11, align 8
  %50 = load i8*, i8** %48, align 8
  store i8* %50, i8** %14, align 8
  %51 = load i8**, i8*** %11, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i32 1
  store i8** %52, i8*** %11, align 8
  %53 = load i8**, i8*** %11, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i32 1
  store i8** %54, i8*** %11, align 8
  %55 = load i8*, i8** %53, align 8
  store i8* %55, i8** %16, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = call float @OffsetByteToFloat(i8* %56)
  store float %57, float* %17, align 4
  %58 = load i8*, i8** %14, align 8
  %59 = call float @OffsetByteToFloat(i8* %58)
  store float %59, float* %18, align 4
  %60 = load float, float* %17, align 4
  %61 = load float, float* %17, align 4
  %62 = fmul float %60, %61
  %63 = fsub float 1.000000e+00, %62
  %64 = load float, float* %18, align 4
  %65 = load float, float* %18, align 4
  %66 = fmul float %64, %65
  %67 = fsub float %63, %66
  store float %67, float* %19, align 4
  %68 = load float, float* %19, align 4
  %69 = fcmp oge float %68, 0.000000e+00
  br i1 %69, label %70, label %74

70:                                               ; preds = %44
  %71 = load float, float* %19, align 4
  %72 = call i64 @sqrt(float %71)
  %73 = sitofp i64 %72 to float
  store float %73, float* %20, align 4
  br label %75

74:                                               ; preds = %44
  store float 0.000000e+00, float* %20, align 4
  br label %75

75:                                               ; preds = %74, %70
  %76 = load float, float* %20, align 4
  %77 = call i8* @FloatToOffsetByte(float %76)
  store i8* %77, i8** %15, align 8
  %78 = load i8*, i8** %13, align 8
  %79 = load i8**, i8*** %12, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i32 1
  store i8** %80, i8*** %12, align 8
  store i8* %78, i8** %79, align 8
  %81 = load i8*, i8** %14, align 8
  %82 = load i8**, i8*** %12, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i32 1
  store i8** %83, i8*** %12, align 8
  store i8* %81, i8** %82, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = load i8**, i8*** %12, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i32 1
  store i8** %86, i8*** %12, align 8
  store i8* %84, i8** %85, align 8
  %87 = load i8*, i8** %16, align 8
  %88 = load i8**, i8*** %12, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i32 1
  store i8** %89, i8*** %12, align 8
  store i8* %87, i8** %88, align 8
  br label %90

90:                                               ; preds = %75
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %40

93:                                               ; preds = %40
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %21

97:                                               ; preds = %21
  ret void
}

declare dso_local float @OffsetByteToFloat(i8*) #1

declare dso_local i64 @sqrt(float) #1

declare dso_local i8* @FloatToOffsetByte(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
