; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/Util/SfxSetup/extr_SfxSetup.c_FindSignature.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/Util/SfxSetup/extr_SfxSetup.c_FindSignature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kBufferSize = common dso_local global i32 0, align 4
@kSignatureSearchLimit = common dso_local global i64 0, align 8
@False = common dso_local global i32 0, align 4
@k7zStartHeaderSize = common dso_local global i64 0, align 8
@k7zSignature = common dso_local global i32 0, align 4
@k7zSignatureSize = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*)* @FindSignature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FindSignature(i32* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  %12 = load i32, i32* @kBufferSize, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %16 = load i64*, i64** %5, align 8
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %110, %2
  %18 = load i64*, i64** %5, align 8
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @kSignatureSearchLimit, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @False, align 4
  store i32 %23, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %120

24:                                               ; preds = %17
  %25 = load i32, i32* @kBufferSize, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %8, align 8
  %28 = sub i64 %26, %27
  store i64 %28, i64* %9, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds i8, i8* %15, i64 %30
  %32 = call i64 @File_Read(i32* %29, i8* %31, i64* %9)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @False, align 4
  store i32 %35, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %120

36:                                               ; preds = %24
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @k7zStartHeaderSize, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %36
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @k7zStartHeaderSize, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47, %36
  %51 = load i32, i32* @False, align 4
  store i32 %51, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %120

52:                                               ; preds = %47, %43
  %53 = load i64, i64* @k7zStartHeaderSize, align 8
  %54 = load i64, i64* %9, align 8
  %55 = sub i64 %54, %53
  store i64 %55, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %56

56:                                               ; preds = %107, %52
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ule i64 %57, %58
  br i1 %59, label %60, label %110

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %74, %60
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %9, align 8
  %64 = icmp ule i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds i8, i8* %15, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 55
  br label %71

71:                                               ; preds = %65, %61
  %72 = phi i1 [ false, %61 ], [ %70, %65 ]
  br i1 %72, label %73, label %77

73:                                               ; preds = %71
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %10, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %10, align 8
  br label %61

77:                                               ; preds = %71
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %9, align 8
  %80 = icmp ugt i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %110

82:                                               ; preds = %77
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds i8, i8* %15, i64 %83
  %85 = load i32, i32* @k7zSignature, align 4
  %86 = load i32, i32* @k7zSignatureSize, align 4
  %87 = call i64 @memcmp(i8* %84, i32 %85, i32 %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %82
  %90 = load i64, i64* %10, align 8
  %91 = getelementptr inbounds i8, i8* %15, i64 %90
  %92 = getelementptr inbounds i8, i8* %91, i64 12
  %93 = call i64 @CrcCalc(i8* %92, i32 20)
  %94 = load i64, i64* %10, align 8
  %95 = getelementptr inbounds i8, i8* %15, i64 %94
  %96 = getelementptr inbounds i8, i8* %95, i64 8
  %97 = call i64 @GetUi32(i8* %96)
  %98 = icmp eq i64 %93, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %89
  %100 = load i64, i64* %10, align 8
  %101 = load i64*, i64** %5, align 8
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, %100
  store i64 %103, i64* %101, align 8
  %104 = load i32, i32* @True, align 4
  store i32 %104, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %120

105:                                              ; preds = %89
  br label %106

106:                                              ; preds = %105, %82
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* %10, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %10, align 8
  br label %56

110:                                              ; preds = %81, %56
  %111 = load i64, i64* %9, align 8
  %112 = load i64*, i64** %5, align 8
  %113 = load i64, i64* %112, align 8
  %114 = add i64 %113, %111
  store i64 %114, i64* %112, align 8
  %115 = load i64, i64* @k7zStartHeaderSize, align 8
  store i64 %115, i64* %8, align 8
  %116 = load i64, i64* %9, align 8
  %117 = getelementptr inbounds i8, i8* %15, i64 %116
  %118 = load i64, i64* @k7zStartHeaderSize, align 8
  %119 = call i32 @memmove(i8* %15, i8* %117, i64 %118)
  br label %17

120:                                              ; preds = %99, %50, %34, %22
  %121 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %121)
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @File_Read(i32*, i8*, i64*) #2

declare dso_local i64 @memcmp(i8*, i32, i32) #2

declare dso_local i64 @CrcCalc(i8*, i32) #2

declare dso_local i64 @GetUi32(i8*) #2

declare dso_local i32 @memmove(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
