; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_backtrace.c_op_powerpc_backtrace.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/oprofile/extr_backtrace.c_op_powerpc_backtrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @op_powerpc_backtrace(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %8 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 1
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  store i32 1, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = add i32 %12, 1
  store i32 %13, i32* %4, align 4
  %14 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %15 = call i32 @user_mode(%struct.pt_regs* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %29, %17
  %19 = load i32, i32* %4, align 4
  %20 = add i32 %19, -1
  store i32 %20, i32* %4, align 4
  %21 = icmp ne i32 %19, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @kernel_getsp(i64 %23, i32 %24)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %30

29:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %18

30:                                               ; preds = %28, %18
  br label %47

31:                                               ; preds = %2
  %32 = call i32 (...) @pagefault_disable()
  br label %33

33:                                               ; preds = %44, %31
  %34 = load i32, i32* %4, align 4
  %35 = add i32 %34, -1
  store i32 %35, i32* %4, align 4
  %36 = icmp ne i32 %34, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i64, i64* %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @user_getsp32(i64 %38, i32 %39)
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  br label %45

44:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %33

45:                                               ; preds = %43, %33
  %46 = call i32 (...) @pagefault_enable()
  br label %47

47:                                               ; preds = %45, %30
  ret void
}

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i64 @kernel_getsp(i64, i32) #1

declare dso_local i32 @pagefault_disable(...) #1

declare dso_local i64 @user_getsp32(i64, i32) #1

declare dso_local i32 @pagefault_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
