; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_init.c_create_initial_commit.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_init.c_create_initial_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"Unable to create a commit signature.\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Perhaps 'user.name' and 'user.email' are not set\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Could not open repository index\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Unable to write initial tree from index\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Could not look up initial tree\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"Initial commit\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Could not create the initial commit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @create_initial_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_initial_commit(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @git_signature_default(i32** %3, i32* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @fatal(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %1
  %14 = load i32*, i32** %2, align 8
  %15 = call i64 @git_repository_index(i32** %4, i32* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 @fatal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* null)
  br label %19

19:                                               ; preds = %17, %13
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @git_index_write_tree(i32* %5, i32* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @fatal(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* null)
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @git_index_free(i32* %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i64 @git_tree_lookup(i32** %7, i32* %28, i32* %5)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 @fatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* null)
  br label %33

33:                                               ; preds = %31, %25
  %34 = load i32*, i32** %2, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i64 @git_commit_create_v(i32* %6, i32* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* %35, i32* %36, i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32* %37, i32 0)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = call i32 @fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8* null)
  br label %42

42:                                               ; preds = %40, %33
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @git_tree_free(i32* %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @git_signature_free(i32* %45)
  ret void
}

declare dso_local i64 @git_signature_default(i32**, i32*) #1

declare dso_local i32 @fatal(i8*, i8*) #1

declare dso_local i64 @git_repository_index(i32**, i32*) #1

declare dso_local i64 @git_index_write_tree(i32*, i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i64 @git_tree_lookup(i32**, i32*, i32*) #1

declare dso_local i64 @git_commit_create_v(i32*, i32*, i8*, i32*, i32*, i32*, i8*, i32*, i32) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @git_signature_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
