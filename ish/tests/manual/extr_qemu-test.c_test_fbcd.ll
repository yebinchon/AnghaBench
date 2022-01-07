; ModuleID = '/home/carl/AnghaBench/ish/tests/manual/extr_qemu-test.c_test_fbcd.c'
source_filename = "/home/carl/AnghaBench/ish/tests/manual/extr_qemu-test.c_test_fbcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"a=%f bcd=%04x%04x%04x%04x%04x b=%f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_fbcd(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca [5 x i16], align 2
  %4 = alloca double, align 8
  store double %0, double* %2, align 8
  %5 = getelementptr inbounds [5 x i16], [5 x i16]* %3, i64 0, i64 0
  %6 = load double, double* %2, align 8
  call void asm "fbstp $0", "=*m,{st},~{st},~{dirflag},~{fpsr},~{flags}"(i16* %5, double %6) #2, !srcloc !2
  %7 = getelementptr inbounds [5 x i16], [5 x i16]* %3, i64 0, i64 0
  %8 = call double asm "fbld $1", "={st},*m,~{dirflag},~{fpsr},~{flags}"(i16* %7) #3, !srcloc !3
  store double %8, double* %4, align 8
  %9 = load double, double* %2, align 8
  %10 = getelementptr inbounds [5 x i16], [5 x i16]* %3, i64 0, i64 4
  %11 = load i16, i16* %10, align 2
  %12 = getelementptr inbounds [5 x i16], [5 x i16]* %3, i64 0, i64 3
  %13 = load i16, i16* %12, align 2
  %14 = getelementptr inbounds [5 x i16], [5 x i16]* %3, i64 0, i64 2
  %15 = load i16, i16* %14, align 2
  %16 = getelementptr inbounds [5 x i16], [5 x i16]* %3, i64 0, i64 1
  %17 = load i16, i16* %16, align 2
  %18 = getelementptr inbounds [5 x i16], [5 x i16]* %3, i64 0, i64 0
  %19 = load i16, i16* %18, align 2
  %20 = load double, double* %4, align 8
  %21 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), double %9, i16 zeroext %11, i16 zeroext %13, i16 zeroext %15, i16 zeroext %17, i16 zeroext %19, double %20)
  ret void
}

declare dso_local i32 @printf(i8*, double, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, i16 zeroext, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 322}
!3 = !{i32 376}
