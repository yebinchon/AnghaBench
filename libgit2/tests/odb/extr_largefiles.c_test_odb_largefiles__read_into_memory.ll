; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/extr_largefiles.c_test_odb_largefiles__read_into_memory.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/extr_largefiles.c_test_odb_largefiles__read_into_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"GITTEST_INVASIVE_FS_SIZE\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"GITTEST_INVASIVE_MEMORY\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"GITTEST_SLOW\00", align 1
@odb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_odb_largefiles__read_into_memory() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = call i32 (...) @cl_skip()
  %4 = call i32 @cl_is_env_set(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = call i32 @cl_is_env_set(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = call i32 @cl_is_env_set(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9, %6, %0
  %13 = call i32 (...) @cl_skip()
  br label %14

14:                                               ; preds = %12, %9
  %15 = call i32 @writefile(i32* %1)
  %16 = load i32, i32* @odb, align 4
  %17 = call i32 @git_odb_read(i32** %2, i32 %16, i32* %1)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @git_odb_object_free(i32* %19)
  ret void
}

declare dso_local i32 @cl_skip(...) #1

declare dso_local i32 @cl_is_env_set(i8*) #1

declare dso_local i32 @writefile(i32*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_odb_read(i32**, i32, i32*) #1

declare dso_local i32 @git_odb_object_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
