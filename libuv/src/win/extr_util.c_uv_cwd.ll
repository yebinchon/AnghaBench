; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv_cwd.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv_cwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@UV_EIO = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@UV_ENOBUFS = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_cwd(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i64*, i64** %5, align 8
  %19 = icmp eq i64* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %2
  %21 = load i32, i32* @UV_EINVAL, align 4
  store i32 %21, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %107

22:                                               ; preds = %17
  %23 = load i32, i32* @MAX_PATH, align 4
  %24 = call i32 @GetCurrentDirectoryW(i32 %23, i32* %14)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = call i32 (...) @GetLastError()
  %29 = call i32 @uv_translate_sys_error(i32 %28)
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %107

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @MAX_PATH, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @UV_EIO, align 4
  store i32 %35, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %107

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %14, i64 %39
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %14, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 92
  br i1 %46, label %47, label %60

47:                                               ; preds = %37
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = getelementptr inbounds i32, i32* %14, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 58
  br i1 %53, label %60, label %54

54:                                               ; preds = %50, %47
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %14, i64 %58
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %54, %50, %37
  %61 = load i32, i32* @CP_UTF8, align 4
  %62 = call i32 @WideCharToMultiByte(i32 %61, i32 0, i32* %14, i32 -1, i8* null, i64 0, i32* null, i32* null)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = call i32 (...) @GetLastError()
  %67 = call i32 @uv_translate_sys_error(i32 %66)
  store i32 %67, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %107

68:                                               ; preds = %60
  %69 = load i32, i32* %9, align 4
  %70 = load i64*, i64** %5, align 8
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = icmp sgt i32 %69, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64*, i64** %5, align 8
  store i64 %76, i64* %77, align 8
  %78 = load i32, i32* @UV_ENOBUFS, align 4
  store i32 %78, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %107

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* @CP_UTF8, align 4
  %82 = load i8*, i8** %4, align 8
  %83 = load i64*, i64** %5, align 8
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @INT_MAX, align 8
  %86 = icmp ugt i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i64, i64* @INT_MAX, align 8
  br label %94

89:                                               ; preds = %80
  %90 = load i64*, i64** %5, align 8
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = sext i32 %92 to i64
  br label %94

94:                                               ; preds = %89, %87
  %95 = phi i64 [ %88, %87 ], [ %93, %89 ]
  %96 = call i32 @WideCharToMultiByte(i32 %81, i32 0, i32* %14, i32 -1, i8* %82, i64 %95, i32* null, i32* null)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = call i32 (...) @GetLastError()
  %101 = call i32 @uv_translate_sys_error(i32 %100)
  store i32 %101, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %107

102:                                              ; preds = %94
  %103 = load i32, i32* %9, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = load i64*, i64** %5, align 8
  store i64 %105, i64* %106, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %107

107:                                              ; preds = %102, %99, %74, %65, %34, %27, %20
  %108 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %108)
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetCurrentDirectoryW(i32, i32*) #2

declare dso_local i32 @uv_translate_sys_error(i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32*, i32, i8*, i64, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
