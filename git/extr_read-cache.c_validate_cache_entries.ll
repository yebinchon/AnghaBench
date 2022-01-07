; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_validate_cache_entries.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_validate_cache_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.TYPE_2__*, i32*, i32, i32 }
%struct.TYPE_2__ = type { %struct.index_state* }

@.str = private unnamed_addr constant [55 x i8] c"cache entry is not allocated from expected memory pool\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @validate_cache_entries(%struct.index_state* %0) #0 {
  %2 = alloca %struct.index_state*, align 8
  %3 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %2, align 8
  %4 = call i32 (...) @should_validate_cache_entries()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load %struct.index_state*, %struct.index_state** %2, align 8
  %8 = icmp ne %struct.index_state* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load %struct.index_state*, %struct.index_state** %2, align 8
  %11 = getelementptr inbounds %struct.index_state, %struct.index_state* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %6, %1
  br label %102

15:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %88, %15
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.index_state*, %struct.index_state** %2, align 8
  %19 = getelementptr inbounds %struct.index_state, %struct.index_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %91

22:                                               ; preds = %16
  %23 = load %struct.index_state*, %struct.index_state** %2, align 8
  %24 = icmp ne %struct.index_state* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = call i32 @BUG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %87

27:                                               ; preds = %22
  %28 = load %struct.index_state*, %struct.index_state** %2, align 8
  %29 = getelementptr inbounds %struct.index_state, %struct.index_state* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load %struct.index_state*, %struct.index_state** %2, align 8
  %34 = getelementptr inbounds %struct.index_state, %struct.index_state* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.index_state*, %struct.index_state** %2, align 8
  %37 = getelementptr inbounds %struct.index_state, %struct.index_state* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mem_pool_contains(i32 %35, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %86, label %45

45:                                               ; preds = %32, %27
  %46 = load %struct.index_state*, %struct.index_state** %2, align 8
  %47 = getelementptr inbounds %struct.index_state, %struct.index_state* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = icmp ne %struct.TYPE_2__* %48, null
  br i1 %49, label %50, label %83

50:                                               ; preds = %45
  %51 = load %struct.index_state*, %struct.index_state** %2, align 8
  %52 = getelementptr inbounds %struct.index_state, %struct.index_state* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.index_state*, %struct.index_state** %54, align 8
  %56 = icmp ne %struct.index_state* %55, null
  br i1 %56, label %57, label %83

57:                                               ; preds = %50
  %58 = load %struct.index_state*, %struct.index_state** %2, align 8
  %59 = getelementptr inbounds %struct.index_state, %struct.index_state* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load %struct.index_state*, %struct.index_state** %61, align 8
  %63 = getelementptr inbounds %struct.index_state, %struct.index_state* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %57
  %67 = load %struct.index_state*, %struct.index_state** %2, align 8
  %68 = getelementptr inbounds %struct.index_state, %struct.index_state* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load %struct.index_state*, %struct.index_state** %70, align 8
  %72 = getelementptr inbounds %struct.index_state, %struct.index_state* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.index_state*, %struct.index_state** %2, align 8
  %75 = getelementptr inbounds %struct.index_state, %struct.index_state* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @mem_pool_contains(i32 %73, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %66, %57, %50, %45
  %84 = call i32 @BUG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %66
  br label %86

86:                                               ; preds = %85, %32
  br label %87

87:                                               ; preds = %86, %25
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %16

91:                                               ; preds = %16
  %92 = load %struct.index_state*, %struct.index_state** %2, align 8
  %93 = getelementptr inbounds %struct.index_state, %struct.index_state* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = icmp ne %struct.TYPE_2__* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.index_state*, %struct.index_state** %2, align 8
  %98 = getelementptr inbounds %struct.index_state, %struct.index_state* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load %struct.index_state*, %struct.index_state** %100, align 8
  call void @validate_cache_entries(%struct.index_state* %101)
  br label %102

102:                                              ; preds = %14, %96, %91
  ret void
}

declare dso_local i32 @should_validate_cache_entries(...) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @mem_pool_contains(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
