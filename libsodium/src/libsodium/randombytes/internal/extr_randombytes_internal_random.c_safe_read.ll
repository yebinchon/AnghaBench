; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/randombytes/internal/extr_randombytes_internal_random.c_safe_read.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/randombytes/internal/extr_randombytes_internal_random.c_safe_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSIZE_MAX = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i64)* @safe_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @safe_read(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ugt i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @SSIZE_MAX, align 8
  %17 = icmp ule i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  br label %20

20:                                               ; preds = %56, %3
  br label %21

21:                                               ; preds = %39, %20
  %22 = load i32, i32* %5, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @read(i32 %22, i8* %23, i64 %24)
  store i64 %25, i64* %9, align 8
  %26 = icmp ult i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @EINTR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* @errno, align 8
  %33 = load i64, i64* @EAGAIN, align 8
  %34 = icmp eq i64 %32, %33
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i1 [ true, %27 ], [ %34, %31 ]
  br label %37

37:                                               ; preds = %35, %21
  %38 = phi i1 [ false, %21 ], [ %36, %35 ]
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  br label %21

40:                                               ; preds = %37
  %41 = load i64, i64* %9, align 8
  %42 = icmp ult i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i64, i64* %9, align 8
  store i64 %44, i64* %4, align 8
  br label %65

45:                                               ; preds = %40
  %46 = load i64, i64* %9, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %59

49:                                               ; preds = %45
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %7, align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 %53
  store i8* %55, i8** %8, align 8
  br label %56

56:                                               ; preds = %49
  %57 = load i64, i64* %7, align 8
  %58 = icmp ugt i64 %57, 0
  br i1 %58, label %20, label %59

59:                                               ; preds = %56, %48
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  store i64 %64, i64* %4, align 8
  br label %65

65:                                               ; preds = %59, %43
  %66 = load i64, i64* %4, align 8
  ret i64 %66
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @read(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
