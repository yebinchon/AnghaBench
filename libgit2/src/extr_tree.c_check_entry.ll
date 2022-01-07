; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_tree.c_check_entry.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_tree.c_check_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [50 x i8] c"failed to insert entry: invalid filemode for file\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"failed to insert entry: invalid name for a tree entry\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"failed to insert entry: invalid null OID\00", align 1
@GIT_FILEMODE_COMMIT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [49 x i8] c"failed to insert entry: invalid object specified\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i64)* @check_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_entry(i32* %0, i8* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @valid_filemode(i64 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @tree_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %14)
  store i32 %15, i32* %5, align 4
  br label %46

16:                                               ; preds = %4
  %17 = load i32*, i32** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @valid_entry_name(i32* %17, i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @tree_error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  store i32 %23, i32* %5, align 4
  br label %46

24:                                               ; preds = %16
  %25 = load i32*, i32** %8, align 8
  %26 = call i64 @git_oid_is_zero(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @tree_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  store i32 %30, i32* %5, align 4
  br label %46

31:                                               ; preds = %24
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @GIT_FILEMODE_COMMIT, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @otype_from_mode(i64 %38)
  %40 = call i32 @git_object__is_valid(i32* %36, i32* %37, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @tree_error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %43)
  store i32 %44, i32* %5, align 4
  br label %46

45:                                               ; preds = %35, %31
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %42, %28, %21, %13
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @valid_filemode(i64) #1

declare dso_local i32 @tree_error(i8*, i8*) #1

declare dso_local i32 @valid_entry_name(i32*, i8*) #1

declare dso_local i64 @git_oid_is_zero(i32*) #1

declare dso_local i32 @git_object__is_valid(i32*, i32*, i32) #1

declare dso_local i32 @otype_from_mode(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
