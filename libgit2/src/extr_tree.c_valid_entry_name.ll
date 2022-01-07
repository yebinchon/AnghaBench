; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_tree.c_valid_entry_name.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_tree.c_valid_entry_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_PATH_REJECT_TRAVERSAL = common dso_local global i32 0, align 4
@GIT_PATH_REJECT_DOT_GIT = common dso_local global i32 0, align 4
@GIT_PATH_REJECT_SLASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @valid_entry_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_entry_name(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* @GIT_PATH_REJECT_TRAVERSAL, align 4
  %13 = load i32, i32* @GIT_PATH_REJECT_DOT_GIT, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @GIT_PATH_REJECT_SLASH, align 4
  %16 = or i32 %14, %15
  %17 = call i64 @git_path_isvalid(i32* %10, i8* %11, i32 0, i32 %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %9, %2
  %20 = phi i1 [ false, %2 ], [ %18, %9 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

declare dso_local i64 @git_path_isvalid(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
