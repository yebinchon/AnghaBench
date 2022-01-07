; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/Util/7z/extr_7zMain.c_Utf16_To_Char.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/Util/7z/extr_7zMain.c_Utf16_To_Char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64* }

@SZ_ERROR_MEM = common dso_local global i32 0, align 4
@SZ_ERROR_FAIL = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64*, i32)* @Utf16_To_Char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Utf16_To_Char(%struct.TYPE_5__* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %21, %3
  %14 = load i64*, i64** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %8, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %8, align 4
  br label %13

24:                                               ; preds = %13
  %25 = load i32, i32* %8, align 4
  %26 = mul i32 %25, 3
  %27 = add i32 %26, 100
  store i32 %27, i32* %9, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @Buf_EnsureSize(%struct.TYPE_5__* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @SZ_ERROR_MEM, align 4
  store i32 %33, i32* %4, align 4
  br label %69

34:                                               ; preds = %24
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %34
  store i8 95, i8* %10, align 1
  store i32 0, i32* %12, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i64*, i64** %6, align 8
  %44 = ptrtoint i64* %43 to i32
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = bitcast i64* %48 to i8*
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @WideCharToMultiByte(i32 %42, i32 0, i32 %44, i32 %45, i8* %49, i32 %50, i8* %10, i32* %11)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %41
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp uge i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54, %41
  %59 = load i32, i32* @SZ_ERROR_FAIL, align 4
  store i32 %59, i32* %4, align 4
  br label %69

60:                                               ; preds = %54
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %60, %34
  %68 = load i32, i32* @SZ_OK, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %58, %32
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @Buf_EnsureSize(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32, i32, i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
