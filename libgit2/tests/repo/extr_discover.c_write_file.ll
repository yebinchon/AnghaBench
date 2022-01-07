; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_discover.c_write_file.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_discover.c_write_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @write_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_file(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @git_path_exists(i8* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @p_unlink(i8* %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  br label %14

14:                                               ; preds = %10, %2
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @git_futils_creat_withpath(i8* %15, i32 511, i32 438)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp sge i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @cl_assert(i32 %19)
  %21 = load i64, i64* %5, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 1
  %27 = trunc i64 %26 to i32
  %28 = call i32 @p_write(i64 %21, i8* %22, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @p_close(i64 %29)
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @cl_git_pass(i32 %31)
  ret void
}

declare dso_local i64 @git_path_exists(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @p_unlink(i8*) #1

declare dso_local i64 @git_futils_creat_withpath(i8*, i32, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @p_write(i64, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @p_close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
