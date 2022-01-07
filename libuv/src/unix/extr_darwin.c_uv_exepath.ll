; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_darwin.c_uv_exepath.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_darwin.c_uv_exepath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@UV_EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_exepath(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = mul nsw i32 %12, 2
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i32, i32* @PATH_MAX, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %2
  %25 = load i64*, i64** %5, align 8
  %26 = icmp eq i64* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i64*, i64** %5, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %24, %2
  %32 = load i32, i32* @UV_EINVAL, align 4
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %71

33:                                               ; preds = %27
  %34 = trunc i64 %20 to i32
  store i32 %34, i32* %9, align 4
  %35 = call i64 @_NSGetExecutablePath(i8* %21, i32* %9)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @UV_EIO, align 4
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %71

39:                                               ; preds = %33
  %40 = call i8* @realpath(i8* %21, i8* %17)
  %41 = icmp ne i8* %40, %17
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @errno, align 4
  %44 = call i32 @UV__ERR(i32 %43)
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %71

45:                                               ; preds = %39
  %46 = call i64 @strlen(i8* %17)
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @UV_EIO, align 4
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %71

51:                                               ; preds = %45
  %52 = load i64*, i64** %5, align 8
  %53 = load i64, i64* %52, align 8
  %54 = sub i64 %53, 1
  store i64 %54, i64* %52, align 8
  %55 = load i64*, i64** %5, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %10, align 8
  %58 = icmp ugt i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i64, i64* %10, align 8
  %61 = load i64*, i64** %5, align 8
  store i64 %60, i64* %61, align 8
  br label %62

62:                                               ; preds = %59, %51
  %63 = load i8*, i8** %4, align 8
  %64 = load i64*, i64** %5, align 8
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @memcpy(i8* %63, i8* %17, i64 %65)
  %67 = load i8*, i8** %4, align 8
  %68 = load i64*, i64** %5, align 8
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  store i8 0, i8* %70, align 1
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %71

71:                                               ; preds = %62, %49, %42, %37, %31
  %72 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @_NSGetExecutablePath(i8*, i32*) #2

declare dso_local i8* @realpath(i8*, i8*) #2

declare dso_local i32 @UV__ERR(i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
