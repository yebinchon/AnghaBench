; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_should_write_reflog.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refdb_fs.c_should_write_reflog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_CONFIGMAP_LOGALLREFUPDATES = common dso_local global i32 0, align 4
@GIT_LOGALLREFUPDATES_UNSET = common dso_local global i32 0, align 4
@GIT_REFS_HEADS_DIR = common dso_local global i32 0, align 4
@GIT_HEAD_FILE = common dso_local global i32 0, align 4
@GIT_REFS_REMOTES_DIR = common dso_local global i32 0, align 4
@GIT_REFS_NOTES_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @should_write_reflog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_write_reflog(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* @GIT_CONFIGMAP_LOGALLREFUPDATES, align 4
  %12 = call i32 @git_repository__configmap_lookup(i32* %9, i32* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %65

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @GIT_LOGALLREFUPDATES_UNSET, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @git_repository_is_bare(i32* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %21, %17
  %28 = load i32*, i32** %5, align 8
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %9, align 4
  switch i32 %29, label %64 [
    i32 129, label %30
    i32 128, label %32
    i32 130, label %62
  ]

30:                                               ; preds = %27
  %31 = load i32*, i32** %5, align 8
  store i32 0, i32* %31, align 4
  br label %64

32:                                               ; preds = %27
  %33 = load i32*, i32** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @has_reflog(i32* %33, i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %58, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* @GIT_REFS_HEADS_DIR, align 4
  %40 = call i32 @git__prefixcmp(i8* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %37
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* @GIT_HEAD_FILE, align 4
  %45 = call i32 @git__strcmp(i8* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* @GIT_REFS_REMOTES_DIR, align 4
  %50 = call i32 @git__prefixcmp(i8* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* @GIT_REFS_NOTES_DIR, align 4
  %55 = call i32 @git__prefixcmp(i8* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %52, %47, %42, %37, %32
  %59 = phi i1 [ true, %47 ], [ true, %42 ], [ true, %37 ], [ true, %32 ], [ %57, %52 ]
  %60 = zext i1 %59 to i32
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  br label %64

62:                                               ; preds = %27
  %63 = load i32*, i32** %5, align 8
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %27, %62, %58, %30
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %15
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @git_repository__configmap_lookup(i32*, i32*, i32) #1

declare dso_local i32 @git_repository_is_bare(i32*) #1

declare dso_local i32 @has_reflog(i32*, i8*) #1

declare dso_local i32 @git__prefixcmp(i8*, i32) #1

declare dso_local i32 @git__strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
