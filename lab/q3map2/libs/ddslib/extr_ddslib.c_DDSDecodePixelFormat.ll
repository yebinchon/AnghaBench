; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/ddslib/extr_ddslib.c_DDSDecodePixelFormat.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/ddslib/extr_ddslib.c_DDSDecodePixelFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@DDS_PF_ARGB8888 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"DXT1\00", align 1
@DDS_PF_DXT1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"DXT2\00", align 1
@DDS_PF_DXT2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"DXT3\00", align 1
@DDS_PF_DXT3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"DXT4\00", align 1
@DDS_PF_DXT4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"DXT5\00", align 1
@DDS_PF_DXT5 = common dso_local global i32 0, align 4
@DDS_PF_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*)* @DDSDecodePixelFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DDSDecodePixelFormat(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = icmp eq %struct.TYPE_5__* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32*, i32** %4, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  br label %65

12:                                               ; preds = %8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32, i32* @DDS_PF_ARGB8888, align 4
  %21 = load i32*, i32** %4, align 8
  store i32 %20, i32* %21, align 4
  br label %65

22:                                               ; preds = %12
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* bitcast ([5 x i8]* @.str to i32*), align 1
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @DDS_PF_DXT1, align 4
  %28 = load i32*, i32** %4, align 8
  store i32 %27, i32* %28, align 4
  br label %64

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* bitcast ([5 x i8]* @.str.1 to i32*), align 1
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @DDS_PF_DXT2, align 4
  %35 = load i32*, i32** %4, align 8
  store i32 %34, i32* %35, align 4
  br label %63

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* bitcast ([5 x i8]* @.str.2 to i32*), align 1
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @DDS_PF_DXT3, align 4
  %42 = load i32*, i32** %4, align 8
  store i32 %41, i32* %42, align 4
  br label %62

43:                                               ; preds = %36
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* bitcast ([5 x i8]* @.str.3 to i32*), align 1
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @DDS_PF_DXT4, align 4
  %49 = load i32*, i32** %4, align 8
  store i32 %48, i32* %49, align 4
  br label %61

50:                                               ; preds = %43
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* bitcast ([5 x i8]* @.str.4 to i32*), align 1
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @DDS_PF_DXT5, align 4
  %56 = load i32*, i32** %4, align 8
  store i32 %55, i32* %56, align 4
  br label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @DDS_PF_UNKNOWN, align 4
  %59 = load i32*, i32** %4, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %54
  br label %61

61:                                               ; preds = %60, %47
  br label %62

62:                                               ; preds = %61, %40
  br label %63

63:                                               ; preds = %62, %33
  br label %64

64:                                               ; preds = %63, %26
  br label %65

65:                                               ; preds = %11, %64, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
