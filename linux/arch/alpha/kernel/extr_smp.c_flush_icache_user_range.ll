; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_smp.c_flush_icache_user_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_smp.c_flush_icache_user_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i64*, i32 }
%struct.vm_area_struct = type { i32, %struct.mm_struct* }
%struct.page = type { i32 }

@VM_EXEC = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@NR_CPUS = common dso_local global i32 0, align 4
@ipi_flush_icache_page = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_icache_user_range(%struct.vm_area_struct* %0, %struct.page* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 1
  %14 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  store %struct.mm_struct* %14, %struct.mm_struct** %9, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @VM_EXEC, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %79

22:                                               ; preds = %4
  %23 = call i32 (...) @preempt_disable()
  %24 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.mm_struct*, %struct.mm_struct** %26, align 8
  %28 = icmp eq %struct.mm_struct* %24, %27
  br i1 %28, label %29, label %74

29:                                               ; preds = %22
  %30 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %31 = call i32 @__load_new_mm_context(%struct.mm_struct* %30)
  %32 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %33 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %32, i32 0, i32 1
  %34 = call i32 @atomic_read(i32* %33)
  %35 = icmp sle i32 %34, 1
  br i1 %35, label %36, label %73

36:                                               ; preds = %29
  %37 = call i32 (...) @smp_processor_id()
  store i32 %37, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %68, %36
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @NR_CPUS, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %71

42:                                               ; preds = %38
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @cpu_online(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %42
  br label %68

51:                                               ; preds = %46
  %52 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %53 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %51
  %61 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %62 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %60, %51
  br label %68

68:                                               ; preds = %67, %50
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %38

71:                                               ; preds = %38
  %72 = call i32 (...) @preempt_enable()
  br label %79

73:                                               ; preds = %29
  br label %74

74:                                               ; preds = %73, %22
  %75 = load i32, i32* @ipi_flush_icache_page, align 4
  %76 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %77 = call i32 @smp_call_function(i32 %75, %struct.mm_struct* %76, i32 1)
  %78 = call i32 (...) @preempt_enable()
  br label %79

79:                                               ; preds = %74, %71, %21
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @__load_new_mm_context(%struct.mm_struct*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @cpu_online(i32) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @smp_call_function(i32, %struct.mm_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
