; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzDec.c_Lzma2State_Code2.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzDec.c_Lzma2State_Code2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i64*, i32*, i64*, i32, i64, i64*)* @Lzma2State_Code2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Lzma2State_Code2(i8* %0, i32* %1, i64* %2, i32* %3, i64* %4, i32 %5, i64 %6, i64* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64* %2, i64** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64* %4, i64** %13, align 8
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  store i64* %7, i64** %16, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %17, align 8
  %24 = load i32, i32* %14, align 4
  %25 = call i32 @UNUSED_VAR(i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %20, align 8
  %36 = load i64, i64* %20, align 8
  %37 = load i64*, i64** %11, align 8
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %36, %38
  store i64 %39, i64* %21, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %21, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = load i64*, i64** %13, align 8
  %45 = load i64, i64* %15, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @Lzma2Dec_DecodeToDic(%struct.TYPE_7__* %41, i64 %42, i32* %43, i64* %44, i32 %46, i64* %18)
  store i32 %47, i32* %19, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %20, align 8
  %54 = sub nsw i64 %52, %53
  %55 = load i64*, i64** %11, align 8
  store i64 %54, i64* %55, align 8
  br label %66

56:                                               ; preds = %8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32*, i32** %10, align 8
  %60 = load i64*, i64** %11, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = load i64*, i64** %13, align 8
  %63 = load i64, i64* %15, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @Lzma2Dec_DecodeToBuf(%struct.TYPE_7__* %58, i32* %59, i64* %60, i32* %61, i64* %62, i32 %64, i64* %18)
  store i32 %65, i32* %19, align 4
  br label %66

66:                                               ; preds = %56, %30
  %67 = load i64, i64* %18, align 8
  %68 = load i64*, i64** %16, align 8
  store i64 %67, i64* %68, align 8
  %69 = load i32, i32* %19, align 4
  ret i32 %69
}

declare dso_local i32 @UNUSED_VAR(i32) #1

declare dso_local i32 @Lzma2Dec_DecodeToDic(%struct.TYPE_7__*, i64, i32*, i64*, i32, i64*) #1

declare dso_local i32 @Lzma2Dec_DecodeToBuf(%struct.TYPE_7__*, i32*, i64*, i32*, i64*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
