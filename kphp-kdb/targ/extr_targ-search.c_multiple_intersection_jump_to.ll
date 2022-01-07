; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_multiple_intersection_jump_to.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_multiple_intersection_jump_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }
%struct.intersection_condition_iterator = type { i64, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32, i32 (%struct.TYPE_6__*, i32)* }

@INFTY = common dso_local global i32 0, align 4
@empty_iterator_jump_to = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @multiple_intersection_jump_to(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intersection_condition_iterator*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = bitcast %struct.TYPE_5__* %10 to %struct.intersection_condition_iterator*
  store %struct.intersection_condition_iterator* %11, %struct.intersection_condition_iterator** %6, align 8
  %12 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %6, align 8
  %13 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  br label %15

15:                                               ; preds = %107, %2
  %16 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %6, align 8
  %17 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %18, i64 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %15
  %27 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %6, align 8
  %28 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %29, i64 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %32, align 8
  %34 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %6, align 8
  %35 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %36, i64 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 %33(%struct.TYPE_6__* %38, i32 %39)
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %26, %15
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @INFTY, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i8*, i8** @empty_iterator_jump_to, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* @INFTY, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  store i32 %49, i32* %3, align 4
  br label %115

52:                                               ; preds = %41
  store i64 1, i64* %7, align 8
  br label %53

53:                                               ; preds = %92, %52
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %95

57:                                               ; preds = %53
  %58 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %6, align 8
  %59 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %60, i64 %61
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %57
  %70 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %6, align 8
  %71 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %72, i64 %73
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %76, align 8
  %78 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %6, align 8
  %79 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %78, i32 0, i32 1
  %80 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %80, i64 %81
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 %77(%struct.TYPE_6__* %83, i32 %84)
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %69, %57
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %95

91:                                               ; preds = %86
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %7, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %7, align 8
  br label %53

95:                                               ; preds = %90, %53
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @INFTY, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = load i8*, i8** @empty_iterator_jump_to, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  %103 = load i32, i32* @INFTY, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  store i32 %103, i32* %3, align 4
  br label %115

106:                                              ; preds = %95
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* %7, align 8
  %109 = load i64, i64* %8, align 8
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %15, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  store i32 %112, i32* %3, align 4
  br label %115

115:                                              ; preds = %111, %99, %45
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
