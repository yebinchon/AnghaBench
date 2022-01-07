; ModuleID = '/home/carl/AnghaBench/ish/tests/manual/extr_qemu-test.c_test_mul.c'
source_filename = "/home/carl/AnghaBench/ish/tests/manual/extr_qemu-test.c_test_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_mul() #0 {
  %1 = call i32 @test_imulb(i32 305419805, i32 4)
  %2 = call i32 @test_imulb(i32 3, i32 -4)
  %3 = call i32 @test_imulb(i32 128, i32 128)
  %4 = call i32 @test_imulb(i32 16, i32 16)
  %5 = call i32 @test_imulw(i32 0, i32 305397789, i32 45)
  %6 = call i32 @test_imulw(i32 0, i32 23, i32 -45)
  %7 = call i32 @test_imulw(i32 0, i32 32768, i32 32768)
  %8 = call i32 @test_imulw(i32 0, i32 256, i32 256)
  %9 = call i32 @test_imull(i32 0, i32 305397789, i32 45)
  %10 = call i32 @test_imull(i32 0, i32 23, i32 -45)
  %11 = call i32 @test_imull(i32 0, i32 -2147483648, i32 -2147483648)
  %12 = call i32 @test_imull(i32 0, i32 65536, i32 65536)
  %13 = call i32 @test_mulb(i32 305419805, i32 4)
  %14 = call i32 @test_mulb(i32 3, i32 -4)
  %15 = call i32 @test_mulb(i32 128, i32 128)
  %16 = call i32 @test_mulb(i32 16, i32 16)
  %17 = call i32 @test_mulw(i32 0, i32 305397789, i32 45)
  %18 = call i32 @test_mulw(i32 0, i32 23, i32 -45)
  %19 = call i32 @test_mulw(i32 0, i32 32768, i32 32768)
  %20 = call i32 @test_mulw(i32 0, i32 256, i32 256)
  %21 = call i32 @test_mull(i32 0, i32 305397789, i32 45)
  %22 = call i32 @test_mull(i32 0, i32 23, i32 -45)
  %23 = call i32 @test_mull(i32 0, i32 -2147483648, i32 -2147483648)
  %24 = call i32 @test_mull(i32 0, i32 65536, i32 65536)
  %25 = call i32 @test_imulw2(i32 305397789, i32 45)
  %26 = call i32 @test_imulw2(i32 23, i32 -45)
  %27 = call i32 @test_imulw2(i32 32768, i32 32768)
  %28 = call i32 @test_imulw2(i32 256, i32 256)
  %29 = call i32 @test_imull2(i32 305397789, i32 45)
  %30 = call i32 @test_imull2(i32 23, i32 -45)
  %31 = call i32 @test_imull2(i32 -2147483648, i32 -2147483648)
  %32 = call i32 @test_imull2(i32 65536, i32 65536)
  %33 = call i32 @TEST_IMUL_IM(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 45, i32 4660)
  %34 = call i32 @TEST_IMUL_IM(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 -45, i32 23)
  %35 = call i32 @TEST_IMUL_IM(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 32768, i32 -2147483648)
  %36 = call i32 @TEST_IMUL_IM(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 32767, i32 4096)
  %37 = call i32 @TEST_IMUL_IM(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 45, i32 4660)
  %38 = call i32 @TEST_IMUL_IM(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 -45, i32 23)
  %39 = call i32 @TEST_IMUL_IM(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 32768, i32 -2147483648)
  %40 = call i32 @TEST_IMUL_IM(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 32767, i32 4096)
  %41 = call i32 @test_idivb(i32 305403512, i32 4734)
  %42 = call i32 @test_idivb(i32 1126236451, i32 -5)
  %43 = call i32 @test_idivb(i32 305397764, i32 -1)
  %44 = call i32 @test_idivw(i32 0, i32 305419896, i32 12347)
  %45 = call i32 @test_idivw(i32 0, i32 -23223, i32 -45)
  %46 = call i32 @test_idivw(i32 0, i32 305430528, i32 -1)
  %47 = call i32 @test_idivw(i32 74563, i32 305419896, i32 -2128378521)
  %48 = call i32 @test_idivl(i32 0, i32 305419896, i32 12347)
  %49 = call i32 @test_idivl(i32 0, i32 -233223, i32 -45)
  %50 = call i32 @test_idivl(i32 0, i32 -2147483648, i32 -1)
  %51 = call i32 @test_idivl(i32 74563, i32 305419896, i32 -2128394905)
  %52 = call i32 @test_divb(i32 305403512, i32 4734)
  %53 = call i32 @test_divb(i32 1126236451, i32 -5)
  %54 = call i32 @test_divb(i32 305397764, i32 -1)
  %55 = call i32 @test_divw(i32 0, i32 305419896, i32 12347)
  %56 = call i32 @test_divw(i32 0, i32 -23223, i32 -45)
  %57 = call i32 @test_divw(i32 0, i32 305430528, i32 -1)
  %58 = call i32 @test_divw(i32 74563, i32 305419896, i32 -2128378521)
  %59 = call i32 @test_divl(i32 0, i32 305419896, i32 12347)
  %60 = call i32 @test_divl(i32 0, i32 -233223, i32 -45)
  %61 = call i32 @test_divl(i32 0, i32 -2147483648, i32 -1)
  %62 = call i32 @test_divl(i32 74563, i32 305419896, i32 -2128394905)
  %63 = call i32 @test_imulq(i32 0, i32 305397789, i32 45)
  %64 = call i32 @test_imulq(i32 0, i32 23, i32 -45)
  %65 = call i32 @test_imulq(i32 0, i32 0, i32 0)
  %66 = call i32 @test_imulq(i32 0, i32 0, i32 0)
  %67 = call i32 @test_mulq(i32 0, i32 305397789, i32 45)
  %68 = call i32 @test_mulq(i32 0, i32 23, i32 -45)
  %69 = call i32 @test_mulq(i32 0, i32 0, i32 0)
  %70 = call i32 @test_mulq(i32 0, i32 0, i32 0)
  %71 = call i32 @test_imulq2(i32 305397789, i32 45)
  %72 = call i32 @test_imulq2(i32 23, i32 -45)
  %73 = call i32 @test_imulq2(i32 0, i32 0)
  %74 = call i32 @test_imulq2(i32 0, i32 0)
  %75 = call i32 @TEST_IMUL_IM(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 45, i32 305402420)
  %76 = call i32 @TEST_IMUL_IM(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 -45, i32 23)
  %77 = call i32 @TEST_IMUL_IM(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 32768, i32 0)
  %78 = call i32 @TEST_IMUL_IM(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32 32767, i32 268435456)
  %79 = call i32 @test_idivq(i32 0, i32 2024525295, i32 12347)
  %80 = call i32 @test_idivq(i32 0, i32 -233223, i32 -45)
  %81 = call i32 @test_idivq(i32 0, i32 0, i32 -1)
  %82 = call i32 @test_idivq(i32 74563, i32 305419896, i32 -2128394905)
  %83 = call i32 @test_divq(i32 0, i32 2024525295, i32 12347)
  %84 = call i32 @test_divq(i32 0, i32 -233223, i32 -45)
  %85 = call i32 @test_divq(i32 0, i32 0, i32 -1)
  %86 = call i32 @test_divq(i32 74563, i32 305419896, i32 -2128394905)
  ret void
}

declare dso_local i32 @test_imulb(i32, i32) #1

declare dso_local i32 @test_imulw(i32, i32, i32) #1

declare dso_local i32 @test_imull(i32, i32, i32) #1

declare dso_local i32 @test_mulb(i32, i32) #1

declare dso_local i32 @test_mulw(i32, i32, i32) #1

declare dso_local i32 @test_mull(i32, i32, i32) #1

declare dso_local i32 @test_imulw2(i32, i32) #1

declare dso_local i32 @test_imull2(i32, i32) #1

declare dso_local i32 @TEST_IMUL_IM(i8*, i8*, i32, i32) #1

declare dso_local i32 @test_idivb(i32, i32) #1

declare dso_local i32 @test_idivw(i32, i32, i32) #1

declare dso_local i32 @test_idivl(i32, i32, i32) #1

declare dso_local i32 @test_divb(i32, i32) #1

declare dso_local i32 @test_divw(i32, i32, i32) #1

declare dso_local i32 @test_divl(i32, i32, i32) #1

declare dso_local i32 @test_imulq(i32, i32, i32) #1

declare dso_local i32 @test_mulq(i32, i32, i32) #1

declare dso_local i32 @test_imulq2(i32, i32) #1

declare dso_local i32 @test_idivq(i32, i32, i32) #1

declare dso_local i32 @test_divq(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
