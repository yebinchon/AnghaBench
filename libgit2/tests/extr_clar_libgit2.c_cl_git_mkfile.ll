; ModuleID = '/home/carl/AnghaBench/libgit2/tests/extr_clar_libgit2.c_cl_git_mkfile.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/extr_clar_libgit2.c_cl_git_mkfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cl_git_mkfile(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @p_creat(i8* %6, i32 438)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, -1
  %10 = zext i1 %9 to i32
  %11 = call i32 @cl_assert(i32 %10)
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = call i32 @p_write(i32 %15, i8* %16, i32 %18)
  %20 = call i32 @cl_must_pass(i32 %19)
  br label %31

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = call i32 @p_write(i32 %22, i8* %23, i32 %25)
  %27 = call i32 @cl_must_pass(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @p_write(i32 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %30 = call i32 @cl_must_pass(i32 %29)
  br label %31

31:                                               ; preds = %21, %14
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @p_close(i32 %32)
  %34 = call i32 @cl_must_pass(i32 %33)
  ret void
}

declare dso_local i32 @p_creat(i8*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @cl_must_pass(i32) #1

declare dso_local i32 @p_write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @p_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
