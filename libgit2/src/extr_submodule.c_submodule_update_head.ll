; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_submodule.c_submodule_update_head.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_submodule.c_submodule_update_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@GIT_SUBMODULE_STATUS_IN_HEAD = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS__HEAD_OID_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @submodule_update_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submodule_update_head(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i32* null, i32** %3, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_HEAD, align 4
  %9 = load i32, i32* @GIT_SUBMODULE_STATUS__HEAD_OID_VALID, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = and i32 %7, %11
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @git_repository_head_tree(i32** %3, i32 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @git_tree_entry_bypath(%struct.TYPE_8__** %4, i32* %21, i32 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20, %1
  %28 = call i32 (...) @git_error_clear()
  br label %37

29:                                               ; preds = %20
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = call i32 @git_tree_entry_id(%struct.TYPE_8__* %34)
  %36 = call i32 @submodule_update_from_head_data(%struct.TYPE_9__* %30, i32 %33, i32 %35)
  br label %37

37:                                               ; preds = %29, %27
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = call i32 @git_tree_entry_free(%struct.TYPE_8__* %38)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @git_tree_free(i32* %40)
  ret i32 0
}

declare dso_local i64 @git_repository_head_tree(i32**, i32) #1

declare dso_local i64 @git_tree_entry_bypath(%struct.TYPE_8__**, i32*, i32) #1

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i32 @submodule_update_from_head_data(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @git_tree_entry_id(%struct.TYPE_8__*) #1

declare dso_local i32 @git_tree_entry_free(%struct.TYPE_8__*) #1

declare dso_local i32 @git_tree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
