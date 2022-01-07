; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzmaEnc.c_LzmaEncode.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzmaEnc.c_LzmaEncode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SZ_ERROR_MEM = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @LzmaEncode(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32* %5, i32* %6, i32 %7, i32* %8, i32 %9, i32 %10) #0 {
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32* %2, i32** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32* %4, i32** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32* %6, i32** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32* %8, i32** %21, align 8
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  %26 = load i32, i32* %22, align 4
  %27 = call i64 @LzmaEnc_Create(i32 %26)
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %24, align 8
  %29 = load i32*, i32** %24, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %11
  %32 = load i64, i64* @SZ_ERROR_MEM, align 8
  store i64 %32, i64* %12, align 8
  br label %66

33:                                               ; preds = %11
  %34 = load i32*, i32** %24, align 8
  %35 = load i32*, i32** %17, align 8
  %36 = call i64 @LzmaEnc_SetProps(i32* %34, i32* %35)
  store i64 %36, i64* %25, align 8
  %37 = load i64, i64* %25, align 8
  %38 = load i64, i64* @SZ_OK, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %33
  %41 = load i32*, i32** %24, align 8
  %42 = load i32*, i32** %18, align 8
  %43 = load i32*, i32** %19, align 8
  %44 = call i64 @LzmaEnc_WriteProperties(i32* %41, i32* %42, i32* %43)
  store i64 %44, i64* %25, align 8
  %45 = load i64, i64* %25, align 8
  %46 = load i64, i64* @SZ_OK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %40
  %49 = load i32*, i32** %24, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = load i32*, i32** %15, align 8
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %20, align 4
  %55 = load i32*, i32** %21, align 8
  %56 = load i32, i32* %22, align 4
  %57 = load i32, i32* %23, align 4
  %58 = call i64 @LzmaEnc_MemEncode(i32* %49, i32* %50, i32* %51, i32* %52, i32 %53, i32 %54, i32* %55, i32 %56, i32 %57)
  store i64 %58, i64* %25, align 8
  br label %59

59:                                               ; preds = %48, %40
  br label %60

60:                                               ; preds = %59, %33
  %61 = load i32*, i32** %24, align 8
  %62 = load i32, i32* %22, align 4
  %63 = load i32, i32* %23, align 4
  %64 = call i32 @LzmaEnc_Destroy(i32* %61, i32 %62, i32 %63)
  %65 = load i64, i64* %25, align 8
  store i64 %65, i64* %12, align 8
  br label %66

66:                                               ; preds = %60, %31
  %67 = load i64, i64* %12, align 8
  ret i64 %67
}

declare dso_local i64 @LzmaEnc_Create(i32) #1

declare dso_local i64 @LzmaEnc_SetProps(i32*, i32*) #1

declare dso_local i64 @LzmaEnc_WriteProperties(i32*, i32*, i32*) #1

declare dso_local i64 @LzmaEnc_MemEncode(i32*, i32*, i32*, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @LzmaEnc_Destroy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
