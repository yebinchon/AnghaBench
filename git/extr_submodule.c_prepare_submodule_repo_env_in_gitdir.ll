; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_prepare_submodule_repo_env_in_gitdir.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_prepare_submodule_repo_env_in_gitdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s=.\00", align 1
@GIT_DIR_ENVIRONMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.argv_array*)* @prepare_submodule_repo_env_in_gitdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_submodule_repo_env_in_gitdir(%struct.argv_array* %0) #0 {
  %2 = alloca %struct.argv_array*, align 8
  store %struct.argv_array* %0, %struct.argv_array** %2, align 8
  %3 = load %struct.argv_array*, %struct.argv_array** %2, align 8
  %4 = call i32 @prepare_submodule_repo_env_no_git_dir(%struct.argv_array* %3)
  %5 = load %struct.argv_array*, %struct.argv_array** %2, align 8
  %6 = load i32, i32* @GIT_DIR_ENVIRONMENT, align 4
  %7 = call i32 @argv_array_pushf(%struct.argv_array* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %6)
  ret void
}

declare dso_local i32 @prepare_submodule_repo_env_no_git_dir(%struct.argv_array*) #1

declare dso_local i32 @argv_array_pushf(%struct.argv_array*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
