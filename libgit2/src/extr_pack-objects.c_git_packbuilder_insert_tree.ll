; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_git_packbuilder_insert_tree.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_git_packbuilder_insert_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.tree_walk_context = type { i32, i32, %struct.TYPE_4__* }

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_TREEWALK_PRE = common dso_local global i32 0, align 4
@cb_tree_walk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_packbuilder_insert_tree(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.tree_walk_context, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %6, align 8
  %8 = getelementptr inbounds %struct.tree_walk_context, %struct.tree_walk_context* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = ptrtoint %struct.TYPE_4__* %9 to i32
  store i32 %10, i32* %8, align 8
  %11 = getelementptr inbounds %struct.tree_walk_context, %struct.tree_walk_context* %7, i32 0, i32 1
  %12 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.tree_walk_context, %struct.tree_walk_context* %7, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %13, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @git_tree_lookup(i32** %6, i32 %16, i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @git_packbuilder_insert(%struct.TYPE_4__* %21, i32* %22, i32* null)
  store i32 %23, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @GIT_TREEWALK_PRE, align 4
  %28 = load i32, i32* @cb_tree_walk, align 4
  %29 = call i32 @git_tree_walk(i32* %26, i32 %27, i32 %28, %struct.tree_walk_context* %7)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %25, %20, %2
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @git_tree_free(i32* %31)
  %33 = getelementptr inbounds %struct.tree_walk_context, %struct.tree_walk_context* %7, i32 0, i32 0
  %34 = call i32 @git_buf_dispose(i32* %33)
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_packbuilder_insert(%struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32 @git_tree_walk(i32*, i32, i32, %struct.tree_walk_context*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
