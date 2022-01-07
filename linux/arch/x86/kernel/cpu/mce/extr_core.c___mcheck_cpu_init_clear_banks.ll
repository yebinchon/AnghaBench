; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c___mcheck_cpu_init_clear_banks.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c___mcheck_cpu_init_clear_banks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)* }
%struct.mce_bank = type { i32, i32 }

@mce_banks_array = common dso_local global i32 0, align 4
@mce_num_banks = common dso_local global i32 0, align 4
@msr_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__mcheck_cpu_init_clear_banks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mcheck_cpu_init_clear_banks() #0 {
  %1 = alloca %struct.mce_bank*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.mce_bank*, align 8
  %4 = load i32, i32* @mce_banks_array, align 4
  %5 = call %struct.mce_bank* @this_cpu_ptr(i32 %4)
  store %struct.mce_bank* %5, %struct.mce_bank** %1, align 8
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %33, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @mce_num_banks, align 4
  %9 = call i32 @this_cpu_read(i32 %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %36

11:                                               ; preds = %6
  %12 = load %struct.mce_bank*, %struct.mce_bank** %1, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.mce_bank, %struct.mce_bank* %12, i64 %14
  store %struct.mce_bank* %15, %struct.mce_bank** %3, align 8
  %16 = load %struct.mce_bank*, %struct.mce_bank** %3, align 8
  %17 = getelementptr inbounds %struct.mce_bank, %struct.mce_bank* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  br label %33

21:                                               ; preds = %11
  %22 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @msr_ops, i32 0, i32 1), align 8
  %23 = load i32, i32* %2, align 4
  %24 = call i32 %22(i32 %23)
  %25 = load %struct.mce_bank*, %struct.mce_bank** %3, align 8
  %26 = getelementptr inbounds %struct.mce_bank, %struct.mce_bank* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @wrmsrl(i32 %24, i32 %27)
  %29 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @msr_ops, i32 0, i32 0), align 8
  %30 = load i32, i32* %2, align 4
  %31 = call i32 %29(i32 %30)
  %32 = call i32 @wrmsrl(i32 %31, i32 0)
  br label %33

33:                                               ; preds = %21, %20
  %34 = load i32, i32* %2, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %2, align 4
  br label %6

36:                                               ; preds = %6
  ret void
}

declare dso_local %struct.mce_bank* @this_cpu_ptr(i32) #1

declare dso_local i32 @this_cpu_read(i32) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
