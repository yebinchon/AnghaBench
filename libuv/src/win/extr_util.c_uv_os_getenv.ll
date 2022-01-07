; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv_os_getenv.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv_os_getenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_ENV_VAR_LENGTH = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@UV_ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_os_getenv(i8* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %15 = load i32, i32* @MAX_ENV_VAR_LENGTH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load i64*, i64** %7, align 8
  %26 = icmp eq i64* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i64*, i64** %7, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %24, %21, %3
  %32 = load i32, i32* @UV_EINVAL, align 4
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %98

33:                                               ; preds = %27
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @uv__convert_utf8_to_utf16(i8* %34, i32 -1, i32** %10)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %98

40:                                               ; preds = %33
  %41 = load i32, i32* @ERROR_SUCCESS, align 4
  %42 = call i32 @SetLastError(i32 %41)
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* @MAX_ENV_VAR_LENGTH, align 4
  %45 = call i64 @GetEnvironmentVariableW(i32* %43, i32* %18, i32 %44)
  store i64 %45, i64* %12, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @uv__free(i32* %46)
  %48 = load i64, i64* %12, align 8
  %49 = load i32, i32* @MAX_ENV_VAR_LENGTH, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp ult i64 %48, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i64, i64* %12, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %40
  %57 = call i32 (...) @GetLastError()
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @ERROR_SUCCESS, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @uv_translate_sys_error(i32 %62)
  store i32 %63, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %98

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %40
  %66 = load i32, i32* @CP_UTF8, align 4
  %67 = call i64 @WideCharToMultiByte(i32 %66, i32 0, i32* %18, i32 -1, i8* null, i64 0, i32* null, i32* null)
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %11, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = call i32 (...) @GetLastError()
  %72 = call i32 @uv_translate_sys_error(i32 %71)
  store i32 %72, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %98

73:                                               ; preds = %65
  %74 = load i64, i64* %11, align 8
  %75 = load i64*, i64** %7, align 8
  %76 = load i64, i64* %75, align 8
  %77 = icmp ugt i64 %74, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i64, i64* %11, align 8
  %80 = load i64*, i64** %7, align 8
  store i64 %79, i64* %80, align 8
  %81 = load i32, i32* @UV_ENOBUFS, align 4
  store i32 %81, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %98

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* @CP_UTF8, align 4
  %85 = load i8*, i8** %6, align 8
  %86 = load i64*, i64** %7, align 8
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @WideCharToMultiByte(i32 %84, i32 0, i32* %18, i32 -1, i8* %85, i64 %87, i32* null, i32* null)
  store i64 %88, i64* %11, align 8
  %89 = load i64, i64* %11, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = call i32 (...) @GetLastError()
  %93 = call i32 @uv_translate_sys_error(i32 %92)
  store i32 %93, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %98

94:                                               ; preds = %83
  %95 = load i64, i64* %11, align 8
  %96 = sub i64 %95, 1
  %97 = load i64*, i64** %7, align 8
  store i64 %96, i64* %97, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %98

98:                                               ; preds = %94, %91, %78, %70, %61, %38, %31
  %99 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @uv__convert_utf8_to_utf16(i8*, i32, i32**) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i64 @GetEnvironmentVariableW(i32*, i32*, i32) #2

declare dso_local i32 @uv__free(i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @uv_translate_sys_error(i32) #2

declare dso_local i64 @WideCharToMultiByte(i32, i32, i32*, i32, i8*, i64, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
