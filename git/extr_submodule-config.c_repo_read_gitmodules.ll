; ModuleID = '/home/carl/AnghaBench/git/extr_submodule-config.c_repo_read_gitmodules.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule-config.c_repo_read_gitmodules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@gitmodules_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @repo_read_gitmodules(%struct.repository* %0) #0 {
  %2 = alloca %struct.repository*, align 8
  store %struct.repository* %0, %struct.repository** %2, align 8
  %3 = load %struct.repository*, %struct.repository** %2, align 8
  %4 = call i32 @submodule_cache_check_init(%struct.repository* %3)
  %5 = load %struct.repository*, %struct.repository** %2, align 8
  %6 = call i64 @repo_read_index(%struct.repository* %5)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %25

9:                                                ; preds = %1
  %10 = load %struct.repository*, %struct.repository** %2, align 8
  %11 = getelementptr inbounds %struct.repository, %struct.repository* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @is_gitmodules_unmerged(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = load i32, i32* @gitmodules_cb, align 4
  %17 = load %struct.repository*, %struct.repository** %2, align 8
  %18 = load %struct.repository*, %struct.repository** %2, align 8
  %19 = call i32 @config_from_gitmodules(i32 %16, %struct.repository* %17, %struct.repository* %18)
  br label %20

20:                                               ; preds = %15, %9
  %21 = load %struct.repository*, %struct.repository** %2, align 8
  %22 = getelementptr inbounds %struct.repository, %struct.repository* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %20, %8
  ret void
}

declare dso_local i32 @submodule_cache_check_init(%struct.repository*) #1

declare dso_local i64 @repo_read_index(%struct.repository*) #1

declare dso_local i32 @is_gitmodules_unmerged(i32) #1

declare dso_local i32 @config_from_gitmodules(i32, %struct.repository*, %struct.repository*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
