; ModuleID = '/home/carl/AnghaBench/libgit2/tests/filter/extr_query.c_test_filter_query__filters.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/filter/extr_query.c_test_filter_query__filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"text.txt\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"crlf\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"binary.bin\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"foo.lf\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ident\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"id.ident\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"id.binident\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_filter_query__filters() #0 {
  %1 = call i32 @filter_for(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %2 = call i32 @cl_assert_equal_i(i32 1, i32 %1)
  %3 = call i32 @filter_for(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 @cl_assert_equal_i(i32 0, i32 %3)
  %5 = call i32 @filter_for(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @cl_assert_equal_i(i32 1, i32 %5)
  %7 = call i32 @filter_for(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %8 = call i32 @cl_assert_equal_i(i32 0, i32 %7)
  %9 = call i32 @filter_for(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 @cl_assert_equal_i(i32 1, i32 %9)
  %11 = call i32 @filter_for(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %12 = call i32 @cl_assert_equal_i(i32 1, i32 %11)
  %13 = call i32 @filter_for(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @cl_assert_equal_i(i32 0, i32 %13)
  %15 = call i32 @filter_for(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %16 = call i32 @cl_assert_equal_i(i32 1, i32 %15)
  ret void
}

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @filter_for(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
