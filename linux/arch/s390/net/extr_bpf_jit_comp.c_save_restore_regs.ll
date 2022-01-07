; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/net/extr_bpf_jit_comp.c_save_restore_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/net/extr_bpf_jit_comp.c_save_restore_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_jit = type { i32 }

@REGS_SAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_jit*, i32, i32)* @save_restore_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_restore_regs(%struct.bpf_jit* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bpf_jit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bpf_jit* %0, %struct.bpf_jit** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 6, i32* %7, align 4
  br label %9

9:                                                ; preds = %38, %3
  %10 = load %struct.bpf_jit*, %struct.bpf_jit** %4, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @get_start(%struct.bpf_jit* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  br label %41

16:                                               ; preds = %9
  %17 = load %struct.bpf_jit*, %struct.bpf_jit** %4, align 8
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %18, 1
  %20 = call i32 @get_end(%struct.bpf_jit* %17, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @REGS_SAVE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.bpf_jit*, %struct.bpf_jit** %4, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @save_regs(%struct.bpf_jit* %25, i32 %26, i32 %27)
  br label %35

29:                                               ; preds = %16
  %30 = load %struct.bpf_jit*, %struct.bpf_jit** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @restore_regs(%struct.bpf_jit* %30, i32 %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %24
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = icmp sle i32 %39, 15
  br i1 %40, label %9, label %41

41:                                               ; preds = %38, %15
  ret void
}

declare dso_local i32 @get_start(%struct.bpf_jit*, i32) #1

declare dso_local i32 @get_end(%struct.bpf_jit*, i32) #1

declare dso_local i32 @save_regs(%struct.bpf_jit*, i32, i32) #1

declare dso_local i32 @restore_regs(%struct.bpf_jit*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
