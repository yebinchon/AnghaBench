; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_fs.c_fs__realpath_handle.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_fs.c_fs__realpath_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOLUME_NAME_DOS = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@UNC_PATH_PREFIX = common dso_local global i32 0, align 4
@UNC_PATH_PREFIX_LEN = common dso_local global i32 0, align 4
@LONG_PATH_PREFIX = common dso_local global i32 0, align 4
@LONG_PATH_PREFIX_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @fs__realpath_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs__realpath_handle(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @VOLUME_NAME_DOS, align 4
  %12 = call i64 @GetFinalPathNameByHandleW(i32 %10, i32* null, i32 0, i32 %11)
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %79

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = call i32* @uv__malloc(i32 %22)
  store i32* %23, i32** %9, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  %28 = call i32 @SetLastError(i32 %27)
  store i32 -1, i32* %3, align 4
  br label %79

29:                                               ; preds = %17
  %30 = load i32*, i32** %9, align 8
  store i32* %30, i32** %8, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @VOLUME_NAME_DOS, align 4
  %35 = call i64 @GetFinalPathNameByHandleW(i32 %31, i32* %32, i32 %33, i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @uv__free(i32* %38)
  %40 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %41 = call i32 @SetLastError(i32 %40)
  store i32 -1, i32* %3, align 4
  br label %79

42:                                               ; preds = %29
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* @UNC_PATH_PREFIX, align 4
  %45 = load i32, i32* @UNC_PATH_PREFIX_LEN, align 4
  %46 = call i64 @wcsncmp(i32* %43, i32 %44, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 6
  store i32* %50, i32** %8, align 8
  %51 = load i32*, i32** %8, align 8
  store i32 92, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %52, 6
  store i32 %53, i32* %7, align 4
  br label %71

54:                                               ; preds = %42
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* @LONG_PATH_PREFIX, align 4
  %57 = load i32, i32* @LONG_PATH_PREFIX_LEN, align 4
  %58 = call i64 @wcsncmp(i32* %55, i32 %56, i32 %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  store i32* %62, i32** %8, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 %63, 4
  store i32 %64, i32* %7, align 4
  br label %70

65:                                               ; preds = %54
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @uv__free(i32* %66)
  %68 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %69 = call i32 @SetLastError(i32 %68)
  store i32 -1, i32* %3, align 4
  br label %79

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %48
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i8**, i8*** %5, align 8
  %75 = call i32 @fs__wide_to_utf8(i32* %72, i32 %73, i8** %74, i32* null)
  store i32 %75, i32* %6, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = call i32 @uv__free(i32* %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %71, %65, %37, %26, %16
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @GetFinalPathNameByHandleW(i32, i32*, i32, i32) #1

declare dso_local i32* @uv__malloc(i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @uv__free(i32*) #1

declare dso_local i64 @wcsncmp(i32*, i32, i32) #1

declare dso_local i32 @fs__wide_to_utf8(i32*, i32, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
