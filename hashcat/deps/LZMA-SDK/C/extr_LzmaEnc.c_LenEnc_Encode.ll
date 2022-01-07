; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzmaEnc.c_LenEnc_Encode.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzmaEnc.c_LenEnc_Encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_10__ = type { i8* }

@kLenNumLowSymbols = common dso_local global i32 0, align 4
@kLenNumLowBits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32)* @LenEnc_Encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LenEnc_Encode(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %12, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %9, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = call i32 @RC_BIT_PRE(%struct.TYPE_10__* %21, i32* %22)
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @kLenNumLowSymbols, align 4
  %26 = icmp uge i32 %24, %25
  br i1 %26, label %27, label %62

27:                                               ; preds = %4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = call i32 @RC_BIT_1(%struct.TYPE_10__* %28, i32* %29)
  %31 = load i32, i32* @kLenNumLowSymbols, align 4
  %32 = load i32*, i32** %12, align 8
  %33 = zext i32 %31 to i64
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32* %34, i32** %12, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @RC_BIT_PRE(%struct.TYPE_10__* %35, i32* %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @kLenNumLowSymbols, align 4
  %40 = mul i32 %39, 2
  %41 = icmp uge i32 %38, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %27
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @RC_BIT_1(%struct.TYPE_10__* %43, i32* %44)
  %46 = load i8*, i8** %9, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @kLenNumLowSymbols, align 4
  %55 = mul i32 %54, 2
  %56 = sub i32 %53, %55
  %57 = call i32 @LitEnc_Encode(%struct.TYPE_10__* %49, i32 %52, i32 %56)
  br label %108

58:                                               ; preds = %27
  %59 = load i32, i32* @kLenNumLowSymbols, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sub i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %58, %4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = call i32 @RC_BIT_0(%struct.TYPE_10__* %63, i32* %64)
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @kLenNumLowBits, align 4
  %68 = add nsw i32 1, %67
  %69 = shl i32 %66, %68
  %70 = load i32*, i32** %12, align 8
  %71 = zext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %12, align 8
  %73 = load i32, i32* %7, align 4
  %74 = lshr i32 %73, 2
  store i32 %74, i32* %14, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @RC_BIT(%struct.TYPE_10__* %75, i32* %77, i32 %78)
  %80 = load i32, i32* %14, align 4
  %81 = add i32 2, %80
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %7, align 4
  %83 = lshr i32 %82, 1
  %84 = and i32 %83, 1
  store i32 %84, i32* %14, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* %13, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @RC_BIT(%struct.TYPE_10__* %85, i32* %89, i32 %90)
  %92 = load i32, i32* %13, align 4
  %93 = shl i32 %92, 1
  %94 = load i32, i32* %14, align 4
  %95 = add i32 %93, %94
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %7, align 4
  %97 = and i32 %96, 1
  store i32 %97, i32* %14, align 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %99 = load i32*, i32** %12, align 8
  %100 = load i32, i32* %13, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %14, align 4
  %104 = call i32 @RC_BIT(%struct.TYPE_10__* %98, i32* %102, i32 %103)
  %105 = load i8*, i8** %9, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  br label %108

108:                                              ; preds = %62, %42
  ret void
}

declare dso_local i32 @RC_BIT_PRE(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @RC_BIT_1(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @LitEnc_Encode(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @RC_BIT_0(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @RC_BIT(%struct.TYPE_10__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
