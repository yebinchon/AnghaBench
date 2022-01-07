; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_getaddrinfo.c_uv_if_indextoname.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_getaddrinfo.c_uv_if_indextoname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NDIS_IF_MAX_STRING_SIZE = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@UV_ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_if_indextoname(i32 %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load i32, i32* @NDIS_IF_MAX_STRING_SIZE, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %3
  %22 = load i64*, i64** %7, align 8
  %23 = icmp eq i64* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i64*, i64** %7, align 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %21, %3
  %29 = load i32, i32* @UV_EINVAL, align 4
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %79

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @ConvertInterfaceIndexToLuid(i32 %31, i32* %8)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @uv_translate_sys_error(i32 %36)
  store i32 %37, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %79

38:                                               ; preds = %30
  %39 = call i32 @ARRAY_SIZE(i32* %18)
  %40 = call i32 @ConvertInterfaceLuidToNameW(i32* %8, i32* %18, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @uv_translate_sys_error(i32 %44)
  store i32 %45, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %79

46:                                               ; preds = %38
  %47 = load i32, i32* @CP_UTF8, align 4
  %48 = call i64 @WideCharToMultiByte(i32 %47, i32 0, i32* %18, i32 -1, i8* null, i64 0, i32* null, i32* null)
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = call i32 (...) @GetLastError()
  %53 = call i32 @uv_translate_sys_error(i32 %52)
  store i32 %53, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %79

54:                                               ; preds = %46
  %55 = load i64, i64* %11, align 8
  %56 = load i64*, i64** %7, align 8
  %57 = load i64, i64* %56, align 8
  %58 = icmp ugt i64 %55, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i64, i64* %11, align 8
  %61 = load i64*, i64** %7, align 8
  store i64 %60, i64* %61, align 8
  %62 = load i32, i32* @UV_ENOBUFS, align 4
  store i32 %62, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %79

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* @CP_UTF8, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = load i64*, i64** %7, align 8
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @WideCharToMultiByte(i32 %65, i32 0, i32* %18, i32 -1, i8* %66, i64 %68, i32* null, i32* null)
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = call i32 (...) @GetLastError()
  %74 = call i32 @uv_translate_sys_error(i32 %73)
  store i32 %74, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %79

75:                                               ; preds = %64
  %76 = load i64, i64* %11, align 8
  %77 = sub i64 %76, 1
  %78 = load i64*, i64** %7, align 8
  store i64 %77, i64* %78, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %79

79:                                               ; preds = %75, %72, %59, %51, %43, %35, %28
  %80 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ConvertInterfaceIndexToLuid(i32, i32*) #2

declare dso_local i32 @uv_translate_sys_error(i32) #2

declare dso_local i32 @ConvertInterfaceLuidToNameW(i32*, i32*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i64 @WideCharToMultiByte(i32, i32, i32*, i32, i8*, i64, i32*, i32*) #2

declare dso_local i32 @GetLastError(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
