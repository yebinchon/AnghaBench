; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_filter_refs.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_filter_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_array = type { i32 }
%struct.ref_filter = type { i32, i64 }
%struct.ref_filter_cbdata = type { i32, i32, %struct.ref_filter*, %struct.ref_array* }

@FILTER_REFS_INCLUDE_BROKEN = common dso_local global i32 0, align 4
@FILTER_REFS_KIND_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"filter_refs: invalid type\00", align 1
@FILTER_REFS_BRANCHES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"refs/heads/\00", align 1
@ref_filter_handler = common dso_local global i32 0, align 4
@FILTER_REFS_REMOTES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"refs/remotes/\00", align 1
@FILTER_REFS_TAGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"refs/tags/\00", align 1
@FILTER_REFS_ALL = common dso_local global i32 0, align 4
@FILTER_REFS_DETACHED_HEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @filter_refs(%struct.ref_array* %0, %struct.ref_filter* %1, i32 %2) #0 {
  %4 = alloca %struct.ref_array*, align 8
  %5 = alloca %struct.ref_filter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ref_filter_cbdata, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ref_array* %0, %struct.ref_array** %4, align 8
  store %struct.ref_filter* %1, %struct.ref_filter** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.ref_array*, %struct.ref_array** %4, align 8
  %11 = getelementptr inbounds %struct.ref_filter_cbdata, %struct.ref_filter_cbdata* %7, i32 0, i32 3
  store %struct.ref_array* %10, %struct.ref_array** %11, align 8
  %12 = load %struct.ref_filter*, %struct.ref_filter** %5, align 8
  %13 = getelementptr inbounds %struct.ref_filter_cbdata, %struct.ref_filter_cbdata* %7, i32 0, i32 2
  store %struct.ref_filter* %12, %struct.ref_filter** %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @FILTER_REFS_INCLUDE_BROKEN, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %19

19:                                               ; preds = %18, %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @FILTER_REFS_KIND_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load %struct.ref_filter*, %struct.ref_filter** %5, align 8
  %24 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = getelementptr inbounds %struct.ref_filter_cbdata, %struct.ref_filter_cbdata* %7, i32 0, i32 1
  %26 = call i32 @init_contains_cache(i32* %25)
  %27 = getelementptr inbounds %struct.ref_filter_cbdata, %struct.ref_filter_cbdata* %7, i32 0, i32 0
  %28 = call i32 @init_contains_cache(i32* %27)
  %29 = load %struct.ref_filter*, %struct.ref_filter** %5, align 8
  %30 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %19
  %34 = call i32 @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %94

35:                                               ; preds = %19
  %36 = load %struct.ref_filter*, %struct.ref_filter** %5, align 8
  %37 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @FILTER_REFS_BRANCHES, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @ref_filter_handler, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @for_each_fullref_in(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %42, %struct.ref_filter_cbdata* %7, i32 %43)
  store i32 %44, i32* %8, align 4
  br label %80

45:                                               ; preds = %35
  %46 = load %struct.ref_filter*, %struct.ref_filter** %5, align 8
  %47 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @FILTER_REFS_REMOTES, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* @ref_filter_handler, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @for_each_fullref_in(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %52, %struct.ref_filter_cbdata* %7, i32 %53)
  store i32 %54, i32* %8, align 4
  br label %79

55:                                               ; preds = %45
  %56 = load %struct.ref_filter*, %struct.ref_filter** %5, align 8
  %57 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @FILTER_REFS_TAGS, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32, i32* @ref_filter_handler, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @for_each_fullref_in(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %62, %struct.ref_filter_cbdata* %7, i32 %63)
  store i32 %64, i32* %8, align 4
  br label %78

65:                                               ; preds = %55
  %66 = load %struct.ref_filter*, %struct.ref_filter** %5, align 8
  %67 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @FILTER_REFS_ALL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %65
  %73 = load %struct.ref_filter*, %struct.ref_filter** %5, align 8
  %74 = load i32, i32* @ref_filter_handler, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @for_each_fullref_in_pattern(%struct.ref_filter* %73, i32 %74, %struct.ref_filter_cbdata* %7, i32 %75)
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %72, %65
  br label %78

78:                                               ; preds = %77, %61
  br label %79

79:                                               ; preds = %78, %51
  br label %80

80:                                               ; preds = %79, %41
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %80
  %84 = load %struct.ref_filter*, %struct.ref_filter** %5, align 8
  %85 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @FILTER_REFS_DETACHED_HEAD, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i32, i32* @ref_filter_handler, align 4
  %92 = call i32 @head_ref(i32 %91, %struct.ref_filter_cbdata* %7)
  br label %93

93:                                               ; preds = %90, %83, %80
  br label %94

94:                                               ; preds = %93, %33
  %95 = getelementptr inbounds %struct.ref_filter_cbdata, %struct.ref_filter_cbdata* %7, i32 0, i32 1
  %96 = call i32 @clear_contains_cache(i32* %95)
  %97 = getelementptr inbounds %struct.ref_filter_cbdata, %struct.ref_filter_cbdata* %7, i32 0, i32 0
  %98 = call i32 @clear_contains_cache(i32* %97)
  %99 = load %struct.ref_filter*, %struct.ref_filter** %5, align 8
  %100 = getelementptr inbounds %struct.ref_filter, %struct.ref_filter* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = call i32 @do_merge_filter(%struct.ref_filter_cbdata* %7)
  br label %105

105:                                              ; preds = %103, %94
  %106 = load i32, i32* %8, align 4
  ret i32 %106
}

declare dso_local i32 @init_contains_cache(i32*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @for_each_fullref_in(i8*, i32, %struct.ref_filter_cbdata*, i32) #1

declare dso_local i32 @for_each_fullref_in_pattern(%struct.ref_filter*, i32, %struct.ref_filter_cbdata*, i32) #1

declare dso_local i32 @head_ref(i32, %struct.ref_filter_cbdata*) #1

declare dso_local i32 @clear_contains_cache(i32*) #1

declare dso_local i32 @do_merge_filter(%struct.ref_filter_cbdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
