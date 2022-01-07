; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv_chdir.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv_chdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@UV_ENAMETOOLONG = common dso_local global i32 0, align 4
@UV_EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_chdir(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @UV_EINVAL, align 4
  store i32 %18, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %127

19:                                               ; preds = %1
  %20 = load i32, i32* @CP_UTF8, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = call i64 @MultiByteToWideChar(i32 %20, i32 0, i8* %21, i32 -1, i32* %14, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = call i64 (...) @GetLastError()
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @UV_ENAMETOOLONG, align 4
  store i32 %31, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %127

32:                                               ; preds = %25
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @uv_translate_sys_error(i64 %33)
  store i32 %34, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %127

35:                                               ; preds = %19
  %36 = call i32 @SetCurrentDirectoryW(i32* %14)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = call i64 (...) @GetLastError()
  %40 = call i32 @uv_translate_sys_error(i64 %39)
  store i32 %40, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %127

41:                                               ; preds = %35
  %42 = load i32, i32* @MAX_PATH, align 4
  %43 = call i64 @GetCurrentDirectoryW(i32 %42, i32* %14)
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = call i64 (...) @GetLastError()
  %48 = call i32 @uv_translate_sys_error(i64 %47)
  store i32 %48, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %127

49:                                               ; preds = %41
  %50 = load i64, i64* %6, align 8
  %51 = load i32, i32* @MAX_PATH, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp ugt i64 %50, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @UV_EIO, align 4
  store i32 %55, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %127

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %6, align 8
  %59 = sub i64 %58, 1
  %60 = getelementptr inbounds i32, i32* %14, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 92
  br i1 %62, label %63, label %75

63:                                               ; preds = %57
  %64 = load i64, i64* %6, align 8
  %65 = icmp eq i64 %64, 3
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = getelementptr inbounds i32, i32* %14, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 58
  br i1 %69, label %75, label %70

70:                                               ; preds = %66, %63
  %71 = load i64, i64* %6, align 8
  %72 = add i64 %71, -1
  store i64 %72, i64* %6, align 8
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds i32, i32* %14, i64 %73
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %70, %66, %57
  %76 = load i64, i64* %6, align 8
  %77 = icmp ult i64 %76, 2
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds i32, i32* %14, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 58
  br i1 %81, label %82, label %83

82:                                               ; preds = %78, %75
  store i32 0, i32* %7, align 4
  br label %110

83:                                               ; preds = %78
  %84 = getelementptr inbounds i32, i32* %14, i64 0
  %85 = load i32, i32* %84, align 16
  %86 = icmp sge i32 %85, 65
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = getelementptr inbounds i32, i32* %14, i64 0
  %89 = load i32, i32* %88, align 16
  %90 = icmp sle i32 %89, 90
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = getelementptr inbounds i32, i32* %14, i64 0
  %93 = load i32, i32* %92, align 16
  store i32 %93, i32* %7, align 4
  br label %109

94:                                               ; preds = %87, %83
  %95 = getelementptr inbounds i32, i32* %14, i64 0
  %96 = load i32, i32* %95, align 16
  %97 = icmp sge i32 %96, 97
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = getelementptr inbounds i32, i32* %14, i64 0
  %100 = load i32, i32* %99, align 16
  %101 = icmp sle i32 %100, 122
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = getelementptr inbounds i32, i32* %14, i64 0
  %104 = load i32, i32* %103, align 16
  %105 = sub nsw i32 %104, 97
  %106 = add nsw i32 %105, 65
  store i32 %106, i32* %7, align 4
  br label %108

107:                                              ; preds = %98, %94
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %107, %102
  br label %109

109:                                              ; preds = %108, %91
  br label %110

110:                                              ; preds = %109, %82
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 61, i32* %114, align 16
  %115 = load i32, i32* %7, align 4
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %115, i32* %116, align 4
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 58, i32* %117, align 8
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 0, i32* %118, align 4
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %120 = call i32 @SetEnvironmentVariableW(i32* %119, i32* %14)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %113
  %123 = call i64 (...) @GetLastError()
  %124 = call i32 @uv_translate_sys_error(i64 %123)
  store i32 %124, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %127

125:                                              ; preds = %113
  br label %126

126:                                              ; preds = %125, %110
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %127

127:                                              ; preds = %126, %122, %54, %46, %38, %32, %30, %17
  %128 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %128)
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @uv_translate_sys_error(i64) #2

declare dso_local i32 @SetCurrentDirectoryW(i32*) #2

declare dso_local i64 @GetCurrentDirectoryW(i32, i32*) #2

declare dso_local i32 @SetEnvironmentVariableW(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
