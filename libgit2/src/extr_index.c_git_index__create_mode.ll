; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index__create_mode.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_git_index__create_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_IFLNK = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_index__create_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @S_ISLNK(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @S_IFLNK, align 4
  store i32 %8, i32* %2, align 4
  br label %30

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @S_ISDIR(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @S_IFMT, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @S_IFLNK, align 4
  %18 = load i32, i32* @S_IFDIR, align 4
  %19 = or i32 %17, %18
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %13, %9
  %22 = load i32, i32* @S_IFLNK, align 4
  %23 = load i32, i32* @S_IFDIR, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %2, align 4
  br label %30

25:                                               ; preds = %13
  %26 = load i32, i32* @S_IFREG, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @GIT_PERMS_CANONICAL(i32 %27)
  %29 = or i32 %26, %28
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %25, %21, %7
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @GIT_PERMS_CANONICAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
