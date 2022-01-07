; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_tlb.c_flush_tlb_func_remote.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_tlb.c_flush_tlb_func_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.flush_tlb_info = type { i64 }

@irq_tlb_count = common dso_local global i32 0, align 4
@cpu_tlbstate = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@NR_TLB_REMOTE_FLUSH_RECEIVED = common dso_local global i32 0, align 4
@TLB_REMOTE_SHOOTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @flush_tlb_func_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_tlb_func_remote(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.flush_tlb_info*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.flush_tlb_info*
  store %struct.flush_tlb_info* %5, %struct.flush_tlb_info** %3, align 8
  %6 = load i32, i32* @irq_tlb_count, align 4
  %7 = call i32 @inc_irq_stat(i32 %6)
  %8 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %3, align 8
  %9 = getelementptr inbounds %struct.flush_tlb_info, %struct.flush_tlb_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %3, align 8
  %14 = getelementptr inbounds %struct.flush_tlb_info, %struct.flush_tlb_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu_tlbstate, i32 0, i32 0), align 4
  %17 = call i64 @this_cpu_read(i32 %16)
  %18 = icmp ne i64 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %26

20:                                               ; preds = %12, %1
  %21 = load i32, i32* @NR_TLB_REMOTE_FLUSH_RECEIVED, align 4
  %22 = call i32 @count_vm_tlb_event(i32 %21)
  %23 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %3, align 8
  %24 = load i32, i32* @TLB_REMOTE_SHOOTDOWN, align 4
  %25 = call i32 @flush_tlb_func_common(%struct.flush_tlb_info* %23, i32 0, i32 %24)
  br label %26

26:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @inc_irq_stat(i32) #1

declare dso_local i64 @this_cpu_read(i32) #1

declare dso_local i32 @count_vm_tlb_event(i32) #1

declare dso_local i32 @flush_tlb_func_common(%struct.flush_tlb_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
