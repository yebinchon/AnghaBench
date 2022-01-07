; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_string.c_test_lib__common__string_c.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_string.c_test_lib__common__string_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"strstr\00", align 1
@test_strstr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"stripws\00", align 1
@test_stripws = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"get_filext\00", align 1
@test_get_filext = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"next_token\00", align 1
@test_next_token = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"next_token2\00", align 1
@test_next_token2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"next_token3\00", align 1
@test_next_token3 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"decode_base64\00", align 1
@test_decode_base64 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"htmlescape\00", align 1
@test_htmlescape = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"uri_escape\00", align 1
@test_uri_escape = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"at_position\00", align 1
@test_at_position = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_lib__common__string_c() #0 {
  %1 = load i32, i32* @test_strstr, align 4
  %2 = call i32 @subtest(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %1)
  %3 = load i32, i32* @test_stripws, align 4
  %4 = call i32 @subtest(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* @test_get_filext, align 4
  %6 = call i32 @subtest(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @test_next_token, align 4
  %8 = call i32 @subtest(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @test_next_token2, align 4
  %10 = call i32 @subtest(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @test_next_token3, align 4
  %12 = call i32 @subtest(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @test_decode_base64, align 4
  %14 = call i32 @subtest(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @test_htmlescape, align 4
  %16 = call i32 @subtest(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @test_uri_escape, align 4
  %18 = call i32 @subtest(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @test_at_position, align 4
  %20 = call i32 @subtest(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %19)
  ret void
}

declare dso_local i32 @subtest(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
