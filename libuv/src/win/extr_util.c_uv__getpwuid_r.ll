; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv__getpwuid_r.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv__getpwuid_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32*, i32* }

@UNLEN = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@TOKEN_READ = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@UV_ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv__getpwuid_r(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %11 = load i32, i32* @UNLEN, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = icmp eq %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @UV_EINVAL, align 4
  store i32 %22, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %95

23:                                               ; preds = %1
  %24 = call i32 (...) @GetCurrentProcess()
  %25 = load i32, i32* @TOKEN_READ, align 4
  %26 = call i64 @OpenProcessToken(i32 %24, i32 %25, i32* %4)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = call i32 (...) @GetLastError()
  %30 = call i32 @uv_translate_sys_error(i32 %29)
  store i32 %30, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %95

31:                                               ; preds = %23
  %32 = call i32 @ARRAY_SIZE(i32* %18)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @GetUserProfileDirectoryW(i32 %33, i32* %18, i32* %8)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %31
  %37 = call i32 (...) @GetLastError()
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @CloseHandle(i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %44, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %95

45:                                               ; preds = %36
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @uv_translate_sys_error(i32 %46)
  store i32 %47, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %95

48:                                               ; preds = %31
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @CloseHandle(i32 %49)
  %51 = call i32 @ARRAY_SIZE(i32* %15)
  store i32 %51, i32* %8, align 4
  %52 = call i32 @GetUserNameW(i32* %15, i32* %8)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %48
  %55 = call i32 (...) @GetLastError()
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %60, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %95

61:                                               ; preds = %54
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @uv_translate_sys_error(i32 %62)
  store i32 %63, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %95

64:                                               ; preds = %48
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  store i32* null, i32** %66, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = call i32 @uv__convert_utf16_to_utf8(i32* %18, i32 -1, i32** %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %95

74:                                               ; preds = %64
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 4
  store i32* null, i32** %76, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 4
  %79 = call i32 @uv__convert_utf16_to_utf8(i32* %15, i32 -1, i32** %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %74
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @uv__free(i32* %85)
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %95

88:                                               ; preds = %74
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  store i32* null, i32** %90, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i32 -1, i32* %92, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  store i32 -1, i32* %94, align 4
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %95

95:                                               ; preds = %88, %82, %72, %61, %59, %45, %43, %28, %21
  %96 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @OpenProcessToken(i32, i32, i32*) #2

declare dso_local i32 @GetCurrentProcess(...) #2

declare dso_local i32 @uv_translate_sys_error(i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @GetUserProfileDirectoryW(i32, i32*, i32*) #2

declare dso_local i32 @CloseHandle(i32) #2

declare dso_local i32 @GetUserNameW(i32*, i32*) #2

declare dso_local i32 @uv__convert_utf16_to_utf8(i32*, i32, i32**) #2

declare dso_local i32 @uv__free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
