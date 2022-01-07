; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_uprobes.c_arch_uretprobe_is_alive.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_uprobes.c_arch_uretprobe_is_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.return_instance = type { i64 }
%struct.pt_regs = type { i64* }

@RP_CHECK_CHAIN_CALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_uretprobe_is_alive(%struct.return_instance* %0, i32 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.return_instance*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_regs*, align 8
  store %struct.return_instance* %0, %struct.return_instance** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pt_regs* %2, %struct.pt_regs** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @RP_CHECK_CHAIN_CALL, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %3
  %12 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %13 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.return_instance*, %struct.return_instance** %5, align 8
  %18 = getelementptr inbounds %struct.return_instance, %struct.return_instance* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sle i64 %16, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %4, align 4
  br label %33

22:                                               ; preds = %3
  %23 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %24 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.return_instance*, %struct.return_instance** %5, align 8
  %29 = getelementptr inbounds %struct.return_instance, %struct.return_instance* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %22, %11
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
