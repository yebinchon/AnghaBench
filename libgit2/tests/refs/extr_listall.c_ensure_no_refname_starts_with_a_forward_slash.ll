; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_listall.c_ensure_no_refname_starts_with_a_forward_slash.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_listall.c_ensure_no_refname_starts_with_a_forward_slash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@repo = common dso_local global i32 0, align 4
@ref_list = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ensure_no_refname_starts_with_a_forward_slash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ensure_no_refname_starts_with_a_forward_slash(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @git_repository_open(i32* @repo, i8* %4)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32, i32* @repo, align 4
  %8 = call i32 @git_reference_list(%struct.TYPE_4__* @ref_list, i32 %7)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ref_list, i32 0, i32 0), align 8
  %11 = icmp ugt i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @cl_assert(i32 %12)
  store i64 0, i64* %3, align 8
  br label %14

14:                                               ; preds = %27, %1
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ref_list, i32 0, i32 0), align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ref_list, i32 0, i32 1), align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @git__prefixcmp(i32 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @cl_assert(i32 %25)
  br label %27

27:                                               ; preds = %18
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %3, align 8
  br label %14

30:                                               ; preds = %14
  %31 = call i32 @git_strarray_free(%struct.TYPE_4__* @ref_list)
  %32 = load i32, i32* @repo, align 4
  %33 = call i32 @git_repository_free(i32 %32)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_open(i32*, i8*) #1

declare dso_local i32 @git_reference_list(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git__prefixcmp(i32, i8*) #1

declare dso_local i32 @git_strarray_free(%struct.TYPE_4__*) #1

declare dso_local i32 @git_repository_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
