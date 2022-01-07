; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_filter.c_git_filter_global_init.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_filter.c_git_filter_global_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@filter_registry = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@filter_def_priority_cmp = common dso_local global i32 0, align 4
@GIT_FILTER_CRLF = common dso_local global i32 0, align 4
@GIT_FILTER_CRLF_PRIORITY = common dso_local global i32 0, align 4
@GIT_FILTER_IDENT = common dso_local global i32 0, align 4
@GIT_FILTER_IDENT_PRIORITY = common dso_local global i32 0, align 4
@git_filter_global_shutdown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_filter_global_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = call i64 @git_rwlock_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @filter_registry, i32 0, i32 1))
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %45

8:                                                ; preds = %0
  %9 = load i32, i32* @filter_def_priority_cmp, align 4
  %10 = call i32 @git_vector_init(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @filter_registry, i32 0, i32 0), i32 2, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %35

13:                                               ; preds = %8
  %14 = call i32* (...) @git_crlf_filter_new()
  store i32* %14, i32** %2, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* @GIT_FILTER_CRLF, align 4
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @GIT_FILTER_CRLF_PRIORITY, align 4
  %20 = call i64 @filter_registry_insert(i32 %17, i32* %18, i32 %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %16
  %23 = call i32* (...) @git_ident_filter_new()
  store i32* %23, i32** %3, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @GIT_FILTER_IDENT, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @GIT_FILTER_IDENT_PRIORITY, align 4
  %29 = call i64 @filter_registry_insert(i32 %26, i32* %27, i32 %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %22, %16, %13
  store i32 -1, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %25
  %33 = load i32, i32* @git_filter_global_shutdown, align 4
  %34 = call i32 @git__on_shutdown(i32 %33)
  br label %35

35:                                               ; preds = %32, %12
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @git_filter_free(i32* %39)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @git_filter_free(i32* %41)
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %1, align 4
  br label %45

45:                                               ; preds = %43, %7
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

declare dso_local i64 @git_rwlock_init(i32*) #1

declare dso_local i32 @git_vector_init(i32*, i32, i32) #1

declare dso_local i32* @git_crlf_filter_new(...) #1

declare dso_local i64 @filter_registry_insert(i32, i32*, i32) #1

declare dso_local i32* @git_ident_filter_new(...) #1

declare dso_local i32 @git__on_shutdown(i32) #1

declare dso_local i32 @git_filter_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
