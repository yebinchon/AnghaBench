; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_backward_references_hq.c_BrotliCreateZopfliBackwardReferences.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_backward_references_hq.c_BrotliCreateZopfliBackwardReferences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ZopfliNode = common dso_local global i32 0, align 4
@nodes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BrotliCreateZopfliBackwardReferences(i32* %0, i32* %1, i64 %2, i64 %3, i32* %4, i64 %5, %struct.TYPE_5__* %6, i32 %7, i32* %8, i64* %9, i32* %10, i64* %11, i64* %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_5__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64*, align 8
  %26 = alloca i64*, align 8
  %27 = alloca i64, align 8
  store i32* %0, i32** %14, align 8
  store i32* %1, i32** %15, align 8
  store i64 %2, i64* %16, align 8
  store i64 %3, i64* %17, align 8
  store i32* %4, i32** %18, align 8
  store i64 %5, i64* %19, align 8
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %20, align 8
  store i32 %7, i32* %21, align 4
  store i32* %8, i32** %22, align 8
  store i64* %9, i64** %23, align 8
  store i32* %10, i32** %24, align 8
  store i64* %11, i64** %25, align 8
  store i64* %12, i64** %26, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @BROTLI_MAX_BACKWARD_LIMIT(i32 %30)
  store i64 %31, i64* %27, align 8
  %32 = load i32, i32* @ZopfliNode, align 4
  %33 = load i32, i32* @nodes, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32*, i32** %14, align 8
  %36 = load i32, i32* @ZopfliNode, align 4
  %37 = load i64, i64* %16, align 8
  %38 = add i64 %37, 1
  %39 = call i32 @BROTLI_ALLOC(i32* %35, i32 %36, i64 %38)
  store i32 %39, i32* @nodes, align 4
  %40 = load i32*, i32** %14, align 8
  %41 = call i64 @BROTLI_IS_OOM(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %13
  br label %82

44:                                               ; preds = %13
  %45 = load i32, i32* @nodes, align 4
  %46 = load i64, i64* %16, align 8
  %47 = add i64 %46, 1
  %48 = call i32 @BrotliInitZopfliNodes(i32 %45, i64 %47)
  %49 = load i32*, i32** %14, align 8
  %50 = load i32*, i32** %15, align 8
  %51 = load i64, i64* %16, align 8
  %52 = load i64, i64* %17, align 8
  %53 = load i32*, i32** %18, align 8
  %54 = load i64, i64* %19, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %56 = load i64, i64* %27, align 8
  %57 = load i32*, i32** %22, align 8
  %58 = load i32, i32* %21, align 4
  %59 = load i32, i32* @nodes, align 4
  %60 = call i64 @BrotliZopfliComputeShortestPath(i32* %49, i32* %50, i64 %51, i64 %52, i32* %53, i64 %54, %struct.TYPE_5__* %55, i64 %56, i32* %57, i32 %58, i32 %59)
  %61 = load i64*, i64** %25, align 8
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, %60
  store i64 %63, i64* %61, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = call i64 @BROTLI_IS_OOM(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %44
  br label %82

68:                                               ; preds = %44
  %69 = load i64, i64* %16, align 8
  %70 = load i64, i64* %17, align 8
  %71 = load i64, i64* %27, align 8
  %72 = load i32, i32* @nodes, align 4
  %73 = load i32*, i32** %22, align 8
  %74 = load i64*, i64** %23, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %76 = load i32*, i32** %24, align 8
  %77 = load i64*, i64** %26, align 8
  %78 = call i32 @BrotliZopfliCreateCommands(i64 %69, i64 %70, i64 %71, i32 %72, i32* %73, i64* %74, %struct.TYPE_5__* %75, i32* %76, i64* %77)
  %79 = load i32*, i32** %14, align 8
  %80 = load i32, i32* @nodes, align 4
  %81 = call i32 @BROTLI_FREE(i32* %79, i32 %80)
  br label %82

82:                                               ; preds = %68, %67, %43
  ret void
}

declare dso_local i64 @BROTLI_MAX_BACKWARD_LIMIT(i32) #1

declare dso_local i32 @BROTLI_ALLOC(i32*, i32, i64) #1

declare dso_local i64 @BROTLI_IS_OOM(i32*) #1

declare dso_local i32 @BrotliInitZopfliNodes(i32, i64) #1

declare dso_local i64 @BrotliZopfliComputeShortestPath(i32*, i32*, i64, i64, i32*, i64, %struct.TYPE_5__*, i64, i32*, i32, i32) #1

declare dso_local i32 @BrotliZopfliCreateCommands(i64, i64, i64, i32, i32*, i64*, %struct.TYPE_5__*, i32*, i64*) #1

declare dso_local i32 @BROTLI_FREE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
