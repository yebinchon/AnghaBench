; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_fast_intersection_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_fast_intersection_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }

@Q_words = common dso_local global i32 0, align 4
@IHE = common dso_local global %struct.TYPE_5__* null, align 8
@QW = common dso_local global i32* null, align 8
@QT = common dso_local global i32* null, align 8
@Q_min_priority = common dso_local global i32 0, align 4
@MAX_PRIORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fast_intersection_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fast_intersection_query() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %26, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @Q_words, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @IHE, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i64 %10
  %12 = load i32*, i32** @QW, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** @QT, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ihe_init(%struct.TYPE_5__* %11, i32 %16, i32 %21, i32 0)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %7
  br label %95

25:                                               ; preds = %7
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %3

29:                                               ; preds = %3
  %30 = load i32, i32* @Q_min_priority, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i32, i32* @Q_words, align 4
  store i32 %33, i32* @Q_min_priority, align 4
  %34 = load i32, i32* @Q_min_priority, align 4
  %35 = load i32, i32* @MAX_PRIORITY, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @MAX_PRIORITY, align 4
  store i32 %38, i32* @Q_min_priority, align 4
  br label %39

39:                                               ; preds = %37, %32
  br label %40

40:                                               ; preds = %39, %29
  %41 = load i32, i32* @Q_words, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %93

43:                                               ; preds = %40
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @IHE, align 8
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %2, align 8
  %45 = load i32, i32* @Q_min_priority, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %67, %47
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %48
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, 1
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @store_res(i64 %62, i32 1)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  br label %70

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %53
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %69 = call i32 @ihe_advance(%struct.TYPE_5__* %68)
  br label %48

70:                                               ; preds = %65, %48
  br label %92

71:                                               ; preds = %43
  br label %72

72:                                               ; preds = %88, %71
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %72
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, 1
  %85 = call i32 @store_res(i64 %80, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %77
  br label %91

88:                                               ; preds = %77
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %90 = call i32 @ihe_advance(%struct.TYPE_5__* %89)
  br label %72

91:                                               ; preds = %87, %72
  br label %92

92:                                               ; preds = %91, %70
  br label %95

93:                                               ; preds = %40
  %94 = call i32 (...) @intersect_lists()
  br label %95

95:                                               ; preds = %24, %93, %92
  ret void
}

declare dso_local i32 @ihe_init(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @store_res(i64, i32) #1

declare dso_local i32 @ihe_advance(%struct.TYPE_5__*) #1

declare dso_local i32 @intersect_lists(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
