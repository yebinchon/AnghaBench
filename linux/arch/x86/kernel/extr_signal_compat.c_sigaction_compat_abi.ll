; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_signal_compat.c_sigaction_compat_abi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_signal_compat.c_sigaction_compat_abi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_sigaction = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SA_IA32_ABI = common dso_local global i32 0, align 4
@SA_X32_ABI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sigaction_compat_abi(%struct.k_sigaction* %0, %struct.k_sigaction* %1) #0 {
  %3 = alloca %struct.k_sigaction*, align 8
  %4 = alloca %struct.k_sigaction*, align 8
  store %struct.k_sigaction* %0, %struct.k_sigaction** %3, align 8
  store %struct.k_sigaction* %1, %struct.k_sigaction** %4, align 8
  %5 = call i32 (...) @signal_compat_build_tests()
  %6 = load %struct.k_sigaction*, %struct.k_sigaction** %4, align 8
  %7 = icmp ne %struct.k_sigaction* %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load i32, i32* @SA_IA32_ABI, align 4
  %10 = load i32, i32* @SA_X32_ABI, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load %struct.k_sigaction*, %struct.k_sigaction** %4, align 8
  %14 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %12
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %8, %2
  %19 = load %struct.k_sigaction*, %struct.k_sigaction** %3, align 8
  %20 = icmp ne %struct.k_sigaction* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  br label %51

22:                                               ; preds = %18
  %23 = load i32, i32* @SA_IA32_ABI, align 4
  %24 = load i32, i32* @SA_X32_ABI, align 4
  %25 = or i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load %struct.k_sigaction*, %struct.k_sigaction** %3, align 8
  %28 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %26
  store i32 %31, i32* %29, align 4
  %32 = call i64 (...) @in_ia32_syscall()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %22
  %35 = load i32, i32* @SA_IA32_ABI, align 4
  %36 = load %struct.k_sigaction*, %struct.k_sigaction** %3, align 8
  %37 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %35
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %34, %22
  %42 = call i64 (...) @in_x32_syscall()
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i32, i32* @SA_X32_ABI, align 4
  %46 = load %struct.k_sigaction*, %struct.k_sigaction** %3, align 8
  %47 = getelementptr inbounds %struct.k_sigaction, %struct.k_sigaction* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %45
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %21, %44, %41
  ret void
}

declare dso_local i32 @signal_compat_build_tests(...) #1

declare dso_local i64 @in_ia32_syscall(...) #1

declare dso_local i64 @in_x32_syscall(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
