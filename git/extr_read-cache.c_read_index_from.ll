; ModuleID = '/home/carl/AnghaBench/git/extr_read-cache.c_read_index_from.c'
source_filename = "/home/carl/AnghaBench/git/extr_read-cache.c_read_index_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, i32, %struct.split_index*, i64 }
%struct.split_index = type { %struct.index_state*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"do_read_index\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"read cache %s\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"%s/sharedindex.%s\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"shared/do_read_index\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"broken index, expect %s in %s, got %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_index_from(%struct.index_state* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.split_index*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.index_state*, %struct.index_state** %5, align 8
  %13 = getelementptr inbounds %struct.index_state, %struct.index_state* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.index_state*, %struct.index_state** %5, align 8
  %18 = getelementptr inbounds %struct.index_state, %struct.index_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %4, align 4
  br label %110

20:                                               ; preds = %3
  %21 = load i32, i32* @the_repository, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @trace2_region_enter_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  %24 = call i32 (...) @trace_performance_enter()
  %25 = load %struct.index_state*, %struct.index_state** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @do_read_index(%struct.index_state* %25, i8* %26, i32 0)
  store i32 %27, i32* %9, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @trace_performance_leave(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* @the_repository, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @trace2_region_leave_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = load %struct.index_state*, %struct.index_state** %5, align 8
  %34 = getelementptr inbounds %struct.index_state, %struct.index_state* %33, i32 0, i32 2
  %35 = load %struct.split_index*, %struct.split_index** %34, align 8
  store %struct.split_index* %35, %struct.split_index** %8, align 8
  %36 = load %struct.split_index*, %struct.split_index** %8, align 8
  %37 = icmp ne %struct.split_index* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %20
  %39 = load %struct.split_index*, %struct.split_index** %8, align 8
  %40 = getelementptr inbounds %struct.split_index, %struct.split_index* %39, i32 0, i32 1
  %41 = call i64 @is_null_oid(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38, %20
  %44 = load %struct.index_state*, %struct.index_state** %5, align 8
  %45 = call i32 @post_read_index_from(%struct.index_state* %44)
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %110

47:                                               ; preds = %38
  %48 = call i32 (...) @trace_performance_enter()
  %49 = load %struct.split_index*, %struct.split_index** %8, align 8
  %50 = getelementptr inbounds %struct.split_index, %struct.split_index* %49, i32 0, i32 0
  %51 = load %struct.index_state*, %struct.index_state** %50, align 8
  %52 = icmp ne %struct.index_state* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.split_index*, %struct.split_index** %8, align 8
  %55 = getelementptr inbounds %struct.split_index, %struct.split_index* %54, i32 0, i32 0
  %56 = load %struct.index_state*, %struct.index_state** %55, align 8
  %57 = call i32 @discard_index(%struct.index_state* %56)
  br label %62

58:                                               ; preds = %47
  %59 = call %struct.index_state* @xcalloc(i32 1, i32 24)
  %60 = load %struct.split_index*, %struct.split_index** %8, align 8
  %61 = getelementptr inbounds %struct.split_index, %struct.split_index* %60, i32 0, i32 0
  store %struct.index_state* %59, %struct.index_state** %61, align 8
  br label %62

62:                                               ; preds = %58, %53
  %63 = load %struct.split_index*, %struct.split_index** %8, align 8
  %64 = getelementptr inbounds %struct.split_index, %struct.split_index* %63, i32 0, i32 1
  %65 = call i8* @oid_to_hex(i32* %64)
  store i8* %65, i8** %10, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = call i8* @xstrfmt(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %66, i8* %67)
  store i8* %68, i8** %11, align 8
  %69 = load i32, i32* @the_repository, align 4
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @trace2_region_enter_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %70)
  %72 = load %struct.split_index*, %struct.split_index** %8, align 8
  %73 = getelementptr inbounds %struct.split_index, %struct.split_index* %72, i32 0, i32 0
  %74 = load %struct.index_state*, %struct.index_state** %73, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 @do_read_index(%struct.index_state* %74, i8* %75, i32 1)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* @the_repository, align 4
  %78 = load i8*, i8** %11, align 8
  %79 = call i32 @trace2_region_leave_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %78)
  %80 = load %struct.split_index*, %struct.split_index** %8, align 8
  %81 = getelementptr inbounds %struct.split_index, %struct.split_index* %80, i32 0, i32 1
  %82 = load %struct.split_index*, %struct.split_index** %8, align 8
  %83 = getelementptr inbounds %struct.split_index, %struct.split_index* %82, i32 0, i32 0
  %84 = load %struct.index_state*, %struct.index_state** %83, align 8
  %85 = getelementptr inbounds %struct.index_state, %struct.index_state* %84, i32 0, i32 1
  %86 = call i32 @oideq(i32* %81, i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %62
  %89 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %90 = load i8*, i8** %10, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = load %struct.split_index*, %struct.split_index** %8, align 8
  %93 = getelementptr inbounds %struct.split_index, %struct.split_index* %92, i32 0, i32 0
  %94 = load %struct.index_state*, %struct.index_state** %93, align 8
  %95 = getelementptr inbounds %struct.index_state, %struct.index_state* %94, i32 0, i32 1
  %96 = call i8* @oid_to_hex(i32* %95)
  %97 = call i32 @die(i32 %89, i8* %90, i8* %91, i8* %96)
  br label %98

98:                                               ; preds = %88, %62
  %99 = load i8*, i8** %11, align 8
  %100 = call i32 @freshen_shared_index(i8* %99, i32 0)
  %101 = load %struct.index_state*, %struct.index_state** %5, align 8
  %102 = call i32 @merge_base_index(%struct.index_state* %101)
  %103 = load %struct.index_state*, %struct.index_state** %5, align 8
  %104 = call i32 @post_read_index_from(%struct.index_state* %103)
  %105 = load i8*, i8** %11, align 8
  %106 = call i32 @trace_performance_leave(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %105)
  %107 = load i8*, i8** %11, align 8
  %108 = call i32 @free(i8* %107)
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %98, %43, %16
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @trace2_region_enter_printf(i8*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @trace_performance_enter(...) #1

declare dso_local i32 @do_read_index(%struct.index_state*, i8*, i32) #1

declare dso_local i32 @trace_performance_leave(i8*, i8*) #1

declare dso_local i32 @trace2_region_leave_printf(i8*, i8*, i32, i8*, i8*) #1

declare dso_local i64 @is_null_oid(i32*) #1

declare dso_local i32 @post_read_index_from(%struct.index_state*) #1

declare dso_local i32 @discard_index(%struct.index_state*) #1

declare dso_local %struct.index_state* @xcalloc(i32, i32) #1

declare dso_local i8* @oid_to_hex(i32*) #1

declare dso_local i8* @xstrfmt(i8*, i8*, i8*) #1

declare dso_local i32 @oideq(i32*, i32*) #1

declare dso_local i32 @die(i32, i8*, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @freshen_shared_index(i8*, i32) #1

declare dso_local i32 @merge_base_index(%struct.index_state*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
