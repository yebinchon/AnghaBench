; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c___mcheck_cpu_mce_banks_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c___mcheck_cpu_mce_banks_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mce_bank = type { i64, i32 }

@mce_banks_array = common dso_local global i32 0, align 4
@mce_num_banks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__mcheck_cpu_mce_banks_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mcheck_cpu_mce_banks_init() #0 {
  %1 = alloca %struct.mce_bank*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mce_bank*, align 8
  %5 = load i32, i32* @mce_banks_array, align 4
  %6 = call %struct.mce_bank* @this_cpu_ptr(i32 %5)
  store %struct.mce_bank* %6, %struct.mce_bank** %1, align 8
  %7 = load i32, i32* @mce_num_banks, align 4
  %8 = call i32 @this_cpu_read(i32 %7)
  store i32 %8, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %22, %0
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load %struct.mce_bank*, %struct.mce_bank** %1, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.mce_bank, %struct.mce_bank* %14, i64 %16
  store %struct.mce_bank* %17, %struct.mce_bank** %4, align 8
  %18 = load %struct.mce_bank*, %struct.mce_bank** %4, align 8
  %19 = getelementptr inbounds %struct.mce_bank, %struct.mce_bank* %18, i32 0, i32 0
  store i64 -1, i64* %19, align 8
  %20 = load %struct.mce_bank*, %struct.mce_bank** %4, align 8
  %21 = getelementptr inbounds %struct.mce_bank, %struct.mce_bank* %20, i32 0, i32 1
  store i32 1, i32* %21, align 8
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %9

25:                                               ; preds = %9
  ret void
}

declare dso_local %struct.mce_bank* @this_cpu_ptr(i32) #1

declare dso_local i32 @this_cpu_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
