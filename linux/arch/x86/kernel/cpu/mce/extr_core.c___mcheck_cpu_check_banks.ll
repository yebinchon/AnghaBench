; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c___mcheck_cpu_check_banks.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c___mcheck_cpu_check_banks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }
%struct.mce_bank = type { i32 }

@mce_banks_array = common dso_local global i32 0, align 4
@mce_num_banks = common dso_local global i32 0, align 4
@msr_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__mcheck_cpu_check_banks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mcheck_cpu_check_banks() #0 {
  %1 = alloca %struct.mce_bank*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mce_bank*, align 8
  %5 = load i32, i32* @mce_banks_array, align 4
  %6 = call %struct.mce_bank* @this_cpu_ptr(i32 %5)
  store %struct.mce_bank* %6, %struct.mce_bank** %1, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %35, %0
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @mce_num_banks, align 4
  %10 = call i32 @this_cpu_read(i32 %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %7
  %13 = load %struct.mce_bank*, %struct.mce_bank** %1, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.mce_bank, %struct.mce_bank* %13, i64 %15
  store %struct.mce_bank* %16, %struct.mce_bank** %4, align 8
  %17 = load %struct.mce_bank*, %struct.mce_bank** %4, align 8
  %18 = getelementptr inbounds %struct.mce_bank, %struct.mce_bank* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  br label %35

22:                                               ; preds = %12
  %23 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @msr_ops, i32 0, i32 0), align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 %23(i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @rdmsrl(i32 %25, i32 %26)
  %28 = load i32, i32* %2, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load %struct.mce_bank*, %struct.mce_bank** %4, align 8
  %34 = getelementptr inbounds %struct.mce_bank, %struct.mce_bank* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %22, %21
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %7

38:                                               ; preds = %7
  ret void
}

declare dso_local %struct.mce_bank* @this_cpu_ptr(i32) #1

declare dso_local i32 @this_cpu_read(i32) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
