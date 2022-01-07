; ModuleID = '/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_save_model.c_SerialiseTag.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_save_model.c_SerialiseTag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i8*, i64, float*)*, i32 (i8*, i64, i64, float*)*, i32 (i8*, i64, i32, i32)* }
%struct.TYPE_5__ = type { i8**, i8***, i32 }

@MAX_QPATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.TYPE_6__*, i8*, %struct.TYPE_5__*)* @SerialiseTag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SerialiseTag(i64 %0, %struct.TYPE_6__* %1, i8* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [3 x float], align 4
  %11 = alloca i64, align 8
  %12 = alloca [3 x float], align 4
  %13 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %8, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load i32 (i8*, i64, i32, i32)*, i32 (i8*, i64, i32, i32)** %15, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i32, i32* @MAX_QPATH, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 %16(i8* %17, i64 %18, i32 %19, i32 %22)
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %56, %4
  %25 = load i64, i64* %9, align 8
  %26 = icmp ult i64 %25, 3
  br i1 %26, label %27, label %59

27:                                               ; preds = %24
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32 (i8*, i64, i64, float*)*, i32 (i8*, i64, i64, float*)** %29, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 0
  %35 = call i32 %30(i8* %31, i64 %32, i64 %33, float* %34)
  store i64 0, i64* %11, align 8
  br label %36

36:                                               ; preds = %52, %27
  %37 = load i64, i64* %11, align 8
  %38 = icmp ult i64 %37, 3
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load i64, i64* %11, align 8
  %41 = getelementptr inbounds [3 x float], [3 x float]* %10, i64 0, i64 %40
  %42 = load float, float* %41, align 4
  %43 = call i8* @LittleFloat(float %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i8***, i8**** %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i8**, i8*** %46, i64 %47
  %49 = load i8**, i8*** %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  store i8* %43, i8** %51, align 8
  br label %52

52:                                               ; preds = %39
  %53 = load i64, i64* %11, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %11, align 8
  br label %36

55:                                               ; preds = %36
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %9, align 8
  br label %24

59:                                               ; preds = %24
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32 (i8*, i64, float*)*, i32 (i8*, i64, float*)** %61, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 0
  %66 = call i32 %62(i8* %63, i64 %64, float* %65)
  store i64 0, i64* %13, align 8
  br label %67

67:                                               ; preds = %80, %59
  %68 = load i64, i64* %13, align 8
  %69 = icmp ult i64 %68, 3
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load i64, i64* %13, align 8
  %72 = getelementptr inbounds [3 x float], [3 x float]* %12, i64 0, i64 %71
  %73 = load float, float* %72, align 4
  %74 = call i8* @LittleFloat(float %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i8**, i8*** %76, align 8
  %78 = load i64, i64* %13, align 8
  %79 = getelementptr inbounds i8*, i8** %77, i64 %78
  store i8* %74, i8** %79, align 8
  br label %80

80:                                               ; preds = %70
  %81 = load i64, i64* %13, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %13, align 8
  br label %67

83:                                               ; preds = %67
  ret void
}

declare dso_local i8* @LittleFloat(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
