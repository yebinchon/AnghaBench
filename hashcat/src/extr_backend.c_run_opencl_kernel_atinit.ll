; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_backend.c_run_opencl_kernel_atinit.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_backend.c_run_opencl_kernel_atinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i8**, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @run_opencl_kernel_atinit(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i64], align 16
  %14 = alloca [3 x i64], align 16
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %16, i32* %20, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @round_up_multiple_64(i32 %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  %30 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %30, align 8
  %33 = getelementptr inbounds i64, i64* %30, i64 1
  store i64 1, i64* %33, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  store i64 1, i64* %34, align 8
  %35 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %35, align 8
  %38 = getelementptr inbounds i64, i64* %35, i64 1
  store i64 1, i64* %38, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  store i64 1, i64* %39, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %12, align 4
  %42 = bitcast i32* %8 to i8*
  %43 = call i32 @hc_clSetKernelArg(i32* %40, i32 %41, i32 0, i32 4, i8* %42)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %85

46:                                               ; preds = %4
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @hc_clSetKernelArg(i32* %47, i32 %48, i32 1, i32 4, i8* %53)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  store i32 -1, i32* %5, align 4
  br label %85

57:                                               ; preds = %46
  %58 = load i32*, i32** %6, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = getelementptr inbounds [3 x i64], [3 x i64]* %13, i64 0, i64 0
  %64 = getelementptr inbounds [3 x i64], [3 x i64]* %14, i64 0, i64 0
  %65 = call i32 @hc_clEnqueueNDRangeKernel(i32* %58, i32 %61, i32 %62, i32 1, i32* null, i64* %63, i64* %64, i32 0, i32* null, i32* null)
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  store i32 -1, i32* %5, align 4
  br label %85

68:                                               ; preds = %57
  %69 = load i32*, i32** %6, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @hc_clFlush(i32* %69, i32 %72)
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 -1, i32* %5, align 4
  br label %85

76:                                               ; preds = %68
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @hc_clFinish(i32* %77, i32 %80)
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store i32 -1, i32* %5, align 4
  br label %85

84:                                               ; preds = %76
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %83, %75, %67, %56, %45
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @round_up_multiple_64(i32, i32) #1

declare dso_local i32 @hc_clSetKernelArg(i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @hc_clEnqueueNDRangeKernel(i32*, i32, i32, i32, i32*, i64*, i64*, i32, i32*, i32*) #1

declare dso_local i32 @hc_clFlush(i32*, i32) #1

declare dso_local i32 @hc_clFinish(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
