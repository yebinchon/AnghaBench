; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_graph.c_ahead_behind.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_graph.c_ahead_behind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_6__** }

@git_commit_list_time_cmp = common dso_local global i32 0, align 4
@RESULT = common dso_local global i32 0, align 4
@PARENT1 = common dso_local global i32 0, align 4
@PARENT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_6__*, i64*, i64*)* @ahead_behind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahead_behind(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %12, align 4
  %15 = load i64*, i64** %8, align 8
  store i64 0, i64* %15, align 8
  %16 = load i64*, i64** %9, align 8
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @git_commit_list_time_cmp, align 4
  %18 = call i64 @git_pqueue_init(i32* %11, i32 0, i32 2, i32 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %111

21:                                               ; preds = %4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = call i32 @git_pqueue_insert(i32* %11, %struct.TYPE_6__* %22)
  store i32 %23, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = call i32 @git_pqueue_insert(i32* %11, %struct.TYPE_6__* %26)
  store i32 %27, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21
  br label %108

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %101, %53, %30
  %32 = call %struct.TYPE_6__* @git_pqueue_pop(i32* %11)
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %10, align 8
  %33 = icmp ne %struct.TYPE_6__* %32, null
  br i1 %33, label %34, label %107

34:                                               ; preds = %31
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @RESULT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %34
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PARENT1, align 4
  %46 = load i32, i32* @PARENT2, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = load i32, i32* @PARENT1, align 4
  %50 = load i32, i32* @PARENT2, align 4
  %51 = or i32 %49, %50
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %41, %34
  br label %31

54:                                               ; preds = %41
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @PARENT1, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i64*, i64** %8, align 8
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %62, align 8
  br label %77

65:                                               ; preds = %54
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @PARENT2, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i64*, i64** %9, align 8
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %73, align 8
  br label %76

76:                                               ; preds = %72, %65
  br label %77

77:                                               ; preds = %76, %61
  br label %78

78:                                               ; preds = %77
  store i32 0, i32* %13, align 4
  br label %79

79:                                               ; preds = %98, %78
  %80 = load i32, i32* %13, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %79
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %88, i64 %90
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  store %struct.TYPE_6__* %92, %struct.TYPE_6__** %14, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %94 = call i32 @git_pqueue_insert(i32* %11, %struct.TYPE_6__* %93)
  store i32 %94, i32* %12, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  br label %108

97:                                               ; preds = %85
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %13, align 4
  br label %79

101:                                              ; preds = %79
  %102 = load i32, i32* @RESULT, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %31

107:                                              ; preds = %31
  br label %108

108:                                              ; preds = %107, %96, %29
  %109 = call i32 @git_pqueue_free(i32* %11)
  %110 = load i32, i32* %12, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %108, %20
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i64 @git_pqueue_init(i32*, i32, i32, i32) #1

declare dso_local i32 @git_pqueue_insert(i32*, %struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @git_pqueue_pop(i32*) #1

declare dso_local i32 @git_pqueue_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
