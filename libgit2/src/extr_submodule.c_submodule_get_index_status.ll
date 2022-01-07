; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_submodule.c_submodule_get_index_status.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_submodule.c_submodule_get_index_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_SUBMODULE_STATUS__INDEX_FLAGS = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_INDEX_ADDED = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_INDEX_DELETED = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_INDEX_MODIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @submodule_get_index_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @submodule_get_index_status(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32* @git_submodule_head_id(i32* %7)
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32* @git_submodule_index_id(i32* %9)
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GIT_SUBMODULE_STATUS__INDEX_FLAGS, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = load i32*, i32** %3, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %2
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* @GIT_SUBMODULE_STATUS_INDEX_ADDED, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %23
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %22, %19
  br label %48

28:                                               ; preds = %2
  %29 = load i32*, i32** %6, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @GIT_SUBMODULE_STATUS_INDEX_DELETED, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %32
  store i32 %35, i32* %33, align 4
  br label %47

36:                                               ; preds = %28
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @git_oid_equal(i32* %37, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @GIT_SUBMODULE_STATUS_INDEX_MODIFIED, align 4
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %41, %36
  br label %47

47:                                               ; preds = %46, %31
  br label %48

48:                                               ; preds = %47, %27
  ret void
}

declare dso_local i32* @git_submodule_head_id(i32*) #1

declare dso_local i32* @git_submodule_index_id(i32*) #1

declare dso_local i32 @git_oid_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
