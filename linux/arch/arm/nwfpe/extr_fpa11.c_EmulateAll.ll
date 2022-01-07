; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_fpa11.c_EmulateAll.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_fpa11.c_EmulateAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EmulateAll(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 3840
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 256
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 512
  br i1 %11, label %12, label %35

12:                                               ; preds = %9, %1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 234881024
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 234881024
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 16
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @EmulateCPRT(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %36

24:                                               ; preds = %17
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @EmulateCPDO(i32 %25)
  store i32 %26, i32* %2, align 4
  br label %36

27:                                               ; preds = %12
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 201326592
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @EmulateCPDT(i32 %31)
  store i32 %32, i32* %2, align 4
  br label %36

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %34, %9
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %30, %24, %21
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @EmulateCPRT(i32) #1

declare dso_local i32 @EmulateCPDO(i32) #1

declare dso_local i32 @EmulateCPDT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
