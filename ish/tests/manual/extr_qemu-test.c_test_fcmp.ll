; ModuleID = '/home/carl/AnghaBench/ish/tests/manual/extr_qemu-test.c_test_fcmp.c'
source_filename = "/home/carl/AnghaBench/ish/tests/manual/extr_qemu-test.c_test_fcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"fcom(%f %f)=%04lx\0A\00", align 1
@FPUS_EMASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"fucom(%f %f)=%04lx\0A\00", align 1
@TEST_FCOMI = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"fcomi(%f %f)=%04lx %02lx\0A\00", align 1
@CC_Z = common dso_local global i64 0, align 8
@CC_P = common dso_local global i64 0, align 8
@CC_C = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"fucomi(%f %f)=%04lx %02lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"fxam(%f)=%04lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_fcmp(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %7 = call i32 (...) @fpu_clear_exceptions()
  %8 = load double, double* %3, align 8
  %9 = load double, double* %4, align 8
  %10 = call i64 asm "fcom $2\0Afstsw %ax\0A", "={ax},{st},{st(1)},~{dirflag},~{fpsr},~{flags}"(double %8, double %9) #2, !srcloc !2
  store i64 %10, i64* %6, align 8
  %11 = load double, double* %3, align 8
  %12 = load double, double* %4, align 8
  %13 = fptosi double %12 to i64
  %14 = load i64, i64* %6, align 8
  %15 = load i32, i32* @FPUS_EMASK, align 4
  %16 = or i32 17664, %15
  %17 = sext i32 %16 to i64
  %18 = and i64 %14, %17
  %19 = call i32 (i8*, double, i64, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), double %11, i64 %13, i64 %18)
  %20 = call i32 (...) @fpu_clear_exceptions()
  %21 = load double, double* %3, align 8
  %22 = load double, double* %4, align 8
  %23 = call i64 asm "fucom $2\0Afstsw %ax\0A", "={ax},{st},{st(1)},~{dirflag},~{fpsr},~{flags}"(double %21, double %22) #2, !srcloc !3
  store i64 %23, i64* %6, align 8
  %24 = load double, double* %3, align 8
  %25 = load double, double* %4, align 8
  %26 = fptosi double %25 to i64
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* @FPUS_EMASK, align 4
  %29 = or i32 17664, %28
  %30 = sext i32 %29 to i64
  %31 = and i64 %27, %30
  %32 = call i32 (i8*, double, i64, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), double %24, i64 %26, i64 %31)
  %33 = load i64, i64* @TEST_FCOMI, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %78

35:                                               ; preds = %2
  %36 = call i32 (...) @fpu_clear_exceptions()
  %37 = load double, double* %3, align 8
  %38 = load double, double* %4, align 8
  %39 = call { i64, i64 } asm "fcomi $3, $2\0Afstsw %ax\0Apushf\0Apop $0\0A", "=r,={ax},{st},{st(1)},~{dirflag},~{fpsr},~{flags}"(double %37, double %38) #2, !srcloc !4
  %40 = extractvalue { i64, i64 } %39, 0
  %41 = extractvalue { i64, i64 } %39, 1
  store i64 %40, i64* %5, align 8
  store i64 %41, i64* %6, align 8
  %42 = load double, double* %3, align 8
  %43 = load double, double* %4, align 8
  %44 = fptosi double %43 to i64
  %45 = load i64, i64* %6, align 8
  %46 = load i32, i32* @FPUS_EMASK, align 4
  %47 = sext i32 %46 to i64
  %48 = and i64 %45, %47
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @CC_Z, align 8
  %51 = load i64, i64* @CC_P, align 8
  %52 = or i64 %50, %51
  %53 = load i64, i64* @CC_C, align 8
  %54 = or i64 %52, %53
  %55 = and i64 %49, %54
  %56 = call i32 (i8*, double, i64, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), double %42, i64 %44, i64 %48, i64 %55)
  %57 = call i32 (...) @fpu_clear_exceptions()
  %58 = load double, double* %3, align 8
  %59 = load double, double* %4, align 8
  %60 = call { i64, i64 } asm "fucomi $3, $2\0Afstsw %ax\0Apushf\0Apop $0\0A", "=r,={ax},{st},{st(1)},~{dirflag},~{fpsr},~{flags}"(double %58, double %59) #2, !srcloc !5
  %61 = extractvalue { i64, i64 } %60, 0
  %62 = extractvalue { i64, i64 } %60, 1
  store i64 %61, i64* %5, align 8
  store i64 %62, i64* %6, align 8
  %63 = load double, double* %3, align 8
  %64 = load double, double* %4, align 8
  %65 = fptosi double %64 to i64
  %66 = load i64, i64* %6, align 8
  %67 = load i32, i32* @FPUS_EMASK, align 4
  %68 = sext i32 %67 to i64
  %69 = and i64 %66, %68
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* @CC_Z, align 8
  %72 = load i64, i64* @CC_P, align 8
  %73 = or i64 %71, %72
  %74 = load i64, i64* @CC_C, align 8
  %75 = or i64 %73, %74
  %76 = and i64 %70, %75
  %77 = call i32 (i8*, double, i64, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), double %63, i64 %65, i64 %69, i64 %76)
  br label %78

78:                                               ; preds = %35, %2
  %79 = call i32 (...) @fpu_clear_exceptions()
  %80 = load double, double* %3, align 8
  %81 = call i64 asm sideeffect "fxam\0Afstsw %ax\0A", "={ax},{st},~{dirflag},~{fpsr},~{flags}"(double %80) #3, !srcloc !6
  store i64 %81, i64* %6, align 8
  %82 = load double, double* %3, align 8
  %83 = load i64, i64* %6, align 8
  %84 = and i64 %83, 18176
  %85 = call i32 (i8*, double, i64, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), double %82, i64 %84)
  %86 = call i32 (...) @fpu_clear_exceptions()
  ret void
}

declare dso_local i32 @fpu_clear_exceptions(...) #1

declare dso_local i32 @printf(i8*, double, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 382, i32 403}
!3 = !{i32 586, i32 608}
!4 = !{i32 823, i32 853, i32 880, i32 902}
!5 = !{i32 1147, i32 1178, i32 1205, i32 1227}
!6 = !{i32 1480, i32 1507}
