; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv_os_tmpdir.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv_os_tmpdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@UV_EIO = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@UV_ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_os_tmpdir(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = add nsw i32 %11, 2
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load i64*, i64** %5, align 8
  %20 = icmp eq i64* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load i64*, i64** %5, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %18, %2
  %26 = load i32, i32* @UV_EINVAL, align 4
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %93

27:                                               ; preds = %21
  %28 = call i64 @ARRAY_SIZE(i32* %15)
  %29 = call i64 @GetTempPathW(i64 %28, i32* %15)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = call i32 (...) @GetLastError()
  %34 = call i32 @uv_translate_sys_error(i32 %33)
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %93

35:                                               ; preds = %27
  %36 = load i64, i64* %9, align 8
  %37 = call i64 @ARRAY_SIZE(i32* %15)
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @UV_EIO, align 4
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %93

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %9, align 8
  %44 = sub i64 %43, 1
  %45 = getelementptr inbounds i32, i32* %15, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 92
  br i1 %47, label %48, label %60

48:                                               ; preds = %42
  %49 = load i64, i64* %9, align 8
  %50 = icmp eq i64 %49, 3
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = getelementptr inbounds i32, i32* %15, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 58
  br i1 %54, label %60, label %55

55:                                               ; preds = %51, %48
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %56, -1
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds i32, i32* %15, i64 %58
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %55, %51, %42
  %61 = load i32, i32* @CP_UTF8, align 4
  %62 = call i64 @WideCharToMultiByte(i32 %61, i32 0, i32* %15, i32 -1, i8* null, i64 0, i32* null, i32* null)
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = call i32 (...) @GetLastError()
  %67 = call i32 @uv_translate_sys_error(i32 %66)
  store i32 %67, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %93

68:                                               ; preds = %60
  %69 = load i64, i64* %8, align 8
  %70 = load i64*, i64** %5, align 8
  %71 = load i64, i64* %70, align 8
  %72 = icmp ugt i64 %69, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i64, i64* %8, align 8
  %75 = load i64*, i64** %5, align 8
  store i64 %74, i64* %75, align 8
  %76 = load i32, i32* @UV_ENOBUFS, align 4
  store i32 %76, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %93

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* @CP_UTF8, align 4
  %80 = load i8*, i8** %4, align 8
  %81 = load i64*, i64** %5, align 8
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @WideCharToMultiByte(i32 %79, i32 0, i32* %15, i32 -1, i8* %80, i64 %82, i32* null, i32* null)
  store i64 %83, i64* %8, align 8
  %84 = load i64, i64* %8, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = call i32 (...) @GetLastError()
  %88 = call i32 @uv_translate_sys_error(i32 %87)
  store i32 %88, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %93

89:                                               ; preds = %78
  %90 = load i64, i64* %8, align 8
  %91 = sub i64 %90, 1
  %92 = load i64*, i64** %5, align 8
  store i64 %91, i64* %92, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %93

93:                                               ; preds = %89, %86, %73, %65, %39, %32, %25
  %94 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetTempPathW(i64, i32*) #2

declare dso_local i64 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @uv_translate_sys_error(i32) #2

declare dso_local i32 @GetLastError(...) #2

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
