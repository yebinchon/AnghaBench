; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_path_w32.c_git_win32_path_trim_end.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_path_w32.c_git_win32_path_trim_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @git_win32_path_trim_end(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  br label %5

5:                                                ; preds = %2, %31
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load i32*, i32** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = sub i64 %10, 1
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 92
  br i1 %14, label %15, label %16

15:                                               ; preds = %8, %5
  br label %34

16:                                               ; preds = %8
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %17, 3
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load i32*, i32** %3, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @git_win32__isalpha(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i32*, i32** %3, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 58
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %34

31:                                               ; preds = %25, %19, %16
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, -1
  store i64 %33, i64* %4, align 8
  br label %5

34:                                               ; preds = %30, %15
  %35 = load i32*, i32** %3, align 8
  %36 = load i64, i64* %4, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32 0, i32* %37, align 4
  %38 = load i64, i64* %4, align 8
  ret i64 %38
}

declare dso_local i64 @git_win32__isalpha(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
