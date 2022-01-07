; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_writebsp.c_EmitMarkFace.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_writebsp.c_EmitMarkFace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_5__**, %struct.TYPE_5__* }

@numfaces = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Bad leafface\00", align 1
@numleaffaces = common dso_local global i32 0, align 4
@dleaffaces = common dso_local global i32* null, align 8
@MAX_MAP_LEAFFACES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"MAX_MAP_LEAFFACES\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EmitMarkFace(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  br label %7

7:                                                ; preds = %12, %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %4, align 8
  br label %7

16:                                               ; preds = %7
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %19, i64 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %16
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %27, i64 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  call void @EmitMarkFace(%struct.TYPE_6__* %24, %struct.TYPE_5__* %29)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %33, i64 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  call void @EmitMarkFace(%struct.TYPE_6__* %30, %struct.TYPE_5__* %35)
  br label %91

36:                                               ; preds = %16
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %91

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @numfaces, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46, %43
  %51 = call i32 @Error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %46
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %70, %52
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @numleaffaces, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load i32*, i32** @dleaffaces, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %73

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %56

73:                                               ; preds = %68, %56
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @numleaffaces, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %73
  %78 = load i32, i32* @numleaffaces, align 4
  %79 = load i32, i32* @MAX_MAP_LEAFFACES, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = call i32 @Error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %77
  %84 = load i32, i32* %6, align 4
  %85 = load i32*, i32** @dleaffaces, align 8
  %86 = load i32, i32* @numleaffaces, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %84, i32* %88, align 4
  %89 = load i32, i32* @numleaffaces, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* @numleaffaces, align 4
  br label %91

91:                                               ; preds = %23, %42, %83, %73
  ret void
}

declare dso_local i32 @Error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
