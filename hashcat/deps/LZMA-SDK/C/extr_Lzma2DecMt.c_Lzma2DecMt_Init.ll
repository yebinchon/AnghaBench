; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2DecMt.c_Lzma2DecMt_Init.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2DecMt.c_Lzma2DecMt_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64, i64, i64, i64, i32, i32*, i32 }

@SZ_ERROR_UNSUPPORTED = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Lzma2DecMt_Init(i64 %0, i32 %1, i32* %2, i64* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %15 = load i64, i64* %8, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %14, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp sgt i32 %17, 40
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %20, i32* %7, align 4
  br label %61

21:                                               ; preds = %6
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 9
  store i32 %26, i32* %28, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 8
  store i32* %29, i32** %31, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 6
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @False, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 8
  %37 = load i64*, i64** %11, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %21
  %40 = load i32, i32* @True, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 8
  %43 = load i64*, i64** %11, align 8
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 6
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %39, %21
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 5
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %60 = call i32 @Lzma2Dec_Prepare_ST(%struct.TYPE_3__* %59)
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %47, %19
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32 @Lzma2Dec_Prepare_ST(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
