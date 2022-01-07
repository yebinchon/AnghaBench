; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce_power.c___machine_check_early_realmode_p9.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce_power.c___machine_check_early_realmode_p9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32 }

@mce_p9_derror_table = common dso_local global i32 0, align 4
@mce_p9_ierror_table = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__machine_check_early_realmode_p9(%struct.pt_regs* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %4 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %5 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @SRR1_MC_LOADSTORE(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %11 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 33554432
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i64 1, i64* %2, align 8
  br label %20

15:                                               ; preds = %9, %1
  %16 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %17 = load i32, i32* @mce_p9_derror_table, align 4
  %18 = load i32, i32* @mce_p9_ierror_table, align 4
  %19 = call i64 @mce_handle_error(%struct.pt_regs* %16, i32 %17, i32 %18)
  store i64 %19, i64* %2, align 8
  br label %20

20:                                               ; preds = %15, %14
  %21 = load i64, i64* %2, align 8
  ret i64 %21
}

declare dso_local i64 @SRR1_MC_LOADSTORE(i32) #1

declare dso_local i64 @mce_handle_error(%struct.pt_regs*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
