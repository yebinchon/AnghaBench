; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_general.c_lg2_general.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_general.c_lg2_general.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"/opt/libgit2-test/.git\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"opening repository\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lg2_general(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %10 = call i32 (...) @git_libgit2_init()
  %11 = load i32, i32* %5, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i8**, i8*** %6, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  br label %18

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi i8* [ %16, %13 ], [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %17 ]
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @git_repository_open(i32** %4, i8* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @check_error(i32 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @oid_parsing(i32* %8)
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @object_database(i32* %25, i32* %8)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @commit_writing(i32* %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @commit_parsing(i32* %29)
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @tag_parsing(i32* %31)
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @tree_parsing(i32* %33)
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @blob_parsing(i32* %35)
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @revwalking(i32* %37)
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @index_walking(i32* %39)
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @reference_listing(i32* %41)
  %43 = load i8*, i8** %9, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @config_files(i8* %43, i32* %44)
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @git_repository_free(i32* %46)
  ret i32 0
}

declare dso_local i32 @git_libgit2_init(...) #1

declare dso_local i32 @git_repository_open(i32**, i8*) #1

declare dso_local i32 @check_error(i32, i8*) #1

declare dso_local i32 @oid_parsing(i32*) #1

declare dso_local i32 @object_database(i32*, i32*) #1

declare dso_local i32 @commit_writing(i32*) #1

declare dso_local i32 @commit_parsing(i32*) #1

declare dso_local i32 @tag_parsing(i32*) #1

declare dso_local i32 @tree_parsing(i32*) #1

declare dso_local i32 @blob_parsing(i32*) #1

declare dso_local i32 @revwalking(i32*) #1

declare dso_local i32 @index_walking(i32*) #1

declare dso_local i32 @reference_listing(i32*) #1

declare dso_local i32 @config_files(i8*, i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
