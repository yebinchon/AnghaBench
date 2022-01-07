; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_get_worktree_ref_store.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_get_worktree_ref_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_store = type { i32 }
%struct.worktree = type { i8*, i64 }

@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@worktree_ref_stores = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"worktrees/%s\00", align 1
@REF_STORE_ALL_CAPS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"worktree\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ref_store* @get_worktree_ref_store(%struct.worktree* %0) #0 {
  %2 = alloca %struct.ref_store*, align 8
  %3 = alloca %struct.worktree*, align 8
  %4 = alloca %struct.ref_store*, align 8
  %5 = alloca i8*, align 8
  store %struct.worktree* %0, %struct.worktree** %3, align 8
  %6 = load %struct.worktree*, %struct.worktree** %3, align 8
  %7 = getelementptr inbounds %struct.worktree, %struct.worktree* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @the_repository, align 4
  %12 = call %struct.ref_store* @get_main_ref_store(i32 %11)
  store %struct.ref_store* %12, %struct.ref_store** %2, align 8
  br label %56

13:                                               ; preds = %1
  %14 = load %struct.worktree*, %struct.worktree** %3, align 8
  %15 = getelementptr inbounds %struct.worktree, %struct.worktree* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.worktree*, %struct.worktree** %3, align 8
  %20 = getelementptr inbounds %struct.worktree, %struct.worktree* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  br label %23

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i8* [ %21, %18 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %22 ]
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call %struct.ref_store* @lookup_ref_store_map(i32* @worktree_ref_stores, i8* %25)
  store %struct.ref_store* %26, %struct.ref_store** %4, align 8
  %27 = load %struct.ref_store*, %struct.ref_store** %4, align 8
  %28 = icmp ne %struct.ref_store* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load %struct.ref_store*, %struct.ref_store** %4, align 8
  store %struct.ref_store* %30, %struct.ref_store** %2, align 8
  br label %56

31:                                               ; preds = %23
  %32 = load %struct.worktree*, %struct.worktree** %3, align 8
  %33 = getelementptr inbounds %struct.worktree, %struct.worktree* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.worktree*, %struct.worktree** %3, align 8
  %38 = getelementptr inbounds %struct.worktree, %struct.worktree* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @git_common_path(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @REF_STORE_ALL_CAPS, align 4
  %42 = call %struct.ref_store* @ref_store_init(i32 %40, i32 %41)
  store %struct.ref_store* %42, %struct.ref_store** %4, align 8
  br label %47

43:                                               ; preds = %31
  %44 = call i32 (...) @get_git_common_dir()
  %45 = load i32, i32* @REF_STORE_ALL_CAPS, align 4
  %46 = call %struct.ref_store* @ref_store_init(i32 %44, i32 %45)
  store %struct.ref_store* %46, %struct.ref_store** %4, align 8
  br label %47

47:                                               ; preds = %43, %36
  %48 = load %struct.ref_store*, %struct.ref_store** %4, align 8
  %49 = icmp ne %struct.ref_store* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.ref_store*, %struct.ref_store** %4, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 @register_ref_store_map(i32* @worktree_ref_stores, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.ref_store* %51, i8* %52)
  br label %54

54:                                               ; preds = %50, %47
  %55 = load %struct.ref_store*, %struct.ref_store** %4, align 8
  store %struct.ref_store* %55, %struct.ref_store** %2, align 8
  br label %56

56:                                               ; preds = %54, %29, %10
  %57 = load %struct.ref_store*, %struct.ref_store** %2, align 8
  ret %struct.ref_store* %57
}

declare dso_local %struct.ref_store* @get_main_ref_store(i32) #1

declare dso_local %struct.ref_store* @lookup_ref_store_map(i32*, i8*) #1

declare dso_local %struct.ref_store* @ref_store_init(i32, i32) #1

declare dso_local i32 @git_common_path(i8*, i8*) #1

declare dso_local i32 @get_git_common_dir(...) #1

declare dso_local i32 @register_ref_store_map(i32*, i8*, %struct.ref_store*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
