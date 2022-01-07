; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_fetch_populated_submodules.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_fetch_populated_submodules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.submodule_parallel_fetch = type { i32, i32, i32, i8*, i32, i32, i32, %struct.repository* }
%struct.repository = type { i32 }
%struct.argv_array = type { i32, i8** }

@SPF_INIT = common dso_local global %struct.submodule_parallel_fetch zeroinitializer, align 8
@.str = private unnamed_addr constant [19 x i8] c"index file corrupt\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fetch\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"--recurse-submodules-default\00", align 1
@get_next_submodule = common dso_local global i32 0, align 4
@fetch_start_failure = common dso_local global i32 0, align 4
@fetch_finish = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"submodule\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"parallel/fetch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fetch_populated_submodules(%struct.repository* %0, %struct.argv_array* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.repository*, align 8
  %9 = alloca %struct.argv_array*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.submodule_parallel_fetch, align 8
  store %struct.repository* %0, %struct.repository** %8, align 8
  store %struct.argv_array* %1, %struct.argv_array** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = bitcast %struct.submodule_parallel_fetch* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.submodule_parallel_fetch* @SPF_INIT to i8*), i64 48, i1 false)
  %18 = load %struct.repository*, %struct.repository** %8, align 8
  %19 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %16, i32 0, i32 7
  store %struct.repository* %18, %struct.repository** %19, align 8
  %20 = load i32, i32* %11, align 4
  %21 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %16, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %12, align 4
  %23 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %16, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %13, align 4
  %25 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %16, i32 0, i32 2
  store i32 %24, i32* %25, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %16, i32 0, i32 3
  store i8* %26, i8** %27, align 8
  %28 = load %struct.repository*, %struct.repository** %8, align 8
  %29 = getelementptr inbounds %struct.repository, %struct.repository* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %7
  br label %76

33:                                               ; preds = %7
  %34 = load %struct.repository*, %struct.repository** %8, align 8
  %35 = call i64 @repo_read_index(%struct.repository* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @die(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %33
  %40 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %16, i32 0, i32 6
  %41 = call i32 @argv_array_push(i32* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %42

42:                                               ; preds = %58, %39
  %43 = load i32, i32* %15, align 4
  %44 = load %struct.argv_array*, %struct.argv_array** %9, align 8
  %45 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %16, i32 0, i32 6
  %50 = load %struct.argv_array*, %struct.argv_array** %9, align 8
  %51 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %50, i32 0, i32 1
  %52 = load i8**, i8*** %51, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @argv_array_push(i32* %49, i8* %56)
  br label %58

58:                                               ; preds = %48
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %15, align 4
  br label %42

61:                                               ; preds = %42
  %62 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %16, i32 0, i32 6
  %63 = call i32 @argv_array_push(i32* %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.repository*, %struct.repository** %8, align 8
  %65 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %16, i32 0, i32 5
  %66 = call i32 @calculate_changed_submodule_paths(%struct.repository* %64, i32* %65)
  %67 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %16, i32 0, i32 5
  %68 = call i32 @string_list_sort(i32* %67)
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* @get_next_submodule, align 4
  %71 = load i32, i32* @fetch_start_failure, align 4
  %72 = load i32, i32* @fetch_finish, align 4
  %73 = call i32 @run_processes_parallel_tr2(i32 %69, i32 %70, i32 %71, i32 %72, %struct.submodule_parallel_fetch* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %74 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %16, i32 0, i32 6
  %75 = call i32 @argv_array_clear(i32* %74)
  br label %76

76:                                               ; preds = %61, %32
  %77 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %16, i32 0, i32 5
  %78 = call i32 @free_submodules_oids(i32* %77)
  %79 = getelementptr inbounds %struct.submodule_parallel_fetch, %struct.submodule_parallel_fetch* %16, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  ret i32 %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @repo_read_index(%struct.repository*) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i32 @argv_array_push(i32*, i8*) #2

declare dso_local i32 @calculate_changed_submodule_paths(%struct.repository*, i32*) #2

declare dso_local i32 @string_list_sort(i32*) #2

declare dso_local i32 @run_processes_parallel_tr2(i32, i32, i32, i32, %struct.submodule_parallel_fetch*, i8*, i8*) #2

declare dso_local i32 @argv_array_clear(i32*) #2

declare dso_local i32 @free_submodules_oids(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
