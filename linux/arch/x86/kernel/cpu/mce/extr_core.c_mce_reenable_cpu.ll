; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_mce_reenable_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_mce_reenable_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }
%struct.mce_bank = type { i32, i64 }

@mce_banks_array = common dso_local global i32 0, align 4
@cpu_info = common dso_local global i32 0, align 4
@cpuhp_tasks_frozen = common dso_local global i32 0, align 4
@mce_num_banks = common dso_local global i32 0, align 4
@msr_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mce_reenable_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mce_reenable_cpu() #0 {
  %1 = alloca %struct.mce_bank*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.mce_bank*, align 8
  %4 = load i32, i32* @mce_banks_array, align 4
  %5 = call %struct.mce_bank* @this_cpu_ptr(i32 %4)
  store %struct.mce_bank* %5, %struct.mce_bank** %1, align 8
  %6 = call i32 @raw_cpu_ptr(i32* @cpu_info)
  %7 = call i32 @mce_available(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %42

10:                                               ; preds = %0
  %11 = load i32, i32* @cpuhp_tasks_frozen, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = call i32 (...) @cmci_reenable()
  br label %15

15:                                               ; preds = %13, %10
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %39, %15
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @mce_num_banks, align 4
  %19 = call i32 @this_cpu_read(i32 %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %16
  %22 = load %struct.mce_bank*, %struct.mce_bank** %1, align 8
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.mce_bank, %struct.mce_bank* %22, i64 %24
  store %struct.mce_bank* %25, %struct.mce_bank** %3, align 8
  %26 = load %struct.mce_bank*, %struct.mce_bank** %3, align 8
  %27 = getelementptr inbounds %struct.mce_bank, %struct.mce_bank* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %21
  %31 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @msr_ops, i32 0, i32 0), align 8
  %32 = load i32, i32* %2, align 4
  %33 = call i32 %31(i32 %32)
  %34 = load %struct.mce_bank*, %struct.mce_bank** %3, align 8
  %35 = getelementptr inbounds %struct.mce_bank, %struct.mce_bank* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @wrmsrl(i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %30, %21
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %2, align 4
  br label %16

42:                                               ; preds = %9, %16
  ret void
}

declare dso_local %struct.mce_bank* @this_cpu_ptr(i32) #1

declare dso_local i32 @mce_available(i32) #1

declare dso_local i32 @raw_cpu_ptr(i32*) #1

declare dso_local i32 @cmci_reenable(...) #1

declare dso_local i32 @this_cpu_read(i32) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
