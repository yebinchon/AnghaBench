; ModuleID = '/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_histogram.c_BrotliBuildHistogramsWithContext.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/brotli/c/enc/extr_histogram.c_BrotliBuildHistogramsWithContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.TYPE_9__ = type { i64 }

@BROTLI_LITERAL_CONTEXT_BITS = common dso_local global i64 0, align 8
@BROTLI_DISTANCE_CONTEXT_BITS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BrotliBuildHistogramsWithContext(%struct.TYPE_8__* %0, i64 %1, i32* %2, i32* %3, i32* %4, i32* %5, i64 %6, i64 %7, i32 %8, i32 %9, i32* %10, i32* %11, i32* %12, i32* %13) #0 {
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i64, align 8
  %30 = alloca %struct.TYPE_9__, align 8
  %31 = alloca %struct.TYPE_9__, align 8
  %32 = alloca %struct.TYPE_9__, align 8
  %33 = alloca i64, align 8
  %34 = alloca %struct.TYPE_8__*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %15, align 8
  store i64 %1, i64* %16, align 8
  store i32* %2, i32** %17, align 8
  store i32* %3, i32** %18, align 8
  store i32* %4, i32** %19, align 8
  store i32* %5, i32** %20, align 8
  store i64 %6, i64* %21, align 8
  store i64 %7, i64* %22, align 8
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32* %10, i32** %25, align 8
  store i32* %11, i32** %26, align 8
  store i32* %12, i32** %27, align 8
  store i32* %13, i32** %28, align 8
  %38 = load i64, i64* %21, align 8
  store i64 %38, i64* %29, align 8
  %39 = load i32*, i32** %17, align 8
  %40 = call i32 @InitBlockSplitIterator(%struct.TYPE_9__* %30, i32* %39)
  %41 = load i32*, i32** %18, align 8
  %42 = call i32 @InitBlockSplitIterator(%struct.TYPE_9__* %31, i32* %41)
  %43 = load i32*, i32** %19, align 8
  %44 = call i32 @InitBlockSplitIterator(%struct.TYPE_9__* %32, i32* %43)
  store i64 0, i64* %33, align 8
  br label %45

45:                                               ; preds = %158, %14
  %46 = load i64, i64* %33, align 8
  %47 = load i64, i64* %16, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %161

49:                                               ; preds = %45
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %51 = load i64, i64* %33, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 %51
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %34, align 8
  %53 = call i32 @BlockSplitIteratorNext(%struct.TYPE_9__* %31)
  %54 = load i32*, i32** %27, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @HistogramAddCommand(i32* %57, i32 %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %35, align 8
  br label %65

65:                                               ; preds = %110, %49
  %66 = load i64, i64* %35, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %113

68:                                               ; preds = %65
  %69 = call i32 @BlockSplitIteratorNext(%struct.TYPE_9__* %30)
  %70 = load i32*, i32** %25, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %86

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @BROTLI_LITERAL_CONTEXT_BITS, align 8
  %76 = shl i64 %74, %75
  %77 = load i32, i32* %23, align 4
  %78 = load i32, i32* %24, align 4
  %79 = load i32*, i32** %25, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @Context(i32 %77, i32 %78, i32 %83)
  %85 = add i64 %76, %84
  br label %89

86:                                               ; preds = %68
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  br label %89

89:                                               ; preds = %86, %72
  %90 = phi i64 [ %85, %72 ], [ %88, %86 ]
  store i64 %90, i64* %36, align 8
  %91 = load i32*, i32** %26, align 8
  %92 = load i64, i64* %36, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32*, i32** %20, align 8
  %95 = load i64, i64* %29, align 8
  %96 = load i64, i64* %22, align 8
  %97 = and i64 %95, %96
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @HistogramAddLiteral(i32* %93, i32 %99)
  %101 = load i32, i32* %23, align 4
  store i32 %101, i32* %24, align 4
  %102 = load i32*, i32** %20, align 8
  %103 = load i64, i64* %29, align 8
  %104 = load i64, i64* %22, align 8
  %105 = and i64 %103, %104
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %23, align 4
  %108 = load i64, i64* %29, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %29, align 8
  br label %110

110:                                              ; preds = %89
  %111 = load i64, i64* %35, align 8
  %112 = add i64 %111, -1
  store i64 %112, i64* %35, align 8
  br label %65

113:                                              ; preds = %65
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %115 = call i64 @CommandCopyLen(%struct.TYPE_8__* %114)
  %116 = load i64, i64* %29, align 8
  %117 = add i64 %116, %115
  store i64 %117, i64* %29, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %119 = call i64 @CommandCopyLen(%struct.TYPE_8__* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %157

121:                                              ; preds = %113
  %122 = load i32*, i32** %20, align 8
  %123 = load i64, i64* %29, align 8
  %124 = sub i64 %123, 2
  %125 = load i64, i64* %22, align 8
  %126 = and i64 %124, %125
  %127 = getelementptr inbounds i32, i32* %122, i64 %126
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %24, align 4
  %129 = load i32*, i32** %20, align 8
  %130 = load i64, i64* %29, align 8
  %131 = sub i64 %130, 1
  %132 = load i64, i64* %22, align 8
  %133 = and i64 %131, %132
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %23, align 4
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp sge i32 %138, 128
  br i1 %139, label %140, label %156

140:                                              ; preds = %121
  %141 = call i32 @BlockSplitIteratorNext(%struct.TYPE_9__* %32)
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @BROTLI_DISTANCE_CONTEXT_BITS, align 8
  %145 = shl i64 %143, %144
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %147 = call i64 @CommandDistanceContext(%struct.TYPE_8__* %146)
  %148 = add i64 %145, %147
  store i64 %148, i64* %37, align 8
  %149 = load i32*, i32** %28, align 8
  %150 = load i64, i64* %37, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @HistogramAddDistance(i32* %151, i32 %154)
  br label %156

156:                                              ; preds = %140, %121
  br label %157

157:                                              ; preds = %156, %113
  br label %158

158:                                              ; preds = %157
  %159 = load i64, i64* %33, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %33, align 8
  br label %45

161:                                              ; preds = %45
  ret void
}

declare dso_local i32 @InitBlockSplitIterator(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @BlockSplitIteratorNext(%struct.TYPE_9__*) #1

declare dso_local i32 @HistogramAddCommand(i32*, i32) #1

declare dso_local i64 @Context(i32, i32, i32) #1

declare dso_local i32 @HistogramAddLiteral(i32*, i32) #1

declare dso_local i64 @CommandCopyLen(%struct.TYPE_8__*) #1

declare dso_local i64 @CommandDistanceContext(%struct.TYPE_8__*) #1

declare dso_local i32 @HistogramAddDistance(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
