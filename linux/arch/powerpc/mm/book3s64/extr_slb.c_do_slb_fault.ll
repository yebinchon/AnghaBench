; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_slb.c_do_slb_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_slb.c_do_slb_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pt_regs = type { i32 }

@MSR_EE = common dso_local global i32 0, align 4
@MSR_RI = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@LINEAR_MAP_REGION_ID = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_4__* null, align 8
@EFAULT = common dso_local global i64 0, align 8
@local_paca = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @do_slb_fault(%struct.pt_regs* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @get_region_id(i64 %10)
  store i64 %11, i64* %6, align 8
  %12 = call i32 (...) @mfmsr()
  %13 = load i32, i32* @MSR_EE, align 4
  %14 = and i32 %12, %13
  %15 = call i32 @VM_WARN_ON(i32 %14)
  %16 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MSR_RI, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i64, i64* @EINVAL, align 8
  %28 = sub nsw i64 0, %27
  store i64 %28, i64* %3, align 8
  br label %63

29:                                               ; preds = %2
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @LINEAR_MAP_REGION_ID, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @slb_allocate_kernel(i64 %34, i64 %35)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %7, align 8
  store i64 %37, i64* %3, align 8
  br label %63

38:                                               ; preds = %29
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.mm_struct*, %struct.mm_struct** %40, align 8
  store %struct.mm_struct* %41, %struct.mm_struct** %8, align 8
  %42 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %43 = icmp ne %struct.mm_struct* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i64, i64* @EFAULT, align 8
  %50 = sub nsw i64 0, %49
  store i64 %50, i64* %3, align 8
  br label %63

51:                                               ; preds = %38
  %52 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i64 @slb_allocate_user(%struct.mm_struct* %52, i64 %53)
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %51
  %58 = call i32 (...) @current_thread_info()
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @preload_add(i32 %58, i64 %59)
  br label %61

61:                                               ; preds = %57, %51
  %62 = load i64, i64* %9, align 8
  store i64 %62, i64* %3, align 8
  br label %63

63:                                               ; preds = %61, %48, %33, %26
  %64 = load i64, i64* %3, align 8
  ret i64 %64
}

declare dso_local i64 @get_region_id(i64) #1

declare dso_local i32 @VM_WARN_ON(i32) #1

declare dso_local i32 @mfmsr(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @slb_allocate_kernel(i64, i64) #1

declare dso_local i64 @slb_allocate_user(%struct.mm_struct*, i64) #1

declare dso_local i32 @preload_add(i32, i64) #1

declare dso_local i32 @current_thread_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
