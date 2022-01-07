; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_findfile.c_git_win32__find_global_dirs.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_findfile.c_git_win32__find_global_dirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@git_win32__find_global_dirs.global_tmpls = internal global [4 x i8*] [i8* bitcast ([8 x i32]* @.str to i8*), i8* bitcast ([23 x i32]* @.str.1 to i8*), i8* bitcast ([15 x i32]* @.str.2 to i8*), i8* null], align 16
@.str = private unnamed_addr constant [8 x i32] [i32 37, i32 72, i32 79, i32 77, i32 69, i32 37, i32 92, i32 0], align 4
@.str.1 = private unnamed_addr constant [23 x i32] [i32 37, i32 72, i32 79, i32 77, i32 69, i32 68, i32 82, i32 73, i32 86, i32 69, i32 37, i32 37, i32 72, i32 79, i32 77, i32 69, i32 80, i32 65, i32 84, i32 72, i32 37, i32 92, i32 0], align 4
@.str.2 = private unnamed_addr constant [15 x i32] [i32 37, i32 85, i32 83, i32 69, i32 82, i32 80, i32 82, i32 79, i32 70, i32 73, i32 76, i32 69, i32 37, i32 92, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_win32__find_global_dirs(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @win32_find_existing_dirs(i32* %3, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @git_win32__find_global_dirs.global_tmpls, i64 0, i64 0))
  ret i32 %4
}

declare dso_local i32 @win32_find_existing_dirs(i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
