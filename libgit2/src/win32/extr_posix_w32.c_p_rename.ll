; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_posix_w32.c_p_rename.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_posix_w32.c_p_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p_rename(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @git_win32_path_from_utf8(i32 %8, i8* %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @git_win32_path_from_utf8(i32 %13, i8* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %2
  store i32 -1, i32* %3, align 4
  br label %25

18:                                               ; preds = %12
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @rename_once(i32 %19, i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @ensure_writable(i32 %22)
  %24 = call i32 @do_with_retries(i32 %21, i32 %23)
  br label %25

25:                                               ; preds = %18, %17
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @git_win32_path_from_utf8(i32, i8*) #1

declare dso_local i32 @do_with_retries(i32, i32) #1

declare dso_local i32 @rename_once(i32, i32) #1

declare dso_local i32 @ensure_writable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
