; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_write.c_test_config_write__delete_inexistent.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_write.c_test_config_write__delete_inexistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"config9\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"core.imaginary\00", align 1
@GIT_ENOTFOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_write__delete_inexistent() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 @git_config_open_ondisk(i32** %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @cl_git_pass(i32 %2)
  %4 = load i32*, i32** %1, align 8
  %5 = call i64 @git_config_delete_entry(i32* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i64, i64* @GIT_ENOTFOUND, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @cl_assert(i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @git_config_free(i32* %10)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_config_open_ondisk(i32**, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_config_delete_entry(i32*, i8*) #1

declare dso_local i32 @git_config_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
