; ModuleID = '/home/carl/AnghaBench/ish/tests/manual/extr_qemu-test.c_test_loop.c'
source_filename = "/home/carl/AnghaBench/ish/tests/manual/extr_qemu-test.c_test_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"jecxz\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"loopz\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"loopnz\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_loop() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca [6 x i64], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast [6 x i64]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 48, i1 false)
  %7 = bitcast i8* %6 to [6 x i64]*
  %8 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i32 0, i32 1
  store i64 1, i64* %8, align 8
  %9 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i32 0, i32 2
  store i64 65536, i64* %9, align 16
  %10 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i32 0, i32 3
  store i64 65537, i64* %10, align 8
  %11 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i32 0, i32 4
  store i64 4294967296, i64* %11, align 16
  %12 = getelementptr inbounds [6 x i64], [6 x i64]* %7, i32 0, i32 5
  store i64 4294967297, i64* %12, align 8
  %13 = call i32 @TEST_LOOP(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @TEST_LOOP(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @TEST_LOOP(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %16 = call i32 @TEST_LOOP(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @TEST_LOOP(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
