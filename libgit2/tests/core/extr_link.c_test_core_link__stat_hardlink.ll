; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_link.c_test_core_link__stat_hardlink.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_link.c_test_core_link__stat_hardlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"stat_hardlink1\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"This file has many names!\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"stat_hardlink2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_link__stat_hardlink() #0 {
  %1 = alloca %struct.stat, align 4
  %2 = call i32 (...) @should_run()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = call i32 (...) @clar__skip()
  br label %6

6:                                                ; preds = %4, %0
  %7 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 @do_hardlink(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %9 = call i32 @p_stat(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.stat* %1)
  %10 = call i32 @cl_must_pass(i32 %9)
  %11 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @S_ISREG(i32 %12)
  %14 = call i32 @cl_assert(i32 %13)
  %15 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @cl_assert_equal_i(i32 26, i32 %16)
  %18 = call i32 @p_stat(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.stat* %1)
  %19 = call i32 @cl_must_pass(i32 %18)
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @S_ISREG(i32 %21)
  %23 = call i32 @cl_assert(i32 %22)
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @cl_assert_equal_i(i32 26, i32 %25)
  ret void
}

declare dso_local i32 @should_run(...) #1

declare dso_local i32 @clar__skip(...) #1

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #1

declare dso_local i32 @do_hardlink(i8*, i8*) #1

declare dso_local i32 @cl_must_pass(i32) #1

declare dso_local i32 @p_stat(i8*, %struct.stat*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
