; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_submodule.c_git_submodule_reload.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_submodule.c_git_submodule_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }

@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_IN_WD = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS__WD_OID_VALID = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS__WD_FLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_submodule_reload(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @GIT_UNUSED(i32 %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = call i32 @assert(%struct.TYPE_8__* %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @git_submodule_name_is_valid(i32 %15, i32 %18, i32 0)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %81

24:                                               ; preds = %2
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @git_repository_is_bare(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %69, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @gitmodules_snapshot(i32** %8, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @GIT_ENOTFOUND, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %81

42:                                               ; preds = %36, %30
  %43 = load i32*, i32** %8, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @submodule_read_config(%struct.TYPE_8__* %46, i32* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @git_config_free(i32* %49)
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %81

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %42
  %57 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_WD, align 4
  %58 = load i32, i32* @GIT_SUBMODULE_STATUS__WD_OID_VALID, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @GIT_SUBMODULE_STATUS__WD_FLAGS, align 4
  %61 = or i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = call i32 @submodule_load_from_wd_lite(%struct.TYPE_8__* %67)
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %56, %24
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = call i32 @submodule_update_index(%struct.TYPE_8__* %73)
  store i32 %74, i32* %6, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = call i32 @submodule_update_head(%struct.TYPE_8__* %77)
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %76, %72, %69
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %53, %40, %22
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @GIT_UNUSED(i32) #1

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i32 @git_submodule_name_is_valid(i32, i32, i32) #1

declare dso_local i32 @git_repository_is_bare(i32) #1

declare dso_local i32 @gitmodules_snapshot(i32**, i32) #1

declare dso_local i32 @submodule_read_config(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @git_config_free(i32*) #1

declare dso_local i32 @submodule_load_from_wd_lite(%struct.TYPE_8__*) #1

declare dso_local i32 @submodule_update_index(%struct.TYPE_8__*) #1

declare dso_local i32 @submodule_update_head(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
