; ModuleID = '/home/carl/AnghaBench/libgit2/tests/threads/extr_refdb.c_iterate_refs.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/threads/extr_refdb.c_iterate_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.th_data = type { i32 }

@GIT_ELOCKED = common dso_local global i32 0, align 4
@g_expected = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @iterate_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @iterate_refs(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.th_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.th_data*
  store %struct.th_data* %10, %struct.th_data** %3, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.th_data*, %struct.th_data** %3, align 8
  %12 = load %struct.th_data*, %struct.th_data** %3, align 8
  %13 = getelementptr inbounds %struct.th_data, %struct.th_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @git_repository_open(i32** %8, i32 %14)
  %16 = call i32 @cl_git_thread_pass(%struct.th_data* %11, i32 %15)
  br label %17

17:                                               ; preds = %20, %1
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @git_reference_iterator_new(i32** %4, i32* %18)
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @GIT_ELOCKED, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %17, label %24

24:                                               ; preds = %20
  %25 = load %struct.th_data*, %struct.th_data** %3, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @cl_git_thread_pass(%struct.th_data* %25, i32 %26)
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %40, %24
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @git_reference_next(i32** %5, i32* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i32*, i32** %5, align 8
  %35 = icmp ne i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @cl_assert(i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @git_reference_free(i32* %38)
  br label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %28

43:                                               ; preds = %28
  %44 = load i64, i64* @g_expected, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i64, i64* @g_expected, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @cl_assert_equal_i(i64 %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @git_reference_iterator_free(i32* %51)
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @git_repository_free(i32* %53)
  %55 = call i32 (...) @git_error_clear()
  %56 = load i8*, i8** %2, align 8
  ret i8* %56
}

declare dso_local i32 @cl_git_thread_pass(%struct.th_data*, i32) #1

declare dso_local i32 @git_repository_open(i32**, i32) #1

declare dso_local i32 @git_reference_iterator_new(i32**, i32*) #1

declare dso_local i32 @git_reference_next(i32**, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @cl_assert_equal_i(i64, i32) #1

declare dso_local i32 @git_reference_iterator_free(i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

declare dso_local i32 @git_error_clear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
