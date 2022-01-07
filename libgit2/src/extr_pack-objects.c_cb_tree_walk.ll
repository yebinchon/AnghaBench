; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_cb_tree_walk.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_pack-objects.c_cb_tree_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_walk_context = type { i32, i32 }

@GIT_OBJECT_COMMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i8*)* @cb_tree_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_tree_walk(i8* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tree_walk_context*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.tree_walk_context*
  store %struct.tree_walk_context* %11, %struct.tree_walk_context** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i64 @git_tree_entry_type(i32* %12)
  %14 = load i64, i64* @GIT_OBJECT_COMMIT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %42

17:                                               ; preds = %3
  %18 = load %struct.tree_walk_context*, %struct.tree_walk_context** %9, align 8
  %19 = getelementptr inbounds %struct.tree_walk_context, %struct.tree_walk_context* %18, i32 0, i32 0
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @git_buf_sets(i32* %19, i8* %20)
  store i32 %21, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %17
  %24 = load %struct.tree_walk_context*, %struct.tree_walk_context** %9, align 8
  %25 = getelementptr inbounds %struct.tree_walk_context, %struct.tree_walk_context* %24, i32 0, i32 0
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @git_tree_entry_name(i32* %26)
  %28 = call i32 @git_buf_puts(i32* %25, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %23
  %31 = load %struct.tree_walk_context*, %struct.tree_walk_context** %9, align 8
  %32 = getelementptr inbounds %struct.tree_walk_context, %struct.tree_walk_context* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @git_tree_entry_id(i32* %34)
  %36 = load %struct.tree_walk_context*, %struct.tree_walk_context** %9, align 8
  %37 = getelementptr inbounds %struct.tree_walk_context, %struct.tree_walk_context* %36, i32 0, i32 0
  %38 = call i32 @git_buf_cstr(i32* %37)
  %39 = call i32 @git_packbuilder_insert(i32 %33, i32 %35, i32 %38)
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %30, %23, %17
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %16
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @git_tree_entry_type(i32*) #1

declare dso_local i32 @git_buf_sets(i32*, i8*) #1

declare dso_local i32 @git_buf_puts(i32*, i32) #1

declare dso_local i32 @git_tree_entry_name(i32*) #1

declare dso_local i32 @git_packbuilder_insert(i32, i32, i32) #1

declare dso_local i32 @git_tree_entry_id(i32*) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
