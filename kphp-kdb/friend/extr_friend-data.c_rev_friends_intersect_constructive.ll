; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_rev_friends_intersect_constructive.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_rev_friends_intersect_constructive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, %struct.TYPE_3__*, %struct.TYPE_3__* }

@rev_friends_intersect_pos = common dso_local global i64 0, align 8
@rev_friends_intersect_len = common dso_local global i64 0, align 8
@rev_friends_intersect_list = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32*, i32)* @rev_friends_intersect_constructive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rev_friends_intersect_constructive(%struct.TYPE_3__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = icmp ne %struct.TYPE_3__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %108

14:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @rev_friends_intersect_constructive(%struct.TYPE_3__* %23, i32 %24, i32* %25, i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %20, %14
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %85

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %52, %36
  %38 = load i64, i64* @rev_friends_intersect_pos, align 8
  %39 = load i64, i64* @rev_friends_intersect_len, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i64*, i64** @rev_friends_intersect_list, align 8
  %43 = load i64, i64* @rev_friends_intersect_pos, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br label %50

50:                                               ; preds = %41, %37
  %51 = phi i1 [ false, %37 ], [ %49, %41 ]
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = load i64, i64* @rev_friends_intersect_pos, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* @rev_friends_intersect_pos, align 8
  br label %37

55:                                               ; preds = %50
  %56 = load i64, i64* @rev_friends_intersect_pos, align 8
  %57 = load i64, i64* @rev_friends_intersect_len, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %55
  %60 = load i64*, i64** @rev_friends_intersect_list, align 8
  %61 = load i64, i64* @rev_friends_intersect_pos, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %59
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = load i64*, i64** @rev_friends_intersect_list, align 8
  %74 = load i64, i64* @rev_friends_intersect_pos, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* @rev_friends_intersect_pos, align 8
  %76 = getelementptr inbounds i64, i64* %73, i64 %74
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @unconv_uid(i64 %77)
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  store i32 %78, i32* %83, align 4
  br label %84

84:                                               ; preds = %72, %68, %59, %55
  br label %85

85:                                               ; preds = %84, %30
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = icmp sle i32 %88, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %85
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %10, align 4
  %102 = sub nsw i32 %100, %101
  %103 = call i32 @rev_friends_intersect_constructive(%struct.TYPE_3__* %94, i32 %95, i32* %99, i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %91, %85
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %13
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @unconv_uid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
