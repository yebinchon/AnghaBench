; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_smp.c_flush_tlb_mm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_smp.c_flush_tlb_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i64*, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@NR_CPUS = common dso_local global i32 0, align 4
@ipi_flush_tlb_mm = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_tlb_mm(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %5 = call i32 (...) @preempt_disable()
  %6 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %10 = icmp eq %struct.mm_struct* %6, %9
  br i1 %10, label %11, label %56

11:                                               ; preds = %1
  %12 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %13 = call i32 @flush_tlb_current(%struct.mm_struct* %12)
  %14 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %15 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %14, i32 0, i32 1
  %16 = call i32 @atomic_read(i32* %15)
  %17 = icmp sle i32 %16, 1
  br i1 %17, label %18, label %55

18:                                               ; preds = %11
  %19 = call i32 (...) @smp_processor_id()
  store i32 %19, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %50, %18
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @NR_CPUS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @cpu_online(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %24
  br label %50

33:                                               ; preds = %28
  %34 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %35 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %44 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %42, %33
  br label %50

50:                                               ; preds = %49, %32
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %20

53:                                               ; preds = %20
  %54 = call i32 (...) @preempt_enable()
  br label %61

55:                                               ; preds = %11
  br label %56

56:                                               ; preds = %55, %1
  %57 = load i32, i32* @ipi_flush_tlb_mm, align 4
  %58 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %59 = call i32 @smp_call_function(i32 %57, %struct.mm_struct* %58, i32 1)
  %60 = call i32 (...) @preempt_enable()
  br label %61

61:                                               ; preds = %56, %53
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @flush_tlb_current(%struct.mm_struct*) #1

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
