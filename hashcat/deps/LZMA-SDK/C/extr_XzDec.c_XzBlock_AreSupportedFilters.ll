; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzDec.c_XzBlock_AreSupportedFilters.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzDec.c_XzBlock_AreSupportedFilters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32, i32* }

@XZ_ID_LZMA2 = common dso_local global i64 0, align 8
@False = common dso_local global i32 0, align 4
@XZ_ID_Delta = common dso_local global i64 0, align 8
@XZ_ID_SPARC = common dso_local global i64 0, align 8
@True = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @XzBlock_AreSupportedFilters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @XzBlock_AreSupportedFilters(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = call i32 @XzBlock_GetNumFilters(%struct.TYPE_6__* %8)
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %4, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %15
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %6, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @XZ_ID_LZMA2, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 40
  br i1 %33, label %34, label %36

34:                                               ; preds = %27, %22, %1
  %35 = load i32, i32* @False, align 4
  store i32 %35, i32* %2, align 4
  br label %92

36:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %87, %36
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %90

41:                                               ; preds = %37
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %7, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @XZ_ID_Delta, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %41
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 1
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @False, align 4
  store i32 %59, i32* %2, align 4
  br label %92

60:                                               ; preds = %53
  br label %86

61:                                               ; preds = %41
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @XZ_ID_Delta, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %83, label %67

67:                                               ; preds = %61
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @XZ_ID_SPARC, align 8
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %83, label %73

73:                                               ; preds = %67
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 4
  br i1 %82, label %83, label %85

83:                                               ; preds = %78, %67, %61
  %84 = load i32, i32* @False, align 4
  store i32 %84, i32* %2, align 4
  br label %92

85:                                               ; preds = %78, %73
  br label %86

86:                                               ; preds = %85, %60
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %5, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %37

90:                                               ; preds = %37
  %91 = load i32, i32* @True, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %83, %58, %34
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @XzBlock_GetNumFilters(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
