; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_path.c_test_core_path__09_percent_decode.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_path.c_test_core_path__09_percent_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"abcd\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"a2%\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"a2%3\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"a2%%3\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"a2%3z\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"a,\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"a%2c\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"a21\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"a2%31\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"a2%1\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"a2%%31\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"a bc \00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"a%20bc%20\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Vicent Mart\ED\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Vicent%20Mart%ED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_path__09_percent_decode() #0 {
  %1 = call i32 @check_percent_decoding(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @check_percent_decoding(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @check_percent_decoding(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 @check_percent_decoding(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %5 = call i32 @check_percent_decoding(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %6 = call i32 @check_percent_decoding(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %7 = call i32 @check_percent_decoding(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %8 = call i32 @check_percent_decoding(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %9 = call i32 @check_percent_decoding(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %10 = call i32 @check_percent_decoding(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  ret void
}

declare dso_local i32 @check_percent_decoding(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
