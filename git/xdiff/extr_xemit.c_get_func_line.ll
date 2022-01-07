; ModuleID = '/home/carl/AnghaBench/git/xdiff/extr_xemit.c_get_func_line.c'
source_filename = "/home/carl/AnghaBench/git/xdiff/extr_xemit.c_get_func_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.func_line = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i32*, %struct.func_line*, i64, i64)* @get_func_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_func_line(%struct.TYPE_4__* %0, i32* %1, %struct.func_line* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.func_line*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [1 x i8], align 1
  %17 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.func_line* %2, %struct.func_line** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* %11, align 8
  %20 = icmp sgt i64 %18, %19
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 -1, i32 1
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %14, align 8
  %24 = load %struct.func_line*, %struct.func_line** %9, align 8
  %25 = icmp ne %struct.func_line* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load %struct.func_line*, %struct.func_line** %9, align 8
  %28 = getelementptr inbounds %struct.func_line, %struct.func_line* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  br label %32

30:                                               ; preds = %5
  %31 = getelementptr inbounds [1 x i8], [1 x i8]* %16, i64 0, i64 0
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi i8* [ %29, %26 ], [ %31, %30 ]
  store i8* %33, i8** %15, align 8
  %34 = load %struct.func_line*, %struct.func_line** %9, align 8
  %35 = icmp ne %struct.func_line* %34, null
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i64 8, i64 1
  store i64 %37, i64* %13, align 8
  %38 = load i64, i64* %10, align 8
  store i64 %38, i64* %12, align 8
  br label %39

39:                                               ; preds = %75, %32
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %11, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load i64, i64* %12, align 8
  %45 = icmp sle i64 0, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i64, i64* %12, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %47, %51
  br label %53

53:                                               ; preds = %46, %43, %39
  %54 = phi i1 [ false, %43 ], [ false, %39 ], [ %52, %46 ]
  br i1 %54, label %55, label %79

55:                                               ; preds = %53
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32*, i32** %8, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load i8*, i8** %15, align 8
  %61 = load i64, i64* %13, align 8
  %62 = call i64 @match_func_rec(%struct.TYPE_5__* %57, i32* %58, i64 %59, i8* %60, i64 %61)
  store i64 %62, i64* %17, align 8
  %63 = load i64, i64* %17, align 8
  %64 = icmp sge i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %55
  %66 = load %struct.func_line*, %struct.func_line** %9, align 8
  %67 = icmp ne %struct.func_line* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i64, i64* %17, align 8
  %70 = load %struct.func_line*, %struct.func_line** %9, align 8
  %71 = getelementptr inbounds %struct.func_line, %struct.func_line* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %68, %65
  %73 = load i64, i64* %12, align 8
  store i64 %73, i64* %6, align 8
  br label %80

74:                                               ; preds = %55
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %14, align 8
  %77 = load i64, i64* %12, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* %12, align 8
  br label %39

79:                                               ; preds = %53
  store i64 -1, i64* %6, align 8
  br label %80

80:                                               ; preds = %79, %72
  %81 = load i64, i64* %6, align 8
  ret i64 %81
}

declare dso_local i64 @match_func_rec(%struct.TYPE_5__*, i32*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
