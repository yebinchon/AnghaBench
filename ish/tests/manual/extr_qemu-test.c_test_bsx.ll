; ModuleID = '/home/carl/AnghaBench/ish/tests/manual/extr_qemu-test.c_test_bsx.c'
source_filename = "/home/carl/AnghaBench/ish/tests/manual/extr_qemu-test.c_test_bsx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bsrw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@bsfw = common dso_local global i32 0, align 4
@bsrl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@bsfl = common dso_local global i32 0, align 4
@bsrq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@bsfq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_bsx() #0 {
  %1 = load i32, i32* @bsrw, align 4
  %2 = call i32 @TEST_BSX(i32 %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0)
  %3 = load i32, i32* @bsrw, align 4
  %4 = call i32 @TEST_BSX(i32 %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 305398056)
  %5 = load i32, i32* @bsfw, align 4
  %6 = call i32 @TEST_BSX(i32 %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0)
  %7 = load i32, i32* @bsfw, align 4
  %8 = call i32 @TEST_BSX(i32 %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 305398056)
  %9 = load i32, i32* @bsrl, align 4
  %10 = call i32 @TEST_BSX(i32 %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %11 = load i32, i32* @bsrl, align 4
  %12 = call i32 @TEST_BSX(i32 %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 3408168)
  %13 = load i32, i32* @bsfl, align 4
  %14 = call i32 @TEST_BSX(i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %15 = load i32, i32* @bsfl, align 4
  %16 = call i32 @TEST_BSX(i32 %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 3408168)
  %17 = load i32, i32* @bsrq, align 4
  %18 = call i32 @TEST_BSX(i32 %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %19 = load i32, i32* @bsrq, align 4
  %20 = call i32 @TEST_BSX(i32 %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 19403316)
  %21 = load i32, i32* @bsfq, align 4
  %22 = call i32 @TEST_BSX(i32 %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %23 = load i32, i32* @bsfq, align 4
  %24 = call i32 @TEST_BSX(i32 %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 19403316)
  ret void
}

declare dso_local i32 @TEST_BSX(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
