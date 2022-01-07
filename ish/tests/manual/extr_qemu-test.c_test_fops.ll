; ModuleID = '/home/carl/AnghaBench/ish/tests/manual/extr_qemu-test.c_test_fops.c'
source_filename = "/home/carl/AnghaBench/ish/tests/manual/extr_qemu-test.c_test_fops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"a=%f b=%f a+b=%f\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"a=%f b=%f a-b=%f\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"a=%f b=%f a*b=%f\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"a=%f b=%f a/b=%f\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"a=%f b=%f fmod(a, b)=%f\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"a=%f sqrt(a)=%f\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"a=%f sin(a)=%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"a=%f cos(a)=%f\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"a=%f tan(a)=%f\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"a=%f log(a)=%f\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"a=%f exp(a)=%f\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"a=%f b=%f atan2(a, b)=%f\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"a=%f asin(sin(a))=%f\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"a=%f acos(cos(a))=%f\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"a=%f atan(tan(a))=%f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_fops(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %3, align 8
  %6 = load double, double* %4, align 8
  %7 = load double, double* %3, align 8
  %8 = load double, double* %4, align 8
  %9 = fadd double %7, %8
  %10 = call i32 (i8*, double, double, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), double %5, double %6, double %9)
  %11 = load double, double* %3, align 8
  %12 = load double, double* %4, align 8
  %13 = load double, double* %3, align 8
  %14 = load double, double* %4, align 8
  %15 = fsub double %13, %14
  %16 = call i32 (i8*, double, double, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), double %11, double %12, double %15)
  %17 = load double, double* %3, align 8
  %18 = load double, double* %4, align 8
  %19 = load double, double* %3, align 8
  %20 = load double, double* %4, align 8
  %21 = fmul double %19, %20
  %22 = call i32 (i8*, double, double, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), double %17, double %18, double %21)
  %23 = load double, double* %3, align 8
  %24 = load double, double* %4, align 8
  %25 = load double, double* %3, align 8
  %26 = load double, double* %4, align 8
  %27 = fdiv double %25, %26
  %28 = call i32 (i8*, double, double, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), double %23, double %24, double %27)
  %29 = load double, double* %3, align 8
  %30 = load double, double* %4, align 8
  %31 = load double, double* %3, align 8
  %32 = load double, double* %4, align 8
  %33 = call double @fmod(double %31, double %32) #3
  %34 = call i32 (i8*, double, double, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), double %29, double %30, double %33)
  %35 = load double, double* %3, align 8
  %36 = load double, double* %3, align 8
  %37 = call double @sqrt(double %36) #3
  %38 = call i32 (i8*, double, double, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), double %35, double %37)
  %39 = load double, double* %3, align 8
  %40 = load double, double* %3, align 8
  %41 = call double @sin(double %40) #3
  %42 = call i32 (i8*, double, double, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), double %39, double %41)
  %43 = load double, double* %3, align 8
  %44 = load double, double* %3, align 8
  %45 = call double @cos(double %44) #3
  %46 = call i32 (i8*, double, double, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), double %43, double %45)
  %47 = load double, double* %3, align 8
  %48 = load double, double* %3, align 8
  %49 = call double @tan(double %48) #3
  %50 = call i32 (i8*, double, double, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), double %47, double %49)
  %51 = load double, double* %3, align 8
  %52 = load double, double* %3, align 8
  %53 = call double @log(double %52) #3
  %54 = call i32 (i8*, double, double, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), double %51, double %53)
  %55 = load double, double* %3, align 8
  %56 = load double, double* %3, align 8
  %57 = call double @exp(double %56) #3
  %58 = call i32 (i8*, double, double, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), double %55, double %57)
  %59 = load double, double* %3, align 8
  %60 = load double, double* %4, align 8
  %61 = load double, double* %3, align 8
  %62 = load double, double* %4, align 8
  %63 = call double @atan2(double %61, double %62) #3
  %64 = call i32 (i8*, double, double, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), double %59, double %60, double %63)
  %65 = load double, double* %3, align 8
  %66 = load double, double* %3, align 8
  %67 = call double @sin(double %66) #3
  %68 = call double @asin(double %67) #3
  %69 = call i32 (i8*, double, double, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), double %65, double %68)
  %70 = load double, double* %3, align 8
  %71 = load double, double* %3, align 8
  %72 = call double @cos(double %71) #3
  %73 = call double @acos(double %72) #3
  %74 = call i32 (i8*, double, double, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), double %70, double %73)
  %75 = load double, double* %3, align 8
  %76 = load double, double* %3, align 8
  %77 = call double @tan(double %76) #3
  %78 = call double @atan(double %77) #3
  %79 = call i32 (i8*, double, double, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), double %75, double %78)
  ret void
}

declare dso_local i32 @printf(i8*, double, double, ...) #1

; Function Attrs: nounwind
declare dso_local double @fmod(double, double) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: nounwind
declare dso_local double @sin(double) #2

; Function Attrs: nounwind
declare dso_local double @cos(double) #2

; Function Attrs: nounwind
declare dso_local double @tan(double) #2

; Function Attrs: nounwind
declare dso_local double @log(double) #2

; Function Attrs: nounwind
declare dso_local double @exp(double) #2

; Function Attrs: nounwind
declare dso_local double @atan2(double, double) #2

; Function Attrs: nounwind
declare dso_local double @asin(double) #2

; Function Attrs: nounwind
declare dso_local double @acos(double) #2

; Function Attrs: nounwind
declare dso_local double @atan(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
