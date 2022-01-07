; ModuleID = '/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_load_model.c_DeserialiseTag.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_load_model.c_DeserialiseTag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32**, i32 }
%struct.TYPE_6__ = type { i32 (i8*, i64, float*)*, i32 (i8*, i64, i64, float*)*, i32 (i8*, i64, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64, %struct.TYPE_6__*, i8*)* @DeserialiseTag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DeserialiseTag(%struct.TYPE_5__* %0, i64 %1, %struct.TYPE_6__* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [3 x float], align 4
  %11 = alloca i64, align 8
  %12 = alloca [3 x float], align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %15, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 %16(i8* %17, i64 %18, i32 %21)
  store i64 0, i64* %9, align 8
  br label %23

23:                                               ; preds = %55, %4
  %24 = load i64, i64* %9, align 8
  %25 = icmp ult i64 %24, 3
  br i1 %25, label %26, label %58

26:                                               ; preds = %23
  store i64 0, i64* %11, align 8
  br label %27

27:                                               ; preds = %43, %26
  %28 = load i64, i64* %11, align 8
  %29 = icmp ult i64 %28, 3
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32**, i32*** %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds i32*, i32** %33, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call float @LittleFloat(i32 %39)
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 %41
  store float %40, float* %42, align 4
  br label %43

43:                                               ; preds = %30
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %11, align 8
  br label %27

46:                                               ; preds = %27
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32 (i8*, i64, i64, float*)*, i32 (i8*, i64, i64, float*)** %48, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 0
  %54 = call i32 %49(i8* %50, i64 %51, i64 %52, float* %53)
  br label %55

55:                                               ; preds = %46
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %9, align 8
  br label %23

58:                                               ; preds = %23
  store i64 0, i64* %13, align 8
  br label %59

59:                                               ; preds = %72, %58
  %60 = load i64, i64* %13, align 8
  %61 = icmp ult i64 %60, 3
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %13, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call float @LittleFloat(i32 %68)
  %70 = load i64, i64* %13, align 8
  %71 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 %70
  store float %69, float* %71, align 4
  br label %72

72:                                               ; preds = %62
  %73 = load i64, i64* %13, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %13, align 8
  br label %59

75:                                               ; preds = %59
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32 (i8*, i64, float*)*, i32 (i8*, i64, float*)** %77, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load i64, i64* %6, align 8
  %81 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 0
  %82 = call i32 %78(i8* %79, i64 %80, float* %81)
  ret void
}

declare dso_local float @LittleFloat(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
