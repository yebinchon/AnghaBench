; ModuleID = '/home/carl/AnghaBench/libgit2/tests/reset/extr_default.c_assert_content_in_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/reset/extr_default.c_assert_content_in_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32* }
%struct.TYPE_7__ = type { i32 }

@_index = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, %struct.TYPE_6__*)* @assert_content_in_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_content_in_index(%struct.TYPE_6__* %0, i32 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %63, %3
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %66

17:                                               ; preds = %11
  %18 = load i32, i32* @_index, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @git_index_find(i64* %8, i32 %18, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %17
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @GIT_ENOTFOUND, align 4
  %31 = icmp ne i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @cl_assert(i32 %32)
  %34 = load i32, i32* @_index, align 4
  %35 = load i64, i64* %8, align 8
  %36 = call %struct.TYPE_7__* @git_index_get_byindex(i32 %34, i64 %35)
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %10, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %38 = icmp ne %struct.TYPE_7__* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32 @cl_assert(i32 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = icmp ne %struct.TYPE_6__* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %28
  br label %63

44:                                               ; preds = %28
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @git_oid_streq(i32* %46, i32 %52)
  %54 = call i32 @cl_git_pass(i32 %53)
  br label %62

55:                                               ; preds = %17
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @GIT_ENOTFOUND, align 4
  %59 = icmp ne i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @cl_assert_equal_i(i32 %56, i32 %60)
  br label %62

62:                                               ; preds = %55, %44
  br label %63

63:                                               ; preds = %62, %43
  %64 = load i64, i64* %7, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %7, align 8
  br label %11

66:                                               ; preds = %11
  ret void
}

declare dso_local i32 @git_index_find(i64*, i32, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local %struct.TYPE_7__* @git_index_get_byindex(i32, i64) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_streq(i32*, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
