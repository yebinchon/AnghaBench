; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_freebsd.c_uv_exepath.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_freebsd.c_uv_exepath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@CTL_KERN = common dso_local global i32 0, align 4
@KERN_PROC = common dso_local global i32 0, align 4
@KERN_PROC_PATHNAME = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_exepath(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = load i32, i32* @PATH_MAX, align 4
  %12 = mul nsw i32 %11, 2
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load i64*, i64** %5, align 8
  %21 = icmp eq i64* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i64*, i64** %5, align 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %19, %2
  %27 = load i32, i32* @UV_EINVAL, align 4
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %68

28:                                               ; preds = %22
  %29 = load i32, i32* @CTL_KERN, align 4
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %29, i32* %30, align 16
  %31 = load i32, i32* @KERN_PROC, align 4
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* @KERN_PROC_PATHNAME, align 4
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 -1, i32* %35, align 4
  store i64 %14, i64* %9, align 8
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %37 = call i64 @sysctl(i32* %36, i32 4, i8* %16, i64* %9, i32* null, i32 0)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load i32, i32* @errno, align 4
  %41 = call i32 @UV__ERR(i32 %40)
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %68

42:                                               ; preds = %28
  %43 = load i64, i64* %9, align 8
  %44 = icmp ugt i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i64, i64* %9, align 8
  %48 = sub i64 %47, 1
  store i64 %48, i64* %9, align 8
  %49 = load i64*, i64** %5, align 8
  %50 = load i64, i64* %49, align 8
  %51 = sub i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = load i64*, i64** %5, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %42
  %57 = load i64, i64* %9, align 8
  %58 = load i64*, i64** %5, align 8
  store i64 %57, i64* %58, align 8
  br label %59

59:                                               ; preds = %56, %42
  %60 = load i8*, i8** %4, align 8
  %61 = load i64*, i64** %5, align 8
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @memcpy(i8* %60, i8* %16, i64 %62)
  %64 = load i8*, i8** %4, align 8
  %65 = load i64*, i64** %5, align 8
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  store i8 0, i8* %67, align 1
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %68

68:                                               ; preds = %59, %39, %26
  %69 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %69)
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @sysctl(i32*, i32, i8*, i64*, i32*, i32) #2

declare dso_local i32 @UV__ERR(i32) #2

declare dso_local i32 @assert(i32) #2

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
