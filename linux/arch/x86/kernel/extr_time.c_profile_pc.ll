; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_time.c_profile_pc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_time.c_profile_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @profile_pc(%struct.pt_regs* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %6 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %7 = call i64 @instruction_pointer(%struct.pt_regs* %6)
  store i64 %7, i64* %4, align 8
  %8 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %9 = call i32 @user_mode(%struct.pt_regs* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %40, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @in_lock_functions(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i64*
  store i64* %19, i64** %5, align 8
  %20 = load i64*, i64** %5, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = lshr i64 %22, 22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load i64*, i64** %5, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %2, align 8
  br label %42

29:                                               ; preds = %15
  %30 = load i64*, i64** %5, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = lshr i64 %32, 22
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i64*, i64** %5, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %2, align 8
  br label %42

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %11, %1
  %41 = load i64, i64* %4, align 8
  store i64 %41, i64* %2, align 8
  br label %42

42:                                               ; preds = %40, %35, %25
  %43 = load i64, i64* %2, align 8
  ret i64 %43
}

declare dso_local i64 @instruction_pointer(%struct.pt_regs*) #1

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i64 @in_lock_functions(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
