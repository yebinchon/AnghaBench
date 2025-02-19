; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mips.c_kvm_mips_set_c0_status.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mips.c_kvm_mips_set_c0_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_has_dsp = common dso_local global i64 0, align 8
@ST0_MX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kvm_mips_set_c0_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_mips_set_c0_status() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @read_c0_status()
  store i32 %2, i32* %1, align 4
  %3 = load i64, i64* @cpu_has_dsp, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @ST0_MX, align 4
  %7 = load i32, i32* %1, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* %1, align 4
  br label %9

9:                                                ; preds = %5, %0
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @write_c0_status(i32 %10)
  %12 = call i32 (...) @ehb()
  ret void
}

declare dso_local i32 @read_c0_status(...) #1

declare dso_local i32 @write_c0_status(i32) #1

declare dso_local i32 @ehb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
