; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_backend.c_run_kernel_amp.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_backend.c_run_kernel_amp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32, i32, i32, i32*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @run_kernel_amp(i32* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x i64], align 16
  %13 = alloca [3 x i64], align 16
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 6
  store i32 %14, i32* %18, align 4
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %56

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @CEILDIV(i32 %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %10, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @hc_cuLaunchKernel(i32* %34, i32 %35, i32 %36, i32 1, i32 1, i32 %37, i32 1, i32 1, i32 0, i32 %40, i32* %43, i32* null)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  br label %117

47:                                               ; preds = %27
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @hc_cuStreamSynchronize(i32* %48, i32 %51)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 -1, i32* %4, align 4
  br label %117

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %3
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %116

61:                                               ; preds = %56
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @round_up_multiple_64(i32 %62, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %11, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 5
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 6
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @hc_clSetKernelArg(i32* %68, i32 %69, i32 6, i32 4, i32 %74)
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %78

77:                                               ; preds = %61
  store i32 -1, i32* %4, align 4
  br label %117

78:                                               ; preds = %61
  %79 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %79, align 8
  %82 = getelementptr inbounds i64, i64* %79, i64 1
  store i64 1, i64* %82, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 1
  store i64 1, i64* %83, align 8
  %84 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %84, align 8
  %87 = getelementptr inbounds i64, i64* %84, i64 1
  store i64 1, i64* %87, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 1
  store i64 1, i64* %88, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %11, align 4
  %94 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  %95 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0
  %96 = call i32 @hc_clEnqueueNDRangeKernel(i32* %89, i32 %92, i32 %93, i32 1, i32* null, i64* %94, i64* %95, i32 0, i32* null, i32* null)
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %99

98:                                               ; preds = %78
  store i32 -1, i32* %4, align 4
  br label %117

99:                                               ; preds = %78
  %100 = load i32*, i32** %5, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @hc_clFlush(i32* %100, i32 %103)
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  store i32 -1, i32* %4, align 4
  br label %117

107:                                              ; preds = %99
  %108 = load i32*, i32** %5, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @hc_clFinish(i32* %108, i32 %111)
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  store i32 -1, i32* %4, align 4
  br label %117

115:                                              ; preds = %107
  br label %116

116:                                              ; preds = %115, %56
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %116, %114, %106, %98, %77, %54, %46
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @CEILDIV(i32, i32) #1

declare dso_local i32 @hc_cuLaunchKernel(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @hc_cuStreamSynchronize(i32*, i32) #1

declare dso_local i32 @round_up_multiple_64(i32, i32) #1

declare dso_local i32 @hc_clSetKernelArg(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @hc_clEnqueueNDRangeKernel(i32*, i32, i32, i32, i32*, i64*, i64*, i32, i32*, i32*) #1

declare dso_local i32 @hc_clFlush(i32*, i32) #1

declare dso_local i32 @hc_clFinish(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
