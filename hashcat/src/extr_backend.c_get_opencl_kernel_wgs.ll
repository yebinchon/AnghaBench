; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_backend.c_get_opencl_kernel_wgs.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_backend.c_get_opencl_kernel_wgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@CL_KERNEL_WORK_GROUP_SIZE = common dso_local global i32 0, align 4
@CL_KERNEL_COMPILE_WORK_GROUP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32, i32*)* @get_opencl_kernel_wgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_opencl_kernel_wgs(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [3 x i64], align 16
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %10, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CL_KERNEL_WORK_GROUP_SIZE, align 4
  %20 = call i32 (i32*, i32, i32, i32, i32, ...) @hc_clGetKernelWorkGroupInfo(i32* %14, i32 %15, i32 %18, i32 %19, i32 8, i64* %10, i8* null)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %55

23:                                               ; preds = %4
  %24 = load i64, i64* %10, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %11, align 4
  %26 = bitcast [3 x i64]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %26, i8 0, i64 24, i1 false)
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CL_KERNEL_COMPILE_WORK_GROUP_SIZE, align 4
  %33 = call i32 (i32*, i32, i32, i32, i32, ...) @hc_clGetKernelWorkGroupInfo(i32* %27, i32 %28, i32 %31, i32 %32, i32 24, [3 x i64]* %12, i8* null)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  store i32 -1, i32* %5, align 4
  br label %55

36:                                               ; preds = %23
  %37 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 0
  %38 = load i64, i64* %37, align 16
  %39 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = mul i64 %38, %40
  %42 = getelementptr inbounds [3 x i64], [3 x i64]* %12, i64 0, i64 2
  %43 = load i64, i64* %42, align 16
  %44 = mul i64 %41, %43
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %13, align 8
  %46 = icmp ugt i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %36
  %48 = load i32, i32* %11, align 4
  %49 = load i64, i64* %13, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @MIN(i32 %48, i32 %50)
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %47, %36
  %53 = load i32, i32* %11, align 4
  %54 = load i32*, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %52, %35, %22
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @hc_clGetKernelWorkGroupInfo(i32*, i32, i32, i32, i32, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
