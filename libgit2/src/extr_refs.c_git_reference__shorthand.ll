; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refs.c_git_reference__shorthand.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refs.c_git_reference__shorthand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_REFS_HEADS_DIR = common dso_local global i32 0, align 4
@GIT_REFS_TAGS_DIR = common dso_local global i32 0, align 4
@GIT_REFS_REMOTES_DIR = common dso_local global i32 0, align 4
@GIT_REFS_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @git_reference__shorthand(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i32, i32* @GIT_REFS_HEADS_DIR, align 4
  %6 = call i32 @git__prefixcmp(i8* %4, i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @GIT_REFS_HEADS_DIR, align 4
  %11 = call i32 @strlen(i32 %10)
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %9, i64 %12
  store i8* %13, i8** %2, align 8
  br label %52

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* @GIT_REFS_TAGS_DIR, align 4
  %17 = call i32 @git__prefixcmp(i8* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* @GIT_REFS_TAGS_DIR, align 4
  %22 = call i32 @strlen(i32 %21)
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  store i8* %24, i8** %2, align 8
  br label %52

25:                                               ; preds = %14
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* @GIT_REFS_REMOTES_DIR, align 4
  %28 = call i32 @git__prefixcmp(i8* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* @GIT_REFS_REMOTES_DIR, align 4
  %33 = call i32 @strlen(i32 %32)
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  store i8* %35, i8** %2, align 8
  br label %52

36:                                               ; preds = %25
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* @GIT_REFS_DIR, align 4
  %39 = call i32 @git__prefixcmp(i8* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %3, align 8
  %43 = load i32, i32* @GIT_REFS_DIR, align 4
  %44 = call i32 @strlen(i32 %43)
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  store i8* %46, i8** %2, align 8
  br label %52

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49
  %51 = load i8*, i8** %3, align 8
  store i8* %51, i8** %2, align 8
  br label %52

52:                                               ; preds = %50, %41, %30, %19, %8
  %53 = load i8*, i8** %2, align 8
  ret i8* %53
}

declare dso_local i32 @git__prefixcmp(i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
