; ModuleID = '/home/carl/AnghaBench/htop/openbsd/extr_Platform.c_Platform_setCPUValues.c'
source_filename = "/home/carl/AnghaBench/htop/openbsd/extr_Platform.c_Platform_setCPUValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { double*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@CPUSTATES = common dso_local global i32 0, align 4
@CTL_KERN = common dso_local global i32 0, align 4
@KERN_CPTIME2 = common dso_local global i32 0, align 4
@old_v = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @Platform_setCPUValues(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca double*, align 8
  %15 = alloca i64, align 8
  %16 = alloca [3 x i32], align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %8, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 %26
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %9, align 8
  %28 = load i32, i32* @CPUSTATES, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %10, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %11, align 8
  %32 = load i32, i32* @CPUSTATES, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %12, align 8
  %35 = load i32, i32* @CPUSTATES, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %13, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load double*, double** %39, align 8
  store double* %40, double** %14, align 8
  %41 = load i32, i32* @CPUSTATES, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 8, %42
  store i64 %43, i64* %15, align 8
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %45 = load i32, i32* @CTL_KERN, align 4
  store i32 %45, i32* %44, align 4
  %46 = getelementptr inbounds i32, i32* %44, i64 1
  %47 = load i32, i32* @KERN_CPTIME2, align 4
  store i32 %47, i32* %46, align 4
  %48 = getelementptr inbounds i32, i32* %46, i64 1
  %49 = load i32, i32* %5, align 4
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %52 = call i32 @sysctl(i32* %51, i32 3, i32* %31, i64* %15, i32* null, i32 0)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %2
  store double 0.000000e+00, double* %3, align 8
  store i32 1, i32* %17, align 4
  br label %123

55:                                               ; preds = %2
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = load i32, i32* @CPUSTATES, align 4
  %59 = load i32**, i32*** @old_v, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %59, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @percentages(i32 %58, i32* %34, i32* %31, i32* %64, i32* %37)
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %94, %55
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @CPUSTATES, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %97

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %31, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32**, i32*** @old_v, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %75, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %74, i32* %83, align 4
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %34, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = sitofp i32 %87 to double
  %89 = fdiv double %88, 1.000000e+01
  %90 = load double*, double** %14, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds double, double* %90, i64 %92
  store double %89, double* %93, align 8
  br label %94

94:                                               ; preds = %70
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %66

97:                                               ; preds = %66
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %99 = call i32 @Meter_setItems(%struct.TYPE_7__* %98, i32 4)
  %100 = load double*, double** %14, align 8
  %101 = getelementptr inbounds double, double* %100, i64 0
  %102 = load double, double* %101, align 8
  %103 = load double*, double** %14, align 8
  %104 = getelementptr inbounds double, double* %103, i64 1
  %105 = load double, double* %104, align 8
  %106 = fadd double %102, %105
  %107 = load double*, double** %14, align 8
  %108 = getelementptr inbounds double, double* %107, i64 2
  %109 = load double, double* %108, align 8
  %110 = fadd double %106, %109
  %111 = load double*, double** %14, align 8
  %112 = getelementptr inbounds double, double* %111, i64 3
  %113 = load double, double* %112, align 8
  %114 = fadd double %110, %113
  store double %114, double* %7, align 8
  %115 = load double, double* %7, align 8
  %116 = fcmp ole double %115, 1.000000e+02
  br i1 %116, label %117, label %122

117:                                              ; preds = %97
  %118 = load double, double* %7, align 8
  %119 = fcmp oge double %118, 0.000000e+00
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load double, double* %7, align 8
  store double %121, double* %3, align 8
  store i32 1, i32* %17, align 4
  br label %123

122:                                              ; preds = %117, %97
  store double 0.000000e+00, double* %3, align 8
  store i32 1, i32* %17, align 4
  br label %123

123:                                              ; preds = %122, %120, %54
  %124 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load double, double* %3, align 8
  ret double %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sysctl(i32*, i32, i32*, i64*, i32*, i32) #2

declare dso_local i32 @percentages(i32, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @Meter_setItems(%struct.TYPE_7__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
