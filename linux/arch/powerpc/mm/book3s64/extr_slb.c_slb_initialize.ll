; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_slb.c_slb_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_slb.c_slb_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32 }

@slb_initialize.slb_encoding_inited = internal global i32 0, align 4
@mmu_psize_defs = common dso_local global %struct.TYPE_3__* null, align 8
@mmu_linear_psize = common dso_local global i64 0, align 8
@mmu_io_psize = common dso_local global i64 0, align 8
@mmu_vmalloc_psize = common dso_local global i64 0, align 8
@SLB_VSID_KERNEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"SLB: linear  LLP = %04lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"SLB: io      LLP = %04lx\0A\00", align 1
@SLB_NUM_BOLTED = common dso_local global i32 0, align 4
@PAGE_OFFSET = common dso_local global i32 0, align 4
@mmu_kernel_ssize = common dso_local global i32 0, align 4
@LINEAR_INDEX = common dso_local global i32 0, align 4
@KSTACK_INDEX = common dso_local global i32 0, align 4
@boot_cpuid = common dso_local global i64 0, align 8
@mmu_vmemmap_psize = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slb_initialize() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mmu_psize_defs, align 8
  %6 = load i64, i64* @mmu_linear_psize, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %1, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mmu_psize_defs, align 8
  %11 = load i64, i64* @mmu_io_psize, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %3, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mmu_psize_defs, align 8
  %16 = load i64, i64* @mmu_vmalloc_psize, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %2, align 8
  %20 = load i64, i64* @SLB_VSID_KERNEL, align 8
  %21 = load i64, i64* %2, align 8
  %22 = or i64 %20, %21
  %23 = call %struct.TYPE_4__* (...) @get_paca()
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i32, i32* @slb_initialize.slb_encoding_inited, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %0
  store i32 1, i32* @slb_initialize.slb_encoding_inited, align 4
  %28 = load i64, i64* %1, align 8
  %29 = call i32 @pr_devel(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @pr_devel(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  br label %32

32:                                               ; preds = %27, %0
  %33 = load i32, i32* @SLB_NUM_BOLTED, align 4
  %34 = sub nsw i32 %33, 1
  %35 = call %struct.TYPE_4__* (...) @get_paca()
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @SLB_NUM_BOLTED, align 4
  %38 = shl i32 1, %37
  %39 = sub i32 %38, 1
  %40 = call %struct.TYPE_4__* (...) @get_paca()
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = call %struct.TYPE_4__* (...) @get_paca()
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.TYPE_4__* (...) @get_paca()
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load i64, i64* @SLB_VSID_KERNEL, align 8
  %48 = load i64, i64* %1, align 8
  %49 = or i64 %47, %48
  store i64 %49, i64* %4, align 8
  call void asm sideeffect "isync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  call void asm sideeffect "slbmte  $0,$0", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 0) #2, !srcloc !3
  call void asm sideeffect "isync; slbia; isync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !4
  %50 = load i32, i32* @PAGE_OFFSET, align 4
  %51 = load i32, i32* @mmu_kernel_ssize, align 4
  %52 = load i64, i64* %4, align 8
  %53 = load i32, i32* @LINEAR_INDEX, align 4
  %54 = call i32 @create_shadowed_slbe(i32 %50, i32 %51, i64 %52, i32 %53)
  %55 = load i32, i32* @KSTACK_INDEX, align 4
  %56 = call i32 @slb_shadow_clear(i32 %55)
  %57 = call i64 (...) @raw_smp_processor_id()
  %58 = load i64, i64* @boot_cpuid, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %32
  %61 = call %struct.TYPE_4__* (...) @get_paca()
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @mmu_kernel_ssize, align 4
  %65 = call i32 @slb_esid_mask(i32 %64)
  %66 = and i32 %63, %65
  %67 = load i32, i32* @PAGE_OFFSET, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %60
  %70 = call %struct.TYPE_4__* (...) @get_paca()
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @mmu_kernel_ssize, align 4
  %74 = load i64, i64* %4, align 8
  %75 = load i32, i32* @KSTACK_INDEX, align 4
  %76 = call i32 @create_shadowed_slbe(i32 %72, i32 %73, i64 %74, i32 %75)
  br label %77

77:                                               ; preds = %69, %60, %32
  call void asm sideeffect "isync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !5
  ret void
}

declare dso_local %struct.TYPE_4__* @get_paca(...) #1

declare dso_local i32 @pr_devel(i8*, i64) #1

declare dso_local i32 @create_shadowed_slbe(i32, i32, i64, i32) #1

declare dso_local i32 @slb_shadow_clear(i32) #1

declare dso_local i64 @raw_smp_processor_id(...) #1

declare dso_local i32 @slb_esid_mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1640}
!3 = !{i32 1675}
!4 = !{i32 1727}
!5 = !{i32 2106}
