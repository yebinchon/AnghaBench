; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_image.c_LoadDDSBuffer.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_image.c_LoadDDSBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYS_WRN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"WARNING: Invalid DDS texture\0A\00", align 1
@DDS_PF_ARGB8888 = common dso_local global i64 0, align 8
@DDS_PF_DXT1 = common dso_local global i64 0, align 8
@DDS_PF_DXT3 = common dso_local global i64 0, align 8
@DDS_PF_DXT5 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [85 x i8] c"WARNING: Only DDS texture formats ARGB8888, DXT1, DXT3, and DXT5 are supported (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**, i32*, i32*)* @LoadDDSBuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LoadDDSBuffer(i32* %0, i32 %1, i32** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %7, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %16
  %20 = load i32**, i32*** %8, align 8
  %21 = icmp eq i32** %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i32*, i32** %9, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32*, i32** %10, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22, %19, %16, %5
  br label %74

29:                                               ; preds = %25
  %30 = load i32**, i32*** %8, align 8
  store i32* null, i32** %30, align 8
  %31 = load i32*, i32** %9, align 8
  store i32 0, i32* %31, align 4
  %32 = load i32*, i32** %10, align 8
  store i32 0, i32* %32, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = call i64 @DDSGetInfo(i32* %33, i32* %11, i32* %12, i64* %13)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @SYS_WRN, align 4
  %38 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %74

39:                                               ; preds = %29
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* @DDS_PF_ARGB8888, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load i64, i64* %13, align 8
  %45 = load i64, i64* @DDS_PF_DXT1, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* @DDS_PF_DXT3, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* @DDS_PF_DXT5, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* @SYS_WRN, align 4
  %57 = load i64, i64* %13, align 8
  %58 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %56, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  br label %74

59:                                               ; preds = %51, %47, %43, %39
  %60 = load i32, i32* %11, align 4
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32*, i32** %10, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = mul nsw i32 %64, %65
  %67 = mul nsw i32 %66, 4
  %68 = call i32* @safe_malloc(i32 %67)
  %69 = load i32**, i32*** %8, align 8
  store i32* %68, i32** %69, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load i32**, i32*** %8, align 8
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @DDSDecompress(i32* %70, i32* %72)
  br label %74

74:                                               ; preds = %59, %55, %36, %28
  ret void
}

declare dso_local i64 @DDSGetInfo(i32*, i32*, i32*, i64*) #1

declare dso_local i32 @Sys_FPrintf(i32, i8*, ...) #1

declare dso_local i32* @safe_malloc(i32) #1

declare dso_local i32 @DDSDecompress(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
