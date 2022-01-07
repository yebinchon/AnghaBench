; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv_exepath.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_util.c_uv_exepath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UV_EINVAL = common dso_local global i32 0, align 4
@UV_ENOMEM = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_exepath(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load i64*, i64** %5, align 8
  %15 = icmp eq i64* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i64*, i64** %5, align 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %13, %2
  %21 = load i32, i32* @UV_EINVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %78

22:                                               ; preds = %16
  %23 = load i64*, i64** %5, align 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ugt i64 %24, 32768
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 32768, i32* %7, align 4
  br label %31

27:                                               ; preds = %22
  %28 = load i64*, i64** %5, align 8
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %27, %26
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = trunc i64 %34 to i32
  %36 = call i64 @uv__malloc(i32 %35)
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %41, i32* %3, align 4
  br label %78

42:                                               ; preds = %31
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @GetModuleFileNameW(i32* null, i32* %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = call i32 (...) @GetLastError()
  store i32 %49, i32* %10, align 4
  br label %73

50:                                               ; preds = %42
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 0, i32* %54, align 4
  %55 = load i32, i32* @CP_UTF8, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = load i64*, i64** %5, align 8
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @WideCharToMultiByte(i32 %55, i32 0, i32* %56, i32 -1, i8* %57, i32 %60, i32* null, i32* null)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %50
  %65 = call i32 (...) @GetLastError()
  store i32 %65, i32* %10, align 4
  br label %73

66:                                               ; preds = %50
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @uv__free(i32* %67)
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = load i64*, i64** %5, align 8
  store i64 %71, i64* %72, align 8
  store i32 0, i32* %3, align 4
  br label %78

73:                                               ; preds = %64, %48
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @uv__free(i32* %74)
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @uv_translate_sys_error(i32 %76)
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %73, %66, %40, %20
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @uv__malloc(i32) #1

declare dso_local i32 @GetModuleFileNameW(i32*, i32*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @uv__free(i32*) #1

declare dso_local i32 @uv_translate_sys_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
