; ModuleID = '/home/carl/AnghaBench/git/extr_split-index.c_move_cache_to_base_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_split-index.c_move_cache_to_base_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, i32, i32*, i32, i32, %struct.split_index* }
%struct.split_index = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__**, i32*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@CE_UPDATE_IN_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @move_cache_to_base_index(%struct.index_state* %0) #0 {
  %2 = alloca %struct.index_state*, align 8
  %3 = alloca %struct.split_index*, align 8
  %4 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %2, align 8
  %5 = load %struct.index_state*, %struct.index_state** %2, align 8
  %6 = getelementptr inbounds %struct.index_state, %struct.index_state* %5, i32 0, i32 5
  %7 = load %struct.split_index*, %struct.split_index** %6, align 8
  store %struct.split_index* %7, %struct.split_index** %3, align 8
  %8 = load %struct.split_index*, %struct.split_index** %3, align 8
  %9 = getelementptr inbounds %struct.split_index, %struct.split_index* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %40

12:                                               ; preds = %1
  %13 = load %struct.split_index*, %struct.split_index** %3, align 8
  %14 = getelementptr inbounds %struct.split_index, %struct.split_index* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %40

19:                                               ; preds = %12
  %20 = load %struct.index_state*, %struct.index_state** %2, align 8
  %21 = getelementptr inbounds %struct.index_state, %struct.index_state* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load %struct.index_state*, %struct.index_state** %2, align 8
  %26 = getelementptr inbounds %struct.index_state, %struct.index_state* %25, i32 0, i32 2
  %27 = call i32 @mem_pool_init(i32** %26, i32 0)
  br label %28

28:                                               ; preds = %24, %19
  %29 = load %struct.index_state*, %struct.index_state** %2, align 8
  %30 = getelementptr inbounds %struct.index_state, %struct.index_state* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.index_state*, %struct.index_state** %2, align 8
  %33 = getelementptr inbounds %struct.index_state, %struct.index_state* %32, i32 0, i32 5
  %34 = load %struct.split_index*, %struct.split_index** %33, align 8
  %35 = getelementptr inbounds %struct.split_index, %struct.split_index* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @mem_pool_combine(i32* %31, i32* %38)
  br label %40

40:                                               ; preds = %28, %12, %1
  %41 = call %struct.TYPE_5__* @xcalloc(i32 1, i32 40)
  %42 = load %struct.split_index*, %struct.split_index** %3, align 8
  %43 = getelementptr inbounds %struct.split_index, %struct.split_index* %42, i32 0, i32 0
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %43, align 8
  %44 = load %struct.index_state*, %struct.index_state** %2, align 8
  %45 = getelementptr inbounds %struct.index_state, %struct.index_state* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.split_index*, %struct.split_index** %3, align 8
  %48 = getelementptr inbounds %struct.split_index, %struct.split_index* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 5
  store i32 %46, i32* %50, align 8
  %51 = load %struct.index_state*, %struct.index_state** %2, align 8
  %52 = getelementptr inbounds %struct.index_state, %struct.index_state* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.split_index*, %struct.split_index** %3, align 8
  %55 = getelementptr inbounds %struct.split_index, %struct.split_index* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 4
  store i32 %53, i32* %57, align 4
  %58 = load %struct.split_index*, %struct.split_index** %3, align 8
  %59 = getelementptr inbounds %struct.split_index, %struct.split_index* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %61, align 8
  %63 = load %struct.index_state*, %struct.index_state** %2, align 8
  %64 = getelementptr inbounds %struct.index_state, %struct.index_state* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.split_index*, %struct.split_index** %3, align 8
  %67 = getelementptr inbounds %struct.split_index, %struct.split_index* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ALLOC_GROW(%struct.TYPE_6__** %62, i32 %65, i32 %70)
  %72 = load %struct.index_state*, %struct.index_state** %2, align 8
  %73 = getelementptr inbounds %struct.index_state, %struct.index_state* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.split_index*, %struct.split_index** %3, align 8
  %76 = getelementptr inbounds %struct.split_index, %struct.split_index* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 8
  %79 = load %struct.index_state*, %struct.index_state** %2, align 8
  %80 = getelementptr inbounds %struct.index_state, %struct.index_state* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.split_index*, %struct.split_index** %3, align 8
  %83 = getelementptr inbounds %struct.split_index, %struct.split_index* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  store i32* %81, i32** %85, align 8
  %86 = load %struct.index_state*, %struct.index_state** %2, align 8
  %87 = getelementptr inbounds %struct.index_state, %struct.index_state* %86, i32 0, i32 2
  store i32* null, i32** %87, align 8
  %88 = load %struct.split_index*, %struct.split_index** %3, align 8
  %89 = getelementptr inbounds %struct.split_index, %struct.split_index* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %91, align 8
  %93 = load %struct.index_state*, %struct.index_state** %2, align 8
  %94 = getelementptr inbounds %struct.index_state, %struct.index_state* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.index_state*, %struct.index_state** %2, align 8
  %97 = getelementptr inbounds %struct.index_state, %struct.index_state* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @COPY_ARRAY(%struct.TYPE_6__** %92, i32 %95, i32 %98)
  %100 = load %struct.split_index*, %struct.split_index** %3, align 8
  %101 = getelementptr inbounds %struct.split_index, %struct.split_index* %100, i32 0, i32 0
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = call i32 @mark_base_index_entries(%struct.TYPE_5__* %102)
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %127, %40
  %105 = load i32, i32* %4, align 4
  %106 = load %struct.split_index*, %struct.split_index** %3, align 8
  %107 = getelementptr inbounds %struct.split_index, %struct.split_index* %106, i32 0, i32 0
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %105, %110
  br i1 %111, label %112, label %130

112:                                              ; preds = %104
  %113 = load i32, i32* @CE_UPDATE_IN_BASE, align 4
  %114 = xor i32 %113, -1
  %115 = load %struct.split_index*, %struct.split_index** %3, align 8
  %116 = getelementptr inbounds %struct.split_index, %struct.split_index* %115, i32 0, i32 0
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %118, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %119, i64 %121
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, %114
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %112
  %128 = load i32, i32* %4, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %4, align 4
  br label %104

130:                                              ; preds = %104
  ret void
}

declare dso_local i32 @mem_pool_init(i32**, i32) #1

declare dso_local i32 @mem_pool_combine(i32*, i32*) #1

declare dso_local %struct.TYPE_5__* @xcalloc(i32, i32) #1

declare dso_local i32 @ALLOC_GROW(%struct.TYPE_6__**, i32, i32) #1

declare dso_local i32 @COPY_ARRAY(%struct.TYPE_6__**, i32, i32) #1

declare dso_local i32 @mark_base_index_entries(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
