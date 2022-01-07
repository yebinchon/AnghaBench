; ModuleID = '/home/carl/AnghaBench/ish/emu/extr_float80-test.c_main.c'
source_filename = "/home/carl/AnghaBench/ish/emu/extr_float80-test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"%d/%d passed (%.0f%%)\00", align 1
@tests_passed = common dso_local global i32 0, align 4
@tests_total = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (...) @test_int_convert()
  %3 = call i32 (...) @test_double_convert()
  %4 = call i32 (...) @test_math()
  %5 = call i32 (...) @test_compare()
  %6 = load i32, i32* @tests_passed, align 4
  %7 = load double, double* @tests_total, align 8
  %8 = load i32, i32* @tests_passed, align 4
  %9 = sitofp i32 %8 to double
  %10 = load double, double* @tests_total, align 8
  %11 = fdiv double %9, %10
  %12 = fmul double %11, 1.000000e+02
  %13 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %6, double %7, double %12)
  %14 = load i32, i32* @tests_passed, align 4
  %15 = sitofp i32 %14 to double
  %16 = load double, double* @tests_total, align 8
  %17 = fcmp oeq double %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 0, i32 1
  ret i32 %19
}

declare dso_local i32 @test_int_convert(...) #1

declare dso_local i32 @test_double_convert(...) #1

declare dso_local i32 @test_math(...) #1

declare dso_local i32 @test_compare(...) #1

declare dso_local i32 @printf(i8*, i32, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
