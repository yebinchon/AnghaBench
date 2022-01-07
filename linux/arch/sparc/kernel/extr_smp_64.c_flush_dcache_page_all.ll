; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_smp_64.c_flush_dcache_page_all.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_smp_64.c_flush_dcache_page_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.page = type { i32 }

@tlb_type = common dso_local global i64 0, align 8
@hypervisor = common dso_local global i64 0, align 8
@spitfire = common dso_local global i64 0, align 8
@xcall_flush_dcache_page_spitfire = common dso_local global i32 0, align 4
@cheetah = common dso_local global i64 0, align 8
@cheetah_plus = common dso_local global i64 0, align 8
@cpu_online_mask = common dso_local global i32 0, align 4
@dcpage_flushes = common dso_local global i32 0, align 4
@dcpage_flushes_xcall = common dso_local global i32 0, align 4
@xcall_flush_dcache_page_cheetah = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_dcache_page_all(%struct.mm_struct* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %7 = load i64, i64* @tlb_type, align 8
  %8 = load i64, i64* @hypervisor, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %51

11:                                               ; preds = %2
  %12 = call i32 (...) @preempt_disable()
  store i32 0, i32* %6, align 4
  %13 = load %struct.page*, %struct.page** %4, align 8
  %14 = call i8* @page_address(%struct.page* %13)
  store i8* %14, i8** %5, align 8
  %15 = load i64, i64* @tlb_type, align 8
  %16 = load i64, i64* @spitfire, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  store i32 ptrtoint (i32* @xcall_flush_dcache_page_spitfire to i32), i32* %6, align 4
  %19 = load %struct.page*, %struct.page** %4, align 8
  %20 = call i32* @page_mapping_file(%struct.page* %19)
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, undef
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %22, %18
  br label %36

26:                                               ; preds = %11
  %27 = load i64, i64* @tlb_type, align 8
  %28 = load i64, i64* @cheetah, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* @tlb_type, align 8
  %32 = load i64, i64* @cheetah_plus, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %26
  br label %35

35:                                               ; preds = %34, %30
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @__pa(i8* %41)
  %43 = load i8*, i8** %5, align 8
  %44 = ptrtoint i8* %43 to i32
  %45 = load i32, i32* @cpu_online_mask, align 4
  %46 = call i32 @xcall_deliver(i32 %40, i32 %42, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %39, %36
  %48 = load %struct.page*, %struct.page** %4, align 8
  %49 = call i32 @__local_flush_dcache_page(%struct.page* %48)
  %50 = call i32 (...) @preempt_enable()
  br label %51

51:                                               ; preds = %47, %10
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32* @page_mapping_file(%struct.page*) #1

declare dso_local i32 @xcall_deliver(i32, i32, i32, i32) #1

declare dso_local i32 @__pa(i8*) #1

declare dso_local i32 @__local_flush_dcache_page(%struct.page*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
