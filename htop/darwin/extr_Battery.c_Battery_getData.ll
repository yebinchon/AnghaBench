; ModuleID = '/home/carl/AnghaBench/htop/darwin/extr_Battery.c_Battery_getData.c'
source_filename = "/home/carl/AnghaBench/htop/darwin/extr_Battery.c_Battery_getData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AC_ERROR = common dso_local global i32 0, align 4
@kIOPSTransportTypeKey = common dso_local global i32 0, align 4
@kCFCompareEqualTo = common dso_local global i64 0, align 8
@kIOPSInternalType = common dso_local global i32 0, align 4
@kIOPSPowerSourceStateKey = common dso_local global i32 0, align 4
@kIOPSACPowerValue = common dso_local global i32 0, align 4
@AC_PRESENT = common dso_local global i32 0, align 4
@AC_ABSENT = common dso_local global i32 0, align 4
@kIOPSCurrentCapacityKey = common dso_local global i32 0, align 4
@kCFNumberDoubleType = common dso_local global i32 0, align 4
@kIOPSMaxCapacityKey = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Battery_getData(double* %0, i32* %1) #0 {
  %3 = alloca double*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store double* %0, double** %3, align 8
  store i32* %1, i32** %4, align 8
  %15 = call i32* (...) @IOPSCopyPowerSourcesInfo()
  store i32* %15, i32** %5, align 8
  %16 = load double*, double** %3, align 8
  store double -1.000000e+00, double* %16, align 8
  %17 = load i32, i32* @AC_ERROR, align 4
  %18 = load i32*, i32** %4, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = icmp eq i32* null, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %118

22:                                               ; preds = %2
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %118

25:                                               ; preds = %22
  %26 = load i32*, i32** %5, align 8
  %27 = call i32* @IOPSCopyPowerSourcesList(i32* %26)
  store i32* %27, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = icmp eq i32* null, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @CFRelease(i32* %31)
  br label %118

33:                                               ; preds = %25
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @CFArrayGetCount(i32* %34)
  store i32 %35, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %70, %33
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32*, i32** %7, align 8
  %42 = icmp eq i32* %41, null
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi i1 [ false, %36 ], [ %42, %40 ]
  br i1 %44, label %45, label %73

45:                                               ; preds = %43
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @CFArrayGetValueAtIndex(i32* %47, i32 %48)
  %50 = call i32* @IOPSGetPowerSourceDescription(i32* %46, i32 %49)
  store i32* %50, i32** %10, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = icmp ne i32* null, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %45
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* @kIOPSTransportTypeKey, align 4
  %56 = call i32 @CFSTR(i32 %55)
  %57 = call i64 @CFDictionaryGetValue(i32* %54, i32 %56)
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* @kCFCompareEqualTo, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load i32, i32* @kIOPSInternalType, align 4
  %61 = call i32 @CFSTR(i32 %60)
  %62 = call i64 @CFStringCompare(i64 %59, i32 %61, i32 0)
  %63 = icmp eq i64 %58, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %53
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @CFRetain(i32* %65)
  %67 = load i32*, i32** %10, align 8
  store i32* %67, i32** %7, align 8
  br label %68

68:                                               ; preds = %64, %53
  br label %69

69:                                               ; preds = %68, %45
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %36

73:                                               ; preds = %43
  %74 = load i32*, i32** %7, align 8
  %75 = icmp ne i32* null, %74
  br i1 %75, label %76, label %113

76:                                               ; preds = %73
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* @kIOPSPowerSourceStateKey, align 4
  %79 = call i32 @CFSTR(i32 %78)
  %80 = call i64 @CFDictionaryGetValue(i32* %77, i32 %79)
  store i64 %80, i64* %12, align 8
  %81 = load i64, i64* @kCFCompareEqualTo, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load i32, i32* @kIOPSACPowerValue, align 4
  %84 = call i32 @CFSTR(i32 %83)
  %85 = call i64 @CFStringCompare(i64 %82, i32 %84, i32 0)
  %86 = icmp eq i64 %81, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %76
  %88 = load i32, i32* @AC_PRESENT, align 4
  br label %91

89:                                               ; preds = %76
  %90 = load i32, i32* @AC_ABSENT, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = load i32*, i32** %4, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* @kIOPSCurrentCapacityKey, align 4
  %96 = call i32 @CFSTR(i32 %95)
  %97 = call i64 @CFDictionaryGetValue(i32* %94, i32 %96)
  %98 = load i32, i32* @kCFNumberDoubleType, align 4
  %99 = call i32 @CFNumberGetValue(i64 %97, i32 %98, double* %13)
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* @kIOPSMaxCapacityKey, align 4
  %102 = call i32 @CFSTR(i32 %101)
  %103 = call i64 @CFDictionaryGetValue(i32* %100, i32 %102)
  %104 = load i32, i32* @kCFNumberDoubleType, align 4
  %105 = call i32 @CFNumberGetValue(i64 %103, i32 %104, double* %14)
  %106 = load double, double* %13, align 8
  %107 = fmul double %106, 1.000000e+02
  %108 = load double, double* %14, align 8
  %109 = fdiv double %107, %108
  %110 = load double*, double** %3, align 8
  store double %109, double* %110, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = call i32 @CFRelease(i32* %111)
  br label %113

113:                                              ; preds = %91, %73
  %114 = load i32*, i32** %6, align 8
  %115 = call i32 @CFRelease(i32* %114)
  %116 = load i32*, i32** %5, align 8
  %117 = call i32 @CFRelease(i32* %116)
  br label %118

118:                                              ; preds = %21, %30, %113, %22
  ret void
}

declare dso_local i32* @IOPSCopyPowerSourcesInfo(...) #1

declare dso_local i32* @IOPSCopyPowerSourcesList(i32*) #1

declare dso_local i32 @CFRelease(i32*) #1

declare dso_local i32 @CFArrayGetCount(i32*) #1

declare dso_local i32* @IOPSGetPowerSourceDescription(i32*, i32) #1

declare dso_local i32 @CFArrayGetValueAtIndex(i32*, i32) #1

declare dso_local i64 @CFDictionaryGetValue(i32*, i32) #1

declare dso_local i32 @CFSTR(i32) #1

declare dso_local i64 @CFStringCompare(i64, i32, i32) #1

declare dso_local i32 @CFRetain(i32*) #1

declare dso_local i32 @CFNumberGetValue(i64, i32, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
