; ModuleID = '/home/carl/AnghaBench/ish/tests/manual/extr_qemu-test.c_test_floats.c'
source_filename = "/home/carl/AnghaBench/ish/tests/manual/extr_qemu-test.c_test_floats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@q_nan = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TEST_CMOV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_floats() #0 {
  %1 = call i32 @test_fops(double 2.000000e+00, i32 3)
  %2 = call i32 @test_fops(double 1.400000e+00, i32 -5)
  %3 = call i32 @test_fcmp(double 2.000000e+00, i32 -1)
  %4 = call i32 @test_fcmp(double 2.000000e+00, i32 2)
  %5 = call i32 @test_fcmp(double 2.000000e+00, i32 3)
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @q_nan, i32 0, i32 0), align 4
  %7 = call i32 @test_fcmp(double 2.000000e+00, i32 %6)
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @q_nan, i32 0, i32 0), align 4
  %9 = sitofp i32 %8 to double
  %10 = call i32 @test_fcmp(double %9, i32 -1)
  %11 = call i32 @test_fcmp(double 0xFFF0000000000000, i32 -1)
  %12 = call i32 @test_fcmp(double 0x7FF0000000000000, i32 -1)
  %13 = call i32 @test_fcvt(double 5.000000e-01)
  %14 = call i32 @test_fcvt(double -5.000000e-01)
  %15 = call i32 @test_fcvt(double 0x3FC2492492492492)
  %16 = call i32 @test_fcvt(double 0xBFBC71C71C71C71C)
  %17 = call i32 @test_fcvt(double 3.276800e+04)
  %18 = call i32 @test_fcvt(double -1.000000e+20)
  %19 = call i32 @test_fcvt(double 0xFFF0000000000000)
  %20 = call i32 @test_fcvt(double 0x7FF0000000000000)
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @q_nan, i32 0, i32 0), align 4
  %22 = sitofp i32 %21 to double
  %23 = call i32 @test_fcvt(double %22)
  %24 = call i32 (...) @test_fconst()
  %25 = call i32 @test_fbcd(double 0x43118B54F22AEB00)
  %26 = call i32 @test_fbcd(double 0xC2DC11CEBEF1B480)
  %27 = call i32 (...) @test_fenv()
  %28 = load i64, i64* @TEST_CMOV, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %0
  %31 = call i32 (...) @test_fcmov()
  br label %32

32:                                               ; preds = %30, %0
  ret void
}

declare dso_local i32 @test_fops(double, i32) #1

declare dso_local i32 @test_fcmp(double, i32) #1

declare dso_local i32 @test_fcvt(double) #1

declare dso_local i32 @test_fconst(...) #1

declare dso_local i32 @test_fbcd(double) #1

declare dso_local i32 @test_fenv(...) #1

declare dso_local i32 @test_fcmov(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
