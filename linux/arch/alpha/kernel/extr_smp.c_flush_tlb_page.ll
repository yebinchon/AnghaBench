; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_smp.c_flush_tlb_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_smp.c_flush_tlb_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i64*, i32 }
%struct.vm_area_struct = type { %struct.mm_struct* }
%struct.flush_tlb_page_struct = type { i64, %struct.mm_struct*, %struct.vm_area_struct* }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@NR_CPUS = common dso_local global i32 0, align 4
@ipi_flush_tlb_page = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_tlb_page(%struct.vm_area_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.flush_tlb_page_struct, align 8
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 0
  %11 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  store %struct.mm_struct* %11, %struct.mm_struct** %6, align 8
  %12 = call i32 (...) @preempt_disable()
  %13 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.mm_struct*, %struct.mm_struct** %15, align 8
  %17 = icmp eq %struct.mm_struct* %13, %16
  br i1 %17, label %18, label %65

18:                                               ; preds = %2
  %19 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @flush_tlb_current_page(%struct.mm_struct* %19, %struct.vm_area_struct* %20, i64 %21)
  %23 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %24 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %23, i32 0, i32 1
  %25 = call i32 @atomic_read(i32* %24)
  %26 = icmp sle i32 %25, 1
  br i1 %26, label %27, label %64

27:                                               ; preds = %18
  %28 = call i32 (...) @smp_processor_id()
  store i32 %28, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %59, %27
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @NR_CPUS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @cpu_online(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %33
  br label %59

42:                                               ; preds = %37
  %43 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %44 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %53 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %51, %42
  br label %59

59:                                               ; preds = %58, %41
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %29

62:                                               ; preds = %29
  %63 = call i32 (...) @preempt_enable()
  br label %75

64:                                               ; preds = %18
  br label %65

65:                                               ; preds = %64, %2
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %67 = getelementptr inbounds %struct.flush_tlb_page_struct, %struct.flush_tlb_page_struct* %5, i32 0, i32 2
  store %struct.vm_area_struct* %66, %struct.vm_area_struct** %67, align 8
  %68 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %69 = getelementptr inbounds %struct.flush_tlb_page_struct, %struct.flush_tlb_page_struct* %5, i32 0, i32 1
  store %struct.mm_struct* %68, %struct.mm_struct** %69, align 8
  %70 = load i64, i64* %4, align 8
  %71 = getelementptr inbounds %struct.flush_tlb_page_struct, %struct.flush_tlb_page_struct* %5, i32 0, i32 0
  store i64 %70, i64* %71, align 8
  %72 = load i32, i32* @ipi_flush_tlb_page, align 4
  %73 = call i32 @smp_call_function(i32 %72, %struct.flush_tlb_page_struct* %5, i32 1)
  %74 = call i32 (...) @preempt_enable()
  br label %75

75:                                               ; preds = %65, %62
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @flush_tlb_current_page(%struct.mm_struct*, %struct.vm_area_struct*, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cpu_online(i32) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @smp_call_function(i32, %struct.flush_tlb_page_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
