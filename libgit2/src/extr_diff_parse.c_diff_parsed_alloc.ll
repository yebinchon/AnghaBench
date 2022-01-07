; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_parse.c_diff_parsed_alloc.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_parse.c_diff_parsed_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@GIT_DIFF_TYPE_PARSED = common dso_local global i32 0, align 4
@git__strcmp = common dso_local global i32 0, align 4
@git__strncmp = common dso_local global i32 0, align 4
@git__prefixcmp = common dso_local global i32 0, align 4
@git_diff__entry_cmp = common dso_local global i32 0, align 4
@git_patch_parsed_from_diff = common dso_local global i32 0, align 4
@diff_parsed_free = common dso_local global i32 0, align 4
@GIT_DIFF_OPTIONS_VERSION = common dso_local global i32 0, align 4
@GIT_DIFF_IGNORE_CASE = common dso_local global i32 0, align 4
@git_diff_delta__cmp = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* ()* @diff_parsed_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @diff_parsed_alloc() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = call %struct.TYPE_8__* @git__calloc(i32 1, i32 44)
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %2, align 8
  %4 = icmp eq %struct.TYPE_8__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %1, align 8
  br label %82

6:                                                ; preds = %0
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = call i32 @GIT_REFCOUNT_INC(%struct.TYPE_10__* %8)
  %10 = load i32, i32* @GIT_DIFF_TYPE_PARSED, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 9
  store i32 %10, i32* %13, align 4
  %14 = load i32, i32* @git__strcmp, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 8
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* @git__strncmp, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 7
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @git__prefixcmp, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 6
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @git_diff__entry_cmp, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 5
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @git_patch_parsed_from_diff, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 4
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @diff_parsed_free, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load i32, i32* @GIT_DIFF_OPTIONS_VERSION, align 4
  %42 = call i64 @git_diff_options_init(%struct.TYPE_9__* %40, i32 %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %6
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = call i32 @git__free(%struct.TYPE_8__* %45)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %1, align 8
  br label %82

47:                                               ; preds = %6
  %48 = load i32, i32* @GIT_DIFF_IGNORE_CASE, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %49
  store i32 %55, i32* %53, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = call i32 @git_pool_init(i32* %58, i32 1)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = call i64 @git_vector_init(i32* %61, i32 0, i32* null)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %47
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32*, i32** @git_diff_delta__cmp, align 8
  %69 = call i64 @git_vector_init(i32* %67, i32 0, i32* %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64, %47
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = call i32 @git_diff_free(%struct.TYPE_10__* %73)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %1, align 8
  br label %82

75:                                               ; preds = %64
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32*, i32** @git_diff_delta__cmp, align 8
  %80 = call i32 @git_vector_set_cmp(i32* %78, i32* %79)
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %1, align 8
  br label %82

82:                                               ; preds = %75, %71, %44, %5
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  ret %struct.TYPE_8__* %83
}

declare dso_local %struct.TYPE_8__* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_REFCOUNT_INC(%struct.TYPE_10__*) #1

declare dso_local i64 @git_diff_options_init(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @git__free(%struct.TYPE_8__*) #1

declare dso_local i32 @git_pool_init(i32*, i32) #1

declare dso_local i64 @git_vector_init(i32*, i32, i32*) #1

declare dso_local i32 @git_diff_free(%struct.TYPE_10__*) #1

declare dso_local i32 @git_vector_set_cmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
