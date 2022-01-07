; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzDec.c_XzStatInfo_SetStat.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzDec.c_XzStatInfo_SetStat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i8*, i8*, i8*, i8*, i32, i32, i64 }

@True = common dso_local global i8* null, align 8
@SZ_OK = common dso_local global i64 0, align 8
@CODER_STATUS_NEEDS_MORE_INPUT = common dso_local global i64 0, align 8
@SZ_ERROR_INPUT_EOF = common dso_local global i64 0, align 8
@SZ_ERROR_DATA = common dso_local global i64 0, align 8
@SZ_ERROR_NO_ARCHIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i32, i64, i64, i64, i64, i64, %struct.TYPE_8__*)* @XzStatInfo_SetStat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @XzStatInfo_SetStat(%struct.TYPE_7__* %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, %struct.TYPE_8__* %7) #0 {
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %16, align 8
  %18 = load i64, i64* %15, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  %22 = sext i32 %21 to i64
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 8
  store i64 %22, i64* %24, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 8
  %38 = load i8*, i8** @True, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 5
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @True, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @True, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %48 = call i64 @XzUnpacker_GetExtraSize(%struct.TYPE_7__* %47)
  store i64 %48, i64* %17, align 8
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* @SZ_OK, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %8
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* @CODER_STATUS_NEEDS_MORE_INPUT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  store i64 0, i64* %17, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %58 = call i32 @XzUnpacker_IsStreamWasFinished(%struct.TYPE_7__* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* @SZ_ERROR_INPUT_EOF, align 8
  store i64 %61, i64* %13, align 8
  br label %62

62:                                               ; preds = %60, %56
  br label %72

63:                                               ; preds = %52
  %64 = load i64, i64* %15, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66, %63
  %70 = load i64, i64* @SZ_ERROR_DATA, align 8
  store i64 %70, i64* %13, align 8
  br label %71

71:                                               ; preds = %69, %66
  br label %72

72:                                               ; preds = %71, %62
  br label %96

73:                                               ; preds = %8
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* @SZ_ERROR_NO_ARCHIVE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %73
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* %17, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %77
  %82 = load i64, i64* %17, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* %12, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84, %81
  %89 = load i8*, i8** @True, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load i64, i64* @SZ_OK, align 8
  store i64 %92, i64* %13, align 8
  br label %93

93:                                               ; preds = %88, %84
  br label %94

94:                                               ; preds = %93, %77
  br label %95

95:                                               ; preds = %94, %73
  br label %96

96:                                               ; preds = %95, %72
  %97 = load i64, i64* %13, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  %100 = load i64, i64* %17, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %103, %100
  store i64 %104, i64* %102, align 8
  %105 = load i64, i64* %13, align 8
  ret i64 %105
}

declare dso_local i64 @XzUnpacker_GetExtraSize(%struct.TYPE_7__*) #1

declare dso_local i32 @XzUnpacker_IsStreamWasFinished(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
