; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_cat-file.c_show_commit.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_cat-file.c_show_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OID_HEXSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"tree %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"parent %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"author\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"committer\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @show_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_commit(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %8 = add nsw i32 %7, 1
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = trunc i64 %9 to i32
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @git_commit_tree_id(i32* %13)
  %15 = call i32 @git_oid_tostr(i8* %11, i32 %12, i32 %14)
  %16 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %11)
  %17 = load i32*, i32** %2, align 8
  %18 = call i64 @git_commit_parentcount(i32* %17)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %31, %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = trunc i64 %9 to i32
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @git_commit_parent_id(i32* %26, i32 %27)
  %29 = call i32 @git_oid_tostr(i8* %11, i32 %25, i32 %28)
  %30 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  br label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %20

34:                                               ; preds = %20
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @git_commit_author(i32* %35)
  %37 = call i32 @print_signature(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @git_commit_committer(i32* %38)
  %40 = call i32 @print_signature(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** %2, align 8
  %42 = call i8* @git_commit_message(i32* %41)
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load i32*, i32** %2, align 8
  %46 = call i8* @git_commit_message(i32* %45)
  %47 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %44, %34
  %49 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %49)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @git_oid_tostr(i8*, i32, i32) #2

declare dso_local i32 @git_commit_tree_id(i32*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i64 @git_commit_parentcount(i32*) #2

declare dso_local i32 @git_commit_parent_id(i32*, i32) #2

declare dso_local i32 @print_signature(i8*, i32) #2

declare dso_local i32 @git_commit_author(i32*) #2

declare dso_local i32 @git_commit_committer(i32*) #2

declare dso_local i8* @git_commit_message(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
