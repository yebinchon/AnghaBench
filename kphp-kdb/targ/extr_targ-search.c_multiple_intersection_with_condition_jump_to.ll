; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_multiple_intersection_with_condition_jump_to.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_multiple_intersection_with_condition_jump_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8* }
%struct.intersection_condition_iterator = type { i64, i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32, i32 (%struct.TYPE_6__*, i32)* }

@INFTY = common dso_local global i32 0, align 4
@empty_iterator_jump_to = common dso_local global i8* null, align 8
@User = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @multiple_intersection_with_condition_jump_to(%struct.TYPE_5__* %0, i32 %1) #0 {
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

15:                                               ; preds = %2, %125
  br label %16

16:                                               ; preds = %108, %15
  %17 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %6, align 8
  %18 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %19, i64 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %16
  %28 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %6, align 8
  %29 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %28, i32 0, i32 2
  %30 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %30, i64 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %33, align 8
  %35 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %6, align 8
  %36 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %35, i32 0, i32 2
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %37, i64 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 %34(%struct.TYPE_6__* %39, i32 %40)
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %27, %16
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @INFTY, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load i8*, i8** @empty_iterator_jump_to, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* @INFTY, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  store i32 %50, i32* %3, align 4
  br label %132

53:                                               ; preds = %42
  store i64 1, i64* %7, align 8
  br label %54

54:                                               ; preds = %93, %53
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %96

58:                                               ; preds = %54
  %59 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %6, align 8
  %60 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %59, i32 0, i32 2
  %61 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %61, i64 %62
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %58
  %71 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %6, align 8
  %72 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %71, i32 0, i32 2
  %73 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %73, i64 %74
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %77, align 8
  %79 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %6, align 8
  %80 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %79, i32 0, i32 2
  %81 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %81, i64 %82
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 %78(%struct.TYPE_6__* %84, i32 %85)
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %70, %58
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %96

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %7, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %7, align 8
  br label %54

96:                                               ; preds = %91, %54
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @INFTY, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load i8*, i8** @empty_iterator_jump_to, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = load i32, i32* @INFTY, align 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  store i32 %104, i32* %3, align 4
  br label %132

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* %8, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %16, label %112

112:                                              ; preds = %108
  %113 = load i32*, i32** @User, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.intersection_condition_iterator*, %struct.intersection_condition_iterator** %6, align 8
  %119 = getelementptr inbounds %struct.intersection_condition_iterator, %struct.intersection_condition_iterator* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i64 @user_matches_condition(i32 %117, i32 %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %112
  br label %128

125:                                              ; preds = %112
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %5, align 4
  br label %15

128:                                              ; preds = %124
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  store i32 %129, i32* %3, align 4
  br label %132

132:                                              ; preds = %128, %100, %46
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i64 @user_matches_condition(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
