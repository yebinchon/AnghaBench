; ModuleID = '/home/carl/AnghaBench/git/extr_tree.c_read_tree.c'
source_filename = "/home/carl/AnghaBench/git/extr_tree.c_read_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.tree = type { i32 }
%struct.pathspec = type { i32 }
%struct.index_state = type { i32, %struct.cache_entry**, i32 }
%struct.cache_entry = type { i32 }

@read_one_entry = common dso_local global i64 0, align 8
@read_one_entry_quick = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@cmp_cache_name_compare = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_tree(%struct.repository* %0, %struct.tree* %1, i32 %2, %struct.pathspec* %3, %struct.index_state* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.repository*, align 8
  %8 = alloca %struct.tree*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pathspec*, align 8
  %11 = alloca %struct.index_state*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.cache_entry*, align 8
  store %struct.repository* %0, %struct.repository** %7, align 8
  store %struct.tree* %1, %struct.tree** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.pathspec* %3, %struct.pathspec** %10, align 8
  store %struct.index_state* %4, %struct.index_state** %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %42, %5
  %17 = load i64, i64* %12, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %13, align 4
  %21 = load %struct.index_state*, %struct.index_state** %11, align 8
  %22 = getelementptr inbounds %struct.index_state, %struct.index_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br label %25

25:                                               ; preds = %19, %16
  %26 = phi i1 [ false, %16 ], [ %24, %19 ]
  br i1 %26, label %27, label %45

27:                                               ; preds = %25
  %28 = load %struct.index_state*, %struct.index_state** %11, align 8
  %29 = getelementptr inbounds %struct.index_state, %struct.index_state* %28, i32 0, i32 1
  %30 = load %struct.cache_entry**, %struct.cache_entry*** %29, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %30, i64 %32
  %34 = load %struct.cache_entry*, %struct.cache_entry** %33, align 8
  store %struct.cache_entry* %34, %struct.cache_entry** %15, align 8
  %35 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %36 = call i32 @ce_stage(%struct.cache_entry* %35)
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i64, i64* @read_one_entry, align 8
  store i64 %40, i64* %12, align 8
  br label %41

41:                                               ; preds = %39, %27
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %13, align 4
  br label %16

45:                                               ; preds = %25
  %46 = load i64, i64* %12, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = load i64, i64* @read_one_entry_quick, align 8
  store i64 %49, i64* %12, align 8
  br label %50

50:                                               ; preds = %48, %45
  %51 = load %struct.repository*, %struct.repository** %7, align 8
  %52 = load %struct.tree*, %struct.tree** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.pathspec*, %struct.pathspec** %10, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load %struct.index_state*, %struct.index_state** %11, align 8
  %57 = call i32 @read_tree_recursive(%struct.repository* %51, %struct.tree* %52, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32 %53, %struct.pathspec* %54, i64 %55, %struct.index_state* %56)
  store i32 %57, i32* %14, align 4
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* @read_one_entry, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %64, label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61, %50
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %6, align 4
  br label %78

66:                                               ; preds = %61
  %67 = load %struct.index_state*, %struct.index_state** %11, align 8
  %68 = getelementptr inbounds %struct.index_state, %struct.index_state* %67, i32 0, i32 2
  %69 = call i32 @cache_tree_free(i32* %68)
  %70 = load %struct.index_state*, %struct.index_state** %11, align 8
  %71 = getelementptr inbounds %struct.index_state, %struct.index_state* %70, i32 0, i32 1
  %72 = load %struct.cache_entry**, %struct.cache_entry*** %71, align 8
  %73 = load %struct.index_state*, %struct.index_state** %11, align 8
  %74 = getelementptr inbounds %struct.index_state, %struct.index_state* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @cmp_cache_name_compare, align 4
  %77 = call i32 @QSORT(%struct.cache_entry** %72, i32 %75, i32 %76)
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %66, %64
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32 @ce_stage(%struct.cache_entry*) #1

declare dso_local i32 @read_tree_recursive(%struct.repository*, %struct.tree*, i8*, i32, i32, %struct.pathspec*, i64, %struct.index_state*) #1

declare dso_local i32 @cache_tree_free(i32*) #1

declare dso_local i32 @QSORT(%struct.cache_entry**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
