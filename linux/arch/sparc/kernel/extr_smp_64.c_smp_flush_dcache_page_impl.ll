; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_smp_64.c_smp_flush_dcache_page_impl.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_smp_64.c_smp_flush_dcache_page_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@tlb_type = common dso_local global i64 0, align 8
@hypervisor = common dso_local global i64 0, align 8
@spitfire = common dso_local global i64 0, align 8
@xcall_flush_dcache_page_spitfire = common dso_local global i32 0, align 4
@cheetah = common dso_local global i64 0, align 8
@cheetah_plus = common dso_local global i64 0, align 8
@dcpage_flushes = common dso_local global i32 0, align 4
@dcpage_flushes_xcall = common dso_local global i32 0, align 4
@xcall_flush_dcache_page_cheetah = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_flush_dcache_page_impl(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* @tlb_type, align 8
  %9 = load i64, i64* @hypervisor, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %64

12:                                               ; preds = %2
  %13 = call i32 (...) @get_cpu()
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.page*, %struct.page** %3, align 8
  %19 = call i32 @__local_flush_dcache_page(%struct.page* %18)
  br label %62

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @cpu_online(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %61

24:                                               ; preds = %20
  %25 = load %struct.page*, %struct.page** %3, align 8
  %26 = call i8* @page_address(%struct.page* %25)
  store i8* %26, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %27 = load i64, i64* @tlb_type, align 8
  %28 = load i64, i64* @spitfire, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  store i32 ptrtoint (i32* @xcall_flush_dcache_page_spitfire to i32), i32* %7, align 4
  %31 = load %struct.page*, %struct.page** %3, align 8
  %32 = call i32* @page_mapping_file(%struct.page* %31)
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, undef
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %34, %30
  br label %48

38:                                               ; preds = %24
  %39 = load i64, i64* @tlb_type, align 8
  %40 = load i64, i64* @cheetah, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* @tlb_type, align 8
  %44 = load i64, i64* @cheetah_plus, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %38
  br label %47

47:                                               ; preds = %46, %42
  br label %48

48:                                               ; preds = %47, %37
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @__pa(i8* %53)
  %55 = load i8*, i8** %6, align 8
  %56 = ptrtoint i8* %55 to i32
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @cpumask_of(i32 %57)
  %59 = call i32 @xcall_deliver(i32 %52, i32 %54, i32 %56, i32 %58)
  br label %60

60:                                               ; preds = %51, %48
  br label %61

61:                                               ; preds = %60, %20
  br label %62

62:                                               ; preds = %61, %17
  %63 = call i32 (...) @put_cpu()
  br label %64

64:                                               ; preds = %62, %11
  ret void
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @__local_flush_dcache_page(%struct.page*) #1

declare dso_local i64 @cpu_online(i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32* @page_mapping_file(%struct.page*) #1

declare dso_local i32 @xcall_deliver(i32, i32, i32, i32) #1

declare dso_local i32 @__pa(i8*) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
