; ModuleID = '/home/carl/AnghaBench/git/extr_submodule.c_relocate_single_git_dir_into_superproject.c'
source_filename = "/home/carl/AnghaBench/git/extr_submodule.c_relocate_single_git_dir_into_superproject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.submodule = type { i32 }

@.str = private unnamed_addr constant [77 x i8] c"relocate_gitdir for submodule '%s' with more than one worktree not supported\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s/.git\00", align 1
@the_repository = common dso_local global i32 0, align 4
@null_oid = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"could not lookup name for submodule '%s'\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"modules/%s\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"could not create directory '%s'\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"Migrating git directory of '%s%s' from\0A'%s' to\0A'%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @relocate_single_git_dir_into_superproject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @relocate_single_git_dir_into_superproject(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.submodule*, align 8
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 @submodule_uses_worktrees(i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = call i8* @_(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @die(i8* %12, i8* %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = load i8*, i8** %2, align 8
  %17 = call i8* @xstrfmt(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  store i8* %17, i8** %3, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @read_gitfile(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %66

22:                                               ; preds = %15
  %23 = load i8*, i8** %3, align 8
  %24 = call i8* @real_pathdup(i8* %23, i32 1)
  store i8* %24, i8** %4, align 8
  %25 = load i32, i32* @the_repository, align 4
  %26 = load i8*, i8** %2, align 8
  %27 = call %struct.submodule* @submodule_from_path(i32 %25, i32* @null_oid, i8* %26)
  store %struct.submodule* %27, %struct.submodule** %7, align 8
  %28 = load %struct.submodule*, %struct.submodule** %7, align 8
  %29 = icmp ne %struct.submodule* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %22
  %31 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 @die(i8* %31, i8* %32)
  br label %34

34:                                               ; preds = %30, %22
  %35 = load %struct.submodule*, %struct.submodule** %7, align 8
  %36 = getelementptr inbounds %struct.submodule, %struct.submodule* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @git_path(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  store i8* %38, i8** %6, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i64 @safe_create_leading_directories_const(i8* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @die(i8* %43, i8* %44)
  br label %46

46:                                               ; preds = %42, %34
  %47 = load i8*, i8** %6, align 8
  %48 = call i8* @real_pathdup(i8* %47, i32 1)
  store i8* %48, i8** %5, align 8
  %49 = load i32, i32* @stderr, align 4
  %50 = call i8* @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  %51 = call i8* (...) @get_super_prefix_or_empty()
  %52 = load i8*, i8** %2, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @fprintf(i32 %49, i8* %50, i8* %51, i8* %52, i8* %53, i8* %54)
  %56 = load i8*, i8** %2, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @relocate_gitdir(i8* %56, i8* %57, i8* %58)
  %60 = load i8*, i8** %3, align 8
  %61 = call i32 @free(i8* %60)
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @free(i8* %62)
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @free(i8* %64)
  br label %66

66:                                               ; preds = %46, %21
  ret void
}

declare dso_local i64 @submodule_uses_worktrees(i8*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @xstrfmt(i8*, i8*) #1

declare dso_local i64 @read_gitfile(i8*) #1

declare dso_local i8* @real_pathdup(i8*, i32) #1

declare dso_local %struct.submodule* @submodule_from_path(i32, i32*, i8*) #1

declare dso_local i8* @git_path(i8*, i32) #1

declare dso_local i64 @safe_create_leading_directories_const(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @get_super_prefix_or_empty(...) #1

declare dso_local i32 @relocate_gitdir(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
