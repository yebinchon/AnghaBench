; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_pipe.c_open_named_pipe.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_pipe.c_open_named_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_FLAG_OVERLAPPED = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@UV_HANDLE_READABLE = common dso_local global i32 0, align 4
@UV_HANDLE_WRITABLE = common dso_local global i32 0, align 4
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@FILE_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*)* @open_named_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @open_named_pipe(i32* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* @GENERIC_READ, align 4
  %9 = load i32, i32* @GENERIC_WRITE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @OPEN_EXISTING, align 4
  %12 = load i32, i32* @FILE_FLAG_OVERLAPPED, align 4
  %13 = call i64 @CreateFileW(i32* %7, i32 %10, i32 0, i32* null, i32 %11, i32 %12, i32* null)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load i32, i32* @UV_HANDLE_READABLE, align 4
  %19 = load i32, i32* @UV_HANDLE_WRITABLE, align 4
  %20 = or i32 %18, %19
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i64, i64* %6, align 8
  store i64 %22, i64* %3, align 8
  br label %65

23:                                               ; preds = %2
  %24 = call i64 (...) @GetLastError()
  %25 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @GENERIC_READ, align 4
  %30 = load i32, i32* @FILE_WRITE_ATTRIBUTES, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @OPEN_EXISTING, align 4
  %33 = load i32, i32* @FILE_FLAG_OVERLAPPED, align 4
  %34 = call i64 @CreateFileW(i32* %28, i32 %31, i32 0, i32* null, i32 %32, i32 %33, i32* null)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load i32, i32* @UV_HANDLE_READABLE, align 4
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i64, i64* %6, align 8
  store i64 %41, i64* %3, align 8
  br label %65

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42, %23
  %44 = call i64 (...) @GetLastError()
  %45 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %43
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @GENERIC_WRITE, align 4
  %50 = load i32, i32* @FILE_READ_ATTRIBUTES, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @OPEN_EXISTING, align 4
  %53 = load i32, i32* @FILE_FLAG_OVERLAPPED, align 4
  %54 = call i64 @CreateFileW(i32* %48, i32 %51, i32 0, i32* null, i32 %52, i32 %53, i32* null)
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %47
  %59 = load i32, i32* @UV_HANDLE_WRITABLE, align 4
  %60 = load i32*, i32** %5, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i64, i64* %6, align 8
  store i64 %61, i64* %3, align 8
  br label %65

62:                                               ; preds = %47
  br label %63

63:                                               ; preds = %62, %43
  %64 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %64, i64* %3, align 8
  br label %65

65:                                               ; preds = %63, %58, %38, %17
  %66 = load i64, i64* %3, align 8
  ret i64 %66
}

declare dso_local i64 @CreateFileW(i32*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i64 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
