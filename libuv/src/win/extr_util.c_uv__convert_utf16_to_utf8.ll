; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv__convert_utf16_to_utf8.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv__convert_utf16_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UV_EINVAL = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@UV_ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv__convert_utf16_to_utf8(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @UV_EINVAL, align 4
  store i32 %12, i32* %4, align 4
  br label %56

13:                                               ; preds = %3
  %14 = load i32, i32* @CP_UTF8, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @WideCharToMultiByte(i32 %14, i32 0, i32* %15, i32 %16, i8* null, i32 0, i32* null, i32* null)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = call i32 (...) @GetLastError()
  %22 = call i32 @uv_translate_sys_error(i32 %21)
  store i32 %22, i32* %4, align 4
  br label %56

23:                                               ; preds = %13
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 1
  %26 = call i8* @uv__malloc(i32 %25)
  %27 = load i8**, i8*** %7, align 8
  store i8* %26, i8** %27, align 8
  %28 = load i8**, i8*** %7, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %32, i32* %4, align 4
  br label %56

33:                                               ; preds = %23
  %34 = load i32, i32* @CP_UTF8, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i8**, i8*** %7, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @WideCharToMultiByte(i32 %34, i32 0, i32* %35, i32 %36, i8* %38, i32 %39, i32* null, i32* null)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %33
  %44 = load i8**, i8*** %7, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @uv__free(i8* %45)
  %47 = load i8**, i8*** %7, align 8
  store i8* null, i8** %47, align 8
  %48 = call i32 (...) @GetLastError()
  %49 = call i32 @uv_translate_sys_error(i32 %48)
  store i32 %49, i32* %4, align 4
  br label %56

50:                                               ; preds = %33
  %51 = load i8**, i8*** %7, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8 0, i8* %55, align 1
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %50, %43, %31, %20, %11
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @uv_translate_sys_error(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i8* @uv__malloc(i32) #1

declare dso_local i32 @uv__free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
