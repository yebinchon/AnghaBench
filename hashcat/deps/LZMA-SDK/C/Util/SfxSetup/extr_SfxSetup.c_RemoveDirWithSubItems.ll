; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/Util/SfxSetup/extr_SfxSetup.c_RemoveDirWithSubItems.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/Util/SfxSetup/extr_SfxSetup.c_RemoveDirWithSubItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i32] [i32 42, i32 0], align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i32] [i32 46, i32 0], align 4
@.str.2 = private unnamed_addr constant [3 x i32] [i32 46, i32 46, i32 0], align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@WSTRING_PATH_SEPARATOR = common dso_local global i32 0, align 4
@ERROR_NO_MORE_FILES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @RemoveDirWithSubItems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @RemoveDirWithSubItems(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %6, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @wcslen(i32* %8)
  store i64 %9, i64* %7, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i64, i64* %7, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = call i32 @wcscpy(i32* %12, i8* bitcast ([2 x i32]* @.str to i8*))
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @FindFirstFileW(i32* %14, %struct.TYPE_4__* %4)
  store i64 %15, i64* %5, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32 0, i32* %18, align 4
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i64 (...) @GetLastError()
  store i64 %23, i64* %2, align 8
  br label %96

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %78, %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @wcscmp(i8* %27, i8* bitcast ([2 x i32]* @.str.1 to i8*))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %67

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @wcscmp(i8* %32, i8* bitcast ([3 x i32]* @.str.2 to i8*))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %30
  %36 = load i32*, i32** %3, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @wcscpy(i32* %38, i8* %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %35
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* @WSTRING_PATH_SEPARATOR, align 4
  %50 = call i32 @wcscat(i32* %48, i32 %49)
  %51 = load i32*, i32** %3, align 8
  %52 = call i64 @RemoveDirWithSubItems(i32* %51)
  store i64 %52, i64* %6, align 8
  br label %62

53:                                               ; preds = %35
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @SetFileAttributesW(i32* %54, i32 0)
  %56 = load i32*, i32** %3, align 8
  %57 = call i64 @DeleteFileW(i32* %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call i64 (...) @GetLastError()
  store i64 %60, i64* %6, align 8
  br label %61

61:                                               ; preds = %59, %53
  br label %62

62:                                               ; preds = %61, %47
  %63 = load i64, i64* %6, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %79

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %66, %30, %25
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @FindNextFileW(i64 %68, %struct.TYPE_4__* %4)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %67
  %72 = call i64 (...) @GetLastError()
  store i64 %72, i64* %6, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* @ERROR_NO_MORE_FILES, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i64 0, i64* %6, align 8
  br label %77

77:                                               ; preds = %76, %71
  br label %79

78:                                               ; preds = %67
  br label %25

79:                                               ; preds = %77, %65
  %80 = load i32*, i32** %3, align 8
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32 0, i32* %82, align 4
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @FindClose(i64 %83)
  %85 = load i64, i64* %6, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %79
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @RemoveDirectoryW(i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = call i64 (...) @GetLastError()
  store i64 %92, i64* %6, align 8
  br label %93

93:                                               ; preds = %91, %87
  br label %94

94:                                               ; preds = %93, %79
  %95 = load i64, i64* %6, align 8
  store i64 %95, i64* %2, align 8
  br label %96

96:                                               ; preds = %94, %22
  %97 = load i64, i64* %2, align 8
  ret i64 %97
}

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i32 @wcscpy(i32*, i8*) #1

declare dso_local i64 @FindFirstFileW(i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @wcscmp(i8*, i8*) #1

declare dso_local i32 @wcscat(i32*, i32) #1

declare dso_local i32 @SetFileAttributesW(i32*, i32) #1

declare dso_local i64 @DeleteFileW(i32*) #1

declare dso_local i32 @FindNextFileW(i64, %struct.TYPE_4__*) #1

declare dso_local i32 @FindClose(i64) #1

declare dso_local i32 @RemoveDirectoryW(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
