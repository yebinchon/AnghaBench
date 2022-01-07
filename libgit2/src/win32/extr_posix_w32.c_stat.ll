; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_posix_w32.c_stat.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_posix_w32.c_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p_stat(i8* %0, %struct.stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.stat* %1, %struct.stat** %5, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @git_win32_path_from_utf8(i32 %8, i8* %9)
  store i32 %10, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.stat*, %struct.stat** %5, align 8
  %15 = call i64 @lstat_w(i32 %13, %struct.stat* %14, i32 0)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %2
  store i32 -1, i32* %3, align 4
  br label %29

18:                                               ; preds = %12
  %19 = load %struct.stat*, %struct.stat** %5, align 8
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @S_ISLNK(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.stat*, %struct.stat** %5, align 8
  %27 = call i32 @follow_and_lstat_link(i32 %25, %struct.stat* %26)
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %24, %17
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @git_win32_path_from_utf8(i32, i8*) #1

declare dso_local i64 @lstat_w(i32, %struct.stat*, i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @follow_and_lstat_link(i32, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
