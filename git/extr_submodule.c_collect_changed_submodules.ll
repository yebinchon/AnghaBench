; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_collect_changed_submodules.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_collect_changed_submodules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.string_list = type { i32 }
%struct.argv_array = type { i32, i32 }
%struct.rev_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.collect_changed_submodules_cb_data*, i32, i32 }
%struct.collect_changed_submodules_cb_data = type { i32*, %struct.string_list*, %struct.repository* }
%struct.commit = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"revision walk setup failed\00", align 1
@DIFF_FORMAT_CALLBACK = common dso_local global i32 0, align 4
@collect_changed_submodules_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, %struct.string_list*, %struct.argv_array*)* @collect_changed_submodules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collect_changed_submodules(%struct.repository* %0, %struct.string_list* %1, %struct.argv_array* %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca %struct.argv_array*, align 8
  %7 = alloca %struct.rev_info, align 8
  %8 = alloca %struct.commit*, align 8
  %9 = alloca %struct.rev_info, align 8
  %10 = alloca %struct.collect_changed_submodules_cb_data, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.string_list* %1, %struct.string_list** %5, align 8
  store %struct.argv_array* %2, %struct.argv_array** %6, align 8
  %11 = load %struct.repository*, %struct.repository** %4, align 8
  %12 = call i32 @repo_init_revisions(%struct.repository* %11, %struct.rev_info* %7, i32* null)
  %13 = load %struct.argv_array*, %struct.argv_array** %6, align 8
  %14 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.argv_array*, %struct.argv_array** %6, align 8
  %17 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @setup_revisions(i32 %15, i32 %18, %struct.rev_info* %7, i32* null)
  %20 = call i64 @prepare_revision_walk(%struct.rev_info* %7)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = call i32 @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %3
  br label %25

25:                                               ; preds = %28, %24
  %26 = call %struct.commit* @get_revision(%struct.rev_info* %7)
  store %struct.commit* %26, %struct.commit** %8, align 8
  %27 = icmp ne %struct.commit* %26, null
  br i1 %27, label %28, label %51

28:                                               ; preds = %25
  %29 = load %struct.repository*, %struct.repository** %4, align 8
  %30 = getelementptr inbounds %struct.collect_changed_submodules_cb_data, %struct.collect_changed_submodules_cb_data* %10, i32 0, i32 2
  store %struct.repository* %29, %struct.repository** %30, align 8
  %31 = load %struct.string_list*, %struct.string_list** %5, align 8
  %32 = getelementptr inbounds %struct.collect_changed_submodules_cb_data, %struct.collect_changed_submodules_cb_data* %10, i32 0, i32 1
  store %struct.string_list* %31, %struct.string_list** %32, align 8
  %33 = load %struct.commit*, %struct.commit** %8, align 8
  %34 = getelementptr inbounds %struct.commit, %struct.commit* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.collect_changed_submodules_cb_data, %struct.collect_changed_submodules_cb_data* %10, i32 0, i32 0
  store i32* %35, i32** %36, align 8
  %37 = load %struct.repository*, %struct.repository** %4, align 8
  %38 = call i32 @repo_init_revisions(%struct.repository* %37, %struct.rev_info* %9, i32* null)
  %39 = load i32, i32* @DIFF_FORMAT_CALLBACK, align 4
  %40 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @collect_changed_submodules_cb, align 4
  %45 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store %struct.collect_changed_submodules_cb_data* %10, %struct.collect_changed_submodules_cb_data** %48, align 8
  %49 = load %struct.commit*, %struct.commit** %8, align 8
  %50 = call i32 @diff_tree_combined_merge(%struct.commit* %49, i32 1, %struct.rev_info* %9)
  br label %25

51:                                               ; preds = %25
  %52 = call i32 (...) @reset_revision_walk()
  ret void
}

declare dso_local i32 @repo_init_revisions(%struct.repository*, %struct.rev_info*, i32*) #1

declare dso_local i32 @setup_revisions(i32, i32, %struct.rev_info*, i32*) #1

declare dso_local i64 @prepare_revision_walk(%struct.rev_info*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local %struct.commit* @get_revision(%struct.rev_info*) #1

declare dso_local i32 @diff_tree_combined_merge(%struct.commit*, i32, %struct.rev_info*) #1

declare dso_local i32 @reset_revision_walk(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
