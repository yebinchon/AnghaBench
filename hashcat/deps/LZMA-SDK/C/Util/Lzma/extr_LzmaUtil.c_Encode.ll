; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/Util/Lzma/extr_LzmaUtil.c_Encode.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/Util/Lzma/extr_LzmaUtil.c_Encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 (%struct.TYPE_5__*, i64*, i64)* }

@g_Alloc = common dso_local global i32 0, align 4
@SZ_ERROR_MEM = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i64 0, align 8
@LZMA_PROPS_SIZE = common dso_local global i32 0, align 4
@SZ_ERROR_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32*, i32, i8*)* @Encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Encode(%struct.TYPE_5__* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @UNUSED_VAR(i8* %17)
  %19 = call i64 @LzmaEnc_Create(i32* @g_Alloc)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i64, i64* @SZ_ERROR_MEM, align 8
  store i64 %23, i64* %5, align 8
  br label %83

24:                                               ; preds = %4
  %25 = call i32 @LzmaEncProps_Init(i32* %12)
  %26 = load i64, i64* %10, align 8
  %27 = call i64 @LzmaEnc_SetProps(i64 %26, i32* %12)
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* @SZ_OK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %79

31:                                               ; preds = %24
  %32 = load i32, i32* @LZMA_PROPS_SIZE, align 4
  %33 = add nsw i32 %32, 8
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %13, align 8
  %36 = alloca i64, i64 %34, align 16
  store i64 %34, i64* %14, align 8
  %37 = load i32, i32* @LZMA_PROPS_SIZE, align 4
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %15, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i64 @LzmaEnc_WriteProperties(i64 %39, i64* %36, i64* %15)
  store i64 %40, i64* %11, align 8
  store i32 0, i32* %16, align 4
  br label %41

41:                                               ; preds = %53, %31
  %42 = load i32, i32* %16, align 4
  %43 = icmp slt i32 %42, 8
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %16, align 4
  %47 = mul nsw i32 8, %46
  %48 = ashr i32 %45, %47
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %15, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %15, align 8
  %52 = getelementptr inbounds i64, i64* %36, i64 %50
  store i64 %49, i64* %52, align 8
  br label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %16, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %16, align 4
  br label %41

56:                                               ; preds = %41
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64 (%struct.TYPE_5__*, i64*, i64)*, i64 (%struct.TYPE_5__*, i64*, i64)** %58, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = load i64, i64* %15, align 8
  %62 = call i64 %59(%struct.TYPE_5__* %60, i64* %36, i64 %61)
  %63 = load i64, i64* %15, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i64, i64* @SZ_ERROR_WRITE, align 8
  store i64 %66, i64* %11, align 8
  br label %77

67:                                               ; preds = %56
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* @SZ_OK, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i64, i64* %10, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = call i64 @LzmaEnc_Encode(i64 %72, %struct.TYPE_5__* %73, i32* %74, i32* null, i32* @g_Alloc, i32* @g_Alloc)
  store i64 %75, i64* %11, align 8
  br label %76

76:                                               ; preds = %71, %67
  br label %77

77:                                               ; preds = %76, %65
  %78 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %78)
  br label %79

79:                                               ; preds = %77, %24
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @LzmaEnc_Destroy(i64 %80, i32* @g_Alloc, i32* @g_Alloc)
  %82 = load i64, i64* %11, align 8
  store i64 %82, i64* %5, align 8
  br label %83

83:                                               ; preds = %79, %22
  %84 = load i64, i64* %5, align 8
  ret i64 %84
}

declare dso_local i32 @UNUSED_VAR(i8*) #1

declare dso_local i64 @LzmaEnc_Create(i32*) #1

declare dso_local i32 @LzmaEncProps_Init(i32*) #1

declare dso_local i64 @LzmaEnc_SetProps(i64, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @LzmaEnc_WriteProperties(i64, i64*, i64*) #1

declare dso_local i64 @LzmaEnc_Encode(i64, %struct.TYPE_5__*, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @LzmaEnc_Destroy(i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
