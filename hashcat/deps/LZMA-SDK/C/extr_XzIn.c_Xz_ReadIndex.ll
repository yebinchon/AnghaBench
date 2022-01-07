; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzIn.c_Xz_ReadIndex.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzIn.c_Xz_ReadIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SZ_ERROR_UNSUPPORTED = common dso_local global i64 0, align 8
@SZ_ERROR_MEM = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32, i32)* @Xz_ReadIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Xz_ReadIndex(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp sgt i32 %13, -2147483648
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i64, i64* @SZ_ERROR_UNSUPPORTED, align 8
  store i64 %16, i64* %5, align 8
  br label %55

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ne i64 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i64, i64* @SZ_ERROR_UNSUPPORTED, align 8
  store i64 %25, i64* %5, align 8
  br label %55

26:                                               ; preds = %17
  %27 = load i32, i32* %9, align 4
  %28 = load i64, i64* %11, align 8
  %29 = call i64 @ISzAlloc_Alloc(i32 %27, i64 %28)
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %12, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = load i64, i64* @SZ_ERROR_MEM, align 8
  store i64 %34, i64* %5, align 8
  br label %55

35:                                               ; preds = %26
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* @SZ_ERROR_UNSUPPORTED, align 8
  %40 = call i64 @LookInStream_Read2(i32* %36, i32* %37, i64 %38, i64 %39)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @SZ_OK, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load i32*, i32** %6, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @Xz_ReadIndex2(i32* %45, i32* %46, i64 %47, i32 %48)
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %44, %35
  %51 = load i32, i32* %9, align 4
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 @ISzAlloc_Free(i32 %51, i32* %52)
  %54 = load i64, i64* %10, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %50, %33, %24, %15
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

declare dso_local i64 @ISzAlloc_Alloc(i32, i64) #1

declare dso_local i64 @LookInStream_Read2(i32*, i32*, i64, i64) #1

declare dso_local i64 @Xz_ReadIndex2(i32*, i32*, i64, i32) #1

declare dso_local i32 @ISzAlloc_Free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
