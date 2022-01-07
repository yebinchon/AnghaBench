; ModuleID = '/home/carl/AnghaBench/libgit2/tests/fetchhead/extr_nonetwork.c_populate_fetchhead.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/fetchhead/extr_nonetwork.c_populate_fetchhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"49322bb17d3acc9146f98c97d078513228bbf3c0\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"git://github.com/libgit2/TestGitRepository\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"0966a434eb1a025db6b71485ab63a3bfbea520b6\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"refs/heads/first-merge\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"42e4e7c5e507e113ebbb7801b16b52cf867b7ce1\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"refs/heads/no-parent\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"d96c4e80345534eccee5ac7b07fc7603b56124cb\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"refs/tags/annotated_tag\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"55a1a760df4b86a02094a904dfa511deb5655905\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"refs/tags/blob\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"8f50ba15d49353813cc6e20298002c0d17b0a9ee\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"refs/tags/commit_tree\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @populate_fetchhead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @populate_fetchhead(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = call i32 @git_oid_fromstr(i32* %6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = call i32 @git_fetchhead_ref_create(i32** %5, i32* %6, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %3, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @git_vector_insert(i32* %11, i32* %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = call i32 @git_oid_fromstr(i32* %6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = call i32 @git_fetchhead_ref_create(i32** %5, i32* %6, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @git_vector_insert(i32* %19, i32* %20)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = call i32 @git_oid_fromstr(i32* %6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = call i32 @git_fetchhead_ref_create(i32** %5, i32* %6, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @git_vector_insert(i32* %27, i32* %28)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = call i32 @git_oid_fromstr(i32* %6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = call i32 @git_fetchhead_ref_create(i32** %5, i32* %6, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @git_vector_insert(i32* %35, i32* %36)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = call i32 @git_oid_fromstr(i32* %6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = call i32 @git_fetchhead_ref_create(i32** %5, i32* %6, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @git_vector_insert(i32* %43, i32* %44)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = call i32 @git_oid_fromstr(i32* %6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  %48 = call i32 @cl_git_pass(i32 %47)
  %49 = call i32 @git_fetchhead_ref_create(i32** %5, i32* %6, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %50 = call i32 @cl_git_pass(i32 %49)
  %51 = load i32*, i32** %3, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @git_vector_insert(i32* %51, i32* %52)
  %54 = call i32 @cl_git_pass(i32 %53)
  %55 = load i32*, i32** %4, align 8
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @git_fetchhead_write(i32* %55, i32* %56)
  %58 = call i32 @cl_git_pass(i32 %57)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_fetchhead_ref_create(i32**, i32*, i32, i8*, i8*) #1

declare dso_local i32 @git_vector_insert(i32*, i32*) #1

declare dso_local i32 @git_fetchhead_write(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
