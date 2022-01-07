; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_event.c_sie_block.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_event.c_sie_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_s390_sie_block = type { i32 }
%struct.pt_regs = type { i64* }
%struct.stack_frame = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvm_s390_sie_block* (%struct.pt_regs*)* @sie_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvm_s390_sie_block* @sie_block(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.kvm_s390_sie_block*, align 8
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.stack_frame*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %5 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %6 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 15
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.stack_frame*
  store %struct.stack_frame* %10, %struct.stack_frame** %4, align 8
  %11 = load %struct.stack_frame*, %struct.stack_frame** %4, align 8
  %12 = icmp ne %struct.stack_frame* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.kvm_s390_sie_block* null, %struct.kvm_s390_sie_block** %2, align 8
  br label %21

14:                                               ; preds = %1
  %15 = load %struct.stack_frame*, %struct.stack_frame** %4, align 8
  %16 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.kvm_s390_sie_block*
  store %struct.kvm_s390_sie_block* %20, %struct.kvm_s390_sie_block** %2, align 8
  br label %21

21:                                               ; preds = %14, %13
  %22 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %2, align 8
  ret %struct.kvm_s390_sie_block* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
