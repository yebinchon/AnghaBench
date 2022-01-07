; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pasemi/extr_idle.c_pasemi_system_reset_exception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pasemi/extr_idle.c_pasemi_system_reset_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32, i32 }

@SRR1_WAKEMASK = common dso_local global i32 0, align 4
@MSR_RI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*)* @pasemi_system_reset_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pasemi_system_reset_exception(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %4 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %5 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @SRR1_WAKEMASK, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %12 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %15 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %18 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SRR1_WAKEMASK, align 4
  %21 = and i32 %19, %20
  switch i32 %21, label %25 [
    i32 129, label %22
    i32 128, label %24
  ]

22:                                               ; preds = %16
  %23 = call i32 @set_dec(i32 1)
  br label %24

24:                                               ; preds = %16, %22
  br label %26

25:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %34

26:                                               ; preds = %24
  %27 = call i32 (...) @hard_smp_processor_id()
  %28 = call i32 @restore_astate(i32 %27)
  %29 = load i32, i32* @MSR_RI, align 4
  %30 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %31 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %26, %25
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @set_dec(i32) #1

declare dso_local i32 @restore_astate(i32) #1

declare dso_local i32 @hard_smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
