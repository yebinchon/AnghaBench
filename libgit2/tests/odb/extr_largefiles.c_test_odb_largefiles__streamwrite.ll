; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/extr_largefiles.c_test_odb_largefiles__streamwrite.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/extr_largefiles.c_test_odb_largefiles__streamwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"GITTEST_INVASIVE_FS_SIZE\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"GITTEST_SLOW\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"3fb56989cca483b21ba7cb0a6edb229d10e1c26c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_odb_largefiles__streamwrite() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @cl_skip()
  %4 = call i32 @cl_is_env_set(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = call i32 @cl_is_env_set(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6, %0
  %10 = call i32 (...) @cl_skip()
  br label %11

11:                                               ; preds = %9, %6
  %12 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %13 = call i32 @writefile(i32* %2)
  %14 = call i32 @cl_assert_equal_oid(i32* %1, i32* %2)
  ret void
}

declare dso_local i32 @cl_skip(...) #1

declare dso_local i32 @cl_is_env_set(i8*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @writefile(i32*) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
