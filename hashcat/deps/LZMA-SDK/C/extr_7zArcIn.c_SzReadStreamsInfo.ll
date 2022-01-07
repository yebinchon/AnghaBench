; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_7zArcIn.c_SzReadStreamsInfo.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_7zArcIn.c_SzReadStreamsInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@k7zIdPackInfo = common dso_local global i64 0, align 8
@k7zIdUnpackInfo = common dso_local global i64 0, align 8
@k7zIdSubStreamsInfo = common dso_local global i64 0, align 8
@k7zIdEnd = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i32 0, align 4
@SZ_ERROR_UNSUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32, i32*, i32, i64*, %struct.TYPE_10__*, i32)* @SzReadStreamsInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SzReadStreamsInfo(%struct.TYPE_9__* %0, i32* %1, i32 %2, i32* %3, i32 %4, i64* %5, %struct.TYPE_10__* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i64* %5, i64** %14, align 8
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %15, align 8
  store i32 %7, i32* %16, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 3
  %20 = call i32 @SzData_Clear(i32* %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = call i32 @SzData_Clear(i32* %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = call i32 @SzData_Clear(i32* %25)
  %27 = load i64*, i64** %14, align 8
  store i64 0, i64* %27, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @ReadID(i32* %28, i64* %17)
  %30 = call i32 @RINOK(i32 %29)
  %31 = load i64, i64* %17, align 8
  %32 = load i64, i64* @k7zIdPackInfo, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %8
  %35 = load i32*, i32** %10, align 8
  %36 = load i64*, i64** %14, align 8
  %37 = call i32 @ReadNumber(i32* %35, i64* %36)
  %38 = call i32 @RINOK(i32 %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %16, align 4
  %42 = call i32 @ReadPackInfo(%struct.TYPE_9__* %39, i32* %40, i32 %41)
  %43 = call i32 @RINOK(i32 %42)
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @ReadID(i32* %44, i64* %17)
  %46 = call i32 @RINOK(i32 %45)
  br label %47

47:                                               ; preds = %34, %8
  %48 = load i64, i64* %17, align 8
  %49 = load i64, i64* @k7zIdUnpackInfo, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @ReadUnpackInfo(%struct.TYPE_9__* %52, i32* %53, i32 %54, i32* %55, i32 %56, i32 %57)
  %59 = call i32 @RINOK(i32 %58)
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @ReadID(i32* %60, i64* %17)
  %62 = call i32 @RINOK(i32 %61)
  br label %63

63:                                               ; preds = %51, %47
  %64 = load i64, i64* %17, align 8
  %65 = load i64, i64* @k7zIdSubStreamsInfo, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %71 = call i32 @ReadSubStreamsInfo(%struct.TYPE_9__* %68, i32* %69, %struct.TYPE_10__* %70)
  %72 = call i32 @RINOK(i32 %71)
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @ReadID(i32* %73, i64* %17)
  %75 = call i32 @RINOK(i32 %74)
  br label %82

76:                                               ; preds = %63
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %76, %67
  %83 = load i64, i64* %17, align 8
  %84 = load i64, i64* @k7zIdEnd, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @SZ_OK, align 4
  br label %90

88:                                               ; preds = %82
  %89 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  ret i32 %91
}

declare dso_local i32 @SzData_Clear(i32*) #1

declare dso_local i32 @RINOK(i32) #1

declare dso_local i32 @ReadID(i32*, i64*) #1

declare dso_local i32 @ReadNumber(i32*, i64*) #1

declare dso_local i32 @ReadPackInfo(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @ReadUnpackInfo(%struct.TYPE_9__*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @ReadSubStreamsInfo(%struct.TYPE_9__*, i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
