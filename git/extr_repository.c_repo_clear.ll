; ModuleID = '/home/carl/AnghaBench/git/extr_repository.c_repo_clear.c'
source_filename = "/home/carl/AnghaBench/git/extr_repository.c_repo_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@the_index = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @repo_clear(%struct.repository* %0) #0 {
  %2 = alloca %struct.repository*, align 8
  store %struct.repository* %0, %struct.repository** %2, align 8
  %3 = load %struct.repository*, %struct.repository** %2, align 8
  %4 = getelementptr inbounds %struct.repository, %struct.repository* %3, i32 0, i32 10
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @FREE_AND_NULL(i32* %5)
  %7 = load %struct.repository*, %struct.repository** %2, align 8
  %8 = getelementptr inbounds %struct.repository, %struct.repository* %7, i32 0, i32 9
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @FREE_AND_NULL(i32* %9)
  %11 = load %struct.repository*, %struct.repository** %2, align 8
  %12 = getelementptr inbounds %struct.repository, %struct.repository* %11, i32 0, i32 8
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @FREE_AND_NULL(i32* %13)
  %15 = load %struct.repository*, %struct.repository** %2, align 8
  %16 = getelementptr inbounds %struct.repository, %struct.repository* %15, i32 0, i32 7
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @FREE_AND_NULL(i32* %17)
  %19 = load %struct.repository*, %struct.repository** %2, align 8
  %20 = getelementptr inbounds %struct.repository, %struct.repository* %19, i32 0, i32 6
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @FREE_AND_NULL(i32* %21)
  %23 = load %struct.repository*, %struct.repository** %2, align 8
  %24 = getelementptr inbounds %struct.repository, %struct.repository* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @FREE_AND_NULL(i32* %25)
  %27 = load %struct.repository*, %struct.repository** %2, align 8
  %28 = getelementptr inbounds %struct.repository, %struct.repository* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @raw_object_store_clear(i32* %29)
  %31 = load %struct.repository*, %struct.repository** %2, align 8
  %32 = getelementptr inbounds %struct.repository, %struct.repository* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @FREE_AND_NULL(i32* %33)
  %35 = load %struct.repository*, %struct.repository** %2, align 8
  %36 = getelementptr inbounds %struct.repository, %struct.repository* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @parsed_object_pool_clear(i32* %37)
  %39 = load %struct.repository*, %struct.repository** %2, align 8
  %40 = getelementptr inbounds %struct.repository, %struct.repository* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @FREE_AND_NULL(i32* %41)
  %43 = load %struct.repository*, %struct.repository** %2, align 8
  %44 = getelementptr inbounds %struct.repository, %struct.repository* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %1
  %48 = load %struct.repository*, %struct.repository** %2, align 8
  %49 = getelementptr inbounds %struct.repository, %struct.repository* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @git_configset_clear(i32* %50)
  %52 = load %struct.repository*, %struct.repository** %2, align 8
  %53 = getelementptr inbounds %struct.repository, %struct.repository* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @FREE_AND_NULL(i32* %54)
  br label %56

56:                                               ; preds = %47, %1
  %57 = load %struct.repository*, %struct.repository** %2, align 8
  %58 = getelementptr inbounds %struct.repository, %struct.repository* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.repository*, %struct.repository** %2, align 8
  %63 = getelementptr inbounds %struct.repository, %struct.repository* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @submodule_cache_free(i32* %64)
  %66 = load %struct.repository*, %struct.repository** %2, align 8
  %67 = getelementptr inbounds %struct.repository, %struct.repository* %66, i32 0, i32 1
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %61, %56
  %69 = load %struct.repository*, %struct.repository** %2, align 8
  %70 = getelementptr inbounds %struct.repository, %struct.repository* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %88

73:                                               ; preds = %68
  %74 = load %struct.repository*, %struct.repository** %2, align 8
  %75 = getelementptr inbounds %struct.repository, %struct.repository* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @discard_index(i32* %76)
  %78 = load %struct.repository*, %struct.repository** %2, align 8
  %79 = getelementptr inbounds %struct.repository, %struct.repository* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, @the_index
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = load %struct.repository*, %struct.repository** %2, align 8
  %84 = getelementptr inbounds %struct.repository, %struct.repository* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @FREE_AND_NULL(i32* %85)
  br label %87

87:                                               ; preds = %82, %73
  br label %88

88:                                               ; preds = %87, %68
  ret void
}

declare dso_local i32 @FREE_AND_NULL(i32*) #1

declare dso_local i32 @raw_object_store_clear(i32*) #1

declare dso_local i32 @parsed_object_pool_clear(i32*) #1

declare dso_local i32 @git_configset_clear(i32*) #1

declare dso_local i32 @submodule_cache_free(i32*) #1

declare dso_local i32 @discard_index(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
