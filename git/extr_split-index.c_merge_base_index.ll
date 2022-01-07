; ModuleID = '/home/carl/AnghaBench/git/extr_split-index.c_merge_base_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_split-index.c_merge_base_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, i32**, i64, %struct.split_index* }
%struct.split_index = type { i32, i32, i32*, i32*, i32**, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@replace_entry = common dso_local global i32 0, align 4
@mark_entry_for_delete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"corrupt link extension, entry %d should have non-zero length name\00", align 1
@ADD_CACHE_OK_TO_ADD = common dso_local global i32 0, align 4
@ADD_CACHE_KEEP_CACHE_TREE = common dso_local global i32 0, align 4
@ADD_CACHE_SKIP_DFCHECK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @merge_base_index(%struct.index_state* %0) #0 {
  %2 = alloca %struct.index_state*, align 8
  %3 = alloca %struct.split_index*, align 8
  %4 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %2, align 8
  %5 = load %struct.index_state*, %struct.index_state** %2, align 8
  %6 = getelementptr inbounds %struct.index_state, %struct.index_state* %5, i32 0, i32 3
  %7 = load %struct.split_index*, %struct.split_index** %6, align 8
  store %struct.split_index* %7, %struct.split_index** %3, align 8
  %8 = load %struct.split_index*, %struct.split_index** %3, align 8
  %9 = getelementptr inbounds %struct.split_index, %struct.split_index* %8, i32 0, i32 6
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = call i32 @mark_base_index_entries(%struct.TYPE_2__* %10)
  %12 = load %struct.index_state*, %struct.index_state** %2, align 8
  %13 = getelementptr inbounds %struct.index_state, %struct.index_state* %12, i32 0, i32 1
  %14 = load i32**, i32*** %13, align 8
  %15 = load %struct.split_index*, %struct.split_index** %3, align 8
  %16 = getelementptr inbounds %struct.split_index, %struct.split_index* %15, i32 0, i32 4
  store i32** %14, i32*** %16, align 8
  %17 = load %struct.index_state*, %struct.index_state** %2, align 8
  %18 = getelementptr inbounds %struct.index_state, %struct.index_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.split_index*, %struct.split_index** %3, align 8
  %21 = getelementptr inbounds %struct.split_index, %struct.split_index* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.split_index*, %struct.split_index** %3, align 8
  %23 = getelementptr inbounds %struct.split_index, %struct.split_index* %22, i32 0, i32 6
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.index_state*, %struct.index_state** %2, align 8
  %28 = getelementptr inbounds %struct.index_state, %struct.index_state* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.index_state*, %struct.index_state** %2, align 8
  %30 = getelementptr inbounds %struct.index_state, %struct.index_state* %29, i32 0, i32 1
  store i32** null, i32*** %30, align 8
  %31 = load %struct.index_state*, %struct.index_state** %2, align 8
  %32 = getelementptr inbounds %struct.index_state, %struct.index_state* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.index_state*, %struct.index_state** %2, align 8
  %34 = getelementptr inbounds %struct.index_state, %struct.index_state* %33, i32 0, i32 1
  %35 = load i32**, i32*** %34, align 8
  %36 = load %struct.index_state*, %struct.index_state** %2, align 8
  %37 = getelementptr inbounds %struct.index_state, %struct.index_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.index_state*, %struct.index_state** %2, align 8
  %40 = getelementptr inbounds %struct.index_state, %struct.index_state* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @ALLOC_GROW(i32** %35, i32 %38, i64 %41)
  %43 = load %struct.index_state*, %struct.index_state** %2, align 8
  %44 = getelementptr inbounds %struct.index_state, %struct.index_state* %43, i32 0, i32 1
  %45 = load i32**, i32*** %44, align 8
  %46 = load %struct.split_index*, %struct.split_index** %3, align 8
  %47 = getelementptr inbounds %struct.split_index, %struct.split_index* %46, i32 0, i32 6
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.index_state*, %struct.index_state** %2, align 8
  %52 = getelementptr inbounds %struct.index_state, %struct.index_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @COPY_ARRAY(i32** %45, i32 %50, i32 %53)
  %55 = load %struct.split_index*, %struct.split_index** %3, align 8
  %56 = getelementptr inbounds %struct.split_index, %struct.split_index* %55, i32 0, i32 5
  store i64 0, i64* %56, align 8
  %57 = load %struct.split_index*, %struct.split_index** %3, align 8
  %58 = getelementptr inbounds %struct.split_index, %struct.split_index* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = load %struct.split_index*, %struct.split_index** %3, align 8
  %60 = getelementptr inbounds %struct.split_index, %struct.split_index* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* @replace_entry, align 4
  %63 = load %struct.index_state*, %struct.index_state** %2, align 8
  %64 = call i32 @ewah_each_bit(i32* %61, i32 %62, %struct.index_state* %63)
  %65 = load %struct.split_index*, %struct.split_index** %3, align 8
  %66 = getelementptr inbounds %struct.split_index, %struct.split_index* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* @mark_entry_for_delete, align 4
  %69 = load %struct.index_state*, %struct.index_state** %2, align 8
  %70 = call i32 @ewah_each_bit(i32* %67, i32 %68, %struct.index_state* %69)
  %71 = load %struct.split_index*, %struct.split_index** %3, align 8
  %72 = getelementptr inbounds %struct.split_index, %struct.split_index* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %1
  %76 = load %struct.index_state*, %struct.index_state** %2, align 8
  %77 = call i32 @remove_marked_cache_entries(%struct.index_state* %76, i32 0)
  br label %78

78:                                               ; preds = %75, %1
  %79 = load %struct.split_index*, %struct.split_index** %3, align 8
  %80 = getelementptr inbounds %struct.split_index, %struct.split_index* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %122, %78
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.split_index*, %struct.split_index** %3, align 8
  %85 = getelementptr inbounds %struct.split_index, %struct.split_index* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ult i32 %83, %86
  br i1 %87, label %88, label %125

88:                                               ; preds = %82
  %89 = load %struct.split_index*, %struct.split_index** %3, align 8
  %90 = getelementptr inbounds %struct.split_index, %struct.split_index* %89, i32 0, i32 4
  %91 = load i32**, i32*** %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @ce_namelen(i32* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %88
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @die(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %98, %88
  %102 = load %struct.index_state*, %struct.index_state** %2, align 8
  %103 = load %struct.split_index*, %struct.split_index** %3, align 8
  %104 = getelementptr inbounds %struct.split_index, %struct.split_index* %103, i32 0, i32 4
  %105 = load i32**, i32*** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %105, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* @ADD_CACHE_OK_TO_ADD, align 4
  %111 = load i32, i32* @ADD_CACHE_KEEP_CACHE_TREE, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @ADD_CACHE_SKIP_DFCHECK, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @add_index_entry(%struct.index_state* %102, i32* %109, i32 %114)
  %116 = load %struct.split_index*, %struct.split_index** %3, align 8
  %117 = getelementptr inbounds %struct.split_index, %struct.split_index* %116, i32 0, i32 4
  %118 = load i32**, i32*** %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  store i32* null, i32** %121, align 8
  br label %122

122:                                              ; preds = %101
  %123 = load i32, i32* %4, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %4, align 4
  br label %82

125:                                              ; preds = %82
  %126 = load %struct.split_index*, %struct.split_index** %3, align 8
  %127 = getelementptr inbounds %struct.split_index, %struct.split_index* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @ewah_free(i32* %128)
  %130 = load %struct.split_index*, %struct.split_index** %3, align 8
  %131 = getelementptr inbounds %struct.split_index, %struct.split_index* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @ewah_free(i32* %132)
  %134 = load %struct.split_index*, %struct.split_index** %3, align 8
  %135 = getelementptr inbounds %struct.split_index, %struct.split_index* %134, i32 0, i32 4
  %136 = load i32**, i32*** %135, align 8
  %137 = call i32 @FREE_AND_NULL(i32** %136)
  %138 = load %struct.split_index*, %struct.split_index** %3, align 8
  %139 = getelementptr inbounds %struct.split_index, %struct.split_index* %138, i32 0, i32 3
  store i32* null, i32** %139, align 8
  %140 = load %struct.split_index*, %struct.split_index** %3, align 8
  %141 = getelementptr inbounds %struct.split_index, %struct.split_index* %140, i32 0, i32 2
  store i32* null, i32** %141, align 8
  %142 = load %struct.split_index*, %struct.split_index** %3, align 8
  %143 = getelementptr inbounds %struct.split_index, %struct.split_index* %142, i32 0, i32 0
  store i32 0, i32* %143, align 8
  ret void
}

declare dso_local i32 @mark_base_index_entries(%struct.TYPE_2__*) #1

declare dso_local i32 @ALLOC_GROW(i32**, i32, i64) #1

declare dso_local i32 @COPY_ARRAY(i32**, i32, i32) #1

declare dso_local i32 @ewah_each_bit(i32*, i32, %struct.index_state*) #1

declare dso_local i32 @remove_marked_cache_entries(%struct.index_state*, i32) #1

declare dso_local i32 @ce_namelen(i32*) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @add_index_entry(%struct.index_state*, i32*, i32) #1

declare dso_local i32 @ewah_free(i32*) #1

declare dso_local i32 @FREE_AND_NULL(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
