; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_backend.c_run_opencl_kernel_memset.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_backend.c_run_opencl_kernel_memset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i8**, i32, i32, i32* }

@CL_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @run_opencl_kernel_memset(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [3 x i64], align 16
  %18 = alloca [3 x i64], align 16
  %19 = alloca [4 x i32], align 16
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = sdiv i32 %20, 16
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %11, align 4
  %23 = srem i32 %22, 16
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %113

26:                                               ; preds = %5
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32 %32, i32* %36, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @round_up_multiple_64(i32 %41, i32 %42)
  store i32 %43, i32* %15, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %16, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %16, align 4
  %49 = bitcast i32* %9 to i8*
  %50 = call i32 @hc_clSetKernelArg(i32* %47, i32 %48, i32 0, i32 4, i8* %49)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %26
  store i32 -1, i32* %6, align 4
  br label %140

53:                                               ; preds = %26
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %16, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i8**, i8*** %57, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @hc_clSetKernelArg(i32* %54, i32 %55, i32 1, i32 4, i8* %60)
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  store i32 -1, i32* %6, align 4
  br label %140

64:                                               ; preds = %53
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %16, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 2
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @hc_clSetKernelArg(i32* %65, i32 %66, i32 2, i32 4, i8* %71)
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  store i32 -1, i32* %6, align 4
  br label %140

75:                                               ; preds = %64
  %76 = getelementptr inbounds [3 x i64], [3 x i64]* %17, i64 0, i64 0
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %76, align 8
  %79 = getelementptr inbounds i64, i64* %76, i64 1
  store i64 1, i64* %79, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 1
  store i64 1, i64* %80, align 8
  %81 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 0, i64 0
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %81, align 8
  %84 = getelementptr inbounds i64, i64* %81, i64 1
  store i64 1, i64* %84, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 1
  store i64 1, i64* %85, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %16, align 4
  %91 = getelementptr inbounds [3 x i64], [3 x i64]* %17, i64 0, i64 0
  %92 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 0, i64 0
  %93 = call i32 @hc_clEnqueueNDRangeKernel(i32* %86, i32 %89, i32 %90, i32 1, i32* null, i64* %91, i64* %92, i32 0, i32* null, i32* null)
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %96

95:                                               ; preds = %75
  store i32 -1, i32* %6, align 4
  br label %140

96:                                               ; preds = %75
  %97 = load i32*, i32** %7, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @hc_clFlush(i32* %97, i32 %100)
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store i32 -1, i32* %6, align 4
  br label %140

104:                                              ; preds = %96
  %105 = load i32*, i32** %7, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @hc_clFinish(i32* %105, i32 %108)
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  store i32 -1, i32* %6, align 4
  br label %140

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112, %5
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %139

116:                                              ; preds = %113
  %117 = load i32, i32* %10, align 4
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  store i32 %117, i32* %118, align 16
  %119 = load i32, i32* %10, align 4
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* %10, align 4
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 2
  store i32 %121, i32* %122, align 8
  %123 = load i32, i32* %10, align 4
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 3
  store i32 %123, i32* %124, align 4
  %125 = load i32*, i32** %7, align 8
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @CL_TRUE, align 4
  %131 = load i32, i32* %12, align 4
  %132 = mul nsw i32 %131, 16
  %133 = load i32, i32* %13, align 4
  %134 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %135 = call i32 @hc_clEnqueueWriteBuffer(i32* %125, i32 %128, i32 %129, i32 %130, i32 %132, i32 %133, i32* %134, i32 0, i32* null, i32* null)
  %136 = icmp eq i32 %135, -1
  br i1 %136, label %137, label %138

137:                                              ; preds = %116
  store i32 -1, i32* %6, align 4
  br label %140

138:                                              ; preds = %116
  br label %139

139:                                              ; preds = %138, %113
  store i32 0, i32* %6, align 4
  br label %140

140:                                              ; preds = %139, %137, %111, %103, %95, %74, %63, %52
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local i32 @round_up_multiple_64(i32, i32) #1

declare dso_local i32 @hc_clSetKernelArg(i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @hc_clEnqueueNDRangeKernel(i32*, i32, i32, i32, i32*, i64*, i64*, i32, i32*, i32*) #1

declare dso_local i32 @hc_clFlush(i32*, i32) #1

declare dso_local i32 @hc_clFinish(i32*, i32) #1

declare dso_local i32 @hc_clEnqueueWriteBuffer(i32*, i32, i32, i32, i32, i32, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
