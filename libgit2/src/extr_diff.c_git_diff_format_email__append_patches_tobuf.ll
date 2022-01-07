; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff.c_git_diff_format_email__append_patches_tobuf.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff.c_git_diff_format_email__append_patches_tobuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_diff_format_email__append_patches_tobuf(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i64 @git_diff_num_deltas(i32* %9)
  store i64 %10, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %31, %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %11
  store i32* null, i32** %8, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @git_patch_from_diff(i32** %8, i32* %16, i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @git_patch_to_buf(i32* %21, i32* %22)
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %20, %15
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @git_patch_free(i32* %25)
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %34

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %5, align 8
  br label %11

34:                                               ; preds = %29, %11
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i64 @git_diff_num_deltas(i32*) #1

declare dso_local i32 @git_patch_from_diff(i32**, i32*, i64) #1

declare dso_local i32 @git_patch_to_buf(i32*, i32*) #1

declare dso_local i32 @git_patch_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
