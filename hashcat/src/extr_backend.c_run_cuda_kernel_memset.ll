; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_backend.c_run_cuda_kernel_memset.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_backend.c_run_cuda_kernel_memset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32, i8**, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @run_cuda_kernel_memset(i32* %0, %struct.TYPE_3__* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [4 x i32], align 16
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = sdiv i32 %18, 16
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %11, align 4
  %21 = srem i32 %20, 16
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %72

24:                                               ; preds = %5
  %25 = bitcast i64* %9 to i8*
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  store i8* %25, i8** %29, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 %30, i32* %34, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  store i32 %35, i32* %39, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @CEILDIV(i32 %44, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %16, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i8**, i8*** %58, align 8
  %60 = call i32 @hc_cuLaunchKernel(i32* %50, i32 %51, i32 %52, i32 1, i32 1, i32 %53, i32 1, i32 1, i32 0, i32 %56, i8** %59, i32* null)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %24
  store i32 -1, i32* %6, align 4
  br label %97

63:                                               ; preds = %24
  %64 = load i32*, i32** %7, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @hc_cuStreamSynchronize(i32* %64, i32 %67)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i32 -1, i32* %6, align 4
  br label %97

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %5
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  store i32 %76, i32* %77, align 16
  %78 = load i32, i32* %10, align 4
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %10, align 4
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  store i32 %80, i32* %81, align 8
  %82 = load i32, i32* %10, align 4
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 3
  store i32 %82, i32* %83, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load i32, i32* %12, align 4
  %87 = mul nsw i32 %86, 16
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %85, %88
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @hc_cuMemcpyHtoD(i32* %84, i64 %89, i32* %90, i32 %91)
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %95

94:                                               ; preds = %75
  store i32 -1, i32* %6, align 4
  br label %97

95:                                               ; preds = %75
  br label %96

96:                                               ; preds = %95, %72
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %96, %94, %70, %62
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @CEILDIV(i32, i32) #1

declare dso_local i32 @hc_cuLaunchKernel(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32*) #1

declare dso_local i32 @hc_cuStreamSynchronize(i32*, i32) #1

declare dso_local i32 @hc_cuMemcpyHtoD(i32*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
