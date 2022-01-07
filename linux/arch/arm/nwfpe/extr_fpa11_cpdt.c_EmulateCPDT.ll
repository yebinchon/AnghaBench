; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_fpa11_cpdt.c_EmulateCPDT.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_fpa11_cpdt.c_EmulateCPDT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EmulateCPDT(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i64 @LDF_OP(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @PerformLDF(i32 %8)
  store i32 %9, i32* %3, align 4
  br label %35

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @LFM_OP(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @PerformLFM(i32 %15)
  store i32 %16, i32* %3, align 4
  br label %34

17:                                               ; preds = %10
  %18 = load i32, i32* %2, align 4
  %19 = call i64 @STF_OP(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @PerformSTF(i32 %22)
  store i32 %23, i32* %3, align 4
  br label %33

24:                                               ; preds = %17
  %25 = load i32, i32* %2, align 4
  %26 = call i64 @SFM_OP(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @PerformSFM(i32 %29)
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %28
  br label %33

33:                                               ; preds = %32, %21
  br label %34

34:                                               ; preds = %33, %14
  br label %35

35:                                               ; preds = %34, %7
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @LDF_OP(i32) #1

declare dso_local i32 @PerformLDF(i32) #1

declare dso_local i64 @LFM_OP(i32) #1

declare dso_local i32 @PerformLFM(i32) #1

declare dso_local i64 @STF_OP(i32) #1

declare dso_local i32 @PerformSTF(i32) #1

declare dso_local i64 @SFM_OP(i32) #1

declare dso_local i32 @PerformSFM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
