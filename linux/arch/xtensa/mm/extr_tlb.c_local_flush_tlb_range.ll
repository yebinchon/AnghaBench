; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/mm/extr_tlb.c_local_flush_tlb_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/mm/extr_tlb.c_local_flush_tlb_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, %struct.mm_struct* }
%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@NO_CONTEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"[tlbrange<%02lx,%08lx,%08lx>]\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@_TLB_ENTRIES = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@VM_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_flush_tlb_range(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = call i32 (...) @smp_processor_id()
  store i32 %11, i32* %7, align 4
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 1
  %14 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  store %struct.mm_struct* %14, %struct.mm_struct** %8, align 8
  %15 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %16 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NO_CONTEXT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %110

26:                                               ; preds = %3
  %27 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %28 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %35, i64 %36)
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @local_irq_save(i64 %38)
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %5, align 8
  %42 = sub i64 %40, %41
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = add i64 %42, %45
  %47 = load i32, i32* @_TLB_ENTRIES, align 4
  %48 = load i32, i32* @PAGE_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = icmp ule i64 %46, %50
  br i1 %51, label %52, label %104

52:                                               ; preds = %26
  %53 = call i32 (...) @get_rasid_register()
  store i32 %53, i32* %10, align 4
  %54 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %55 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @ASID_INSERT(i64 %61)
  %63 = call i32 @set_rasid_register(i32 %62)
  %64 = load i64, i64* @PAGE_MASK, align 8
  %65 = load i64, i64* %5, align 8
  %66 = and i64 %65, %64
  store i64 %66, i64* %5, align 8
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %68 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @VM_EXEC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %52
  br label %74

74:                                               ; preds = %78, %73
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* %6, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @invalidate_itlb_mapping(i64 %79)
  %81 = load i64, i64* %5, align 8
  %82 = call i32 @invalidate_dtlb_mapping(i64 %81)
  %83 = load i32, i32* @PAGE_SIZE, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %5, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %5, align 8
  br label %74

87:                                               ; preds = %74
  br label %101

88:                                               ; preds = %52
  br label %89

89:                                               ; preds = %93, %88
  %90 = load i64, i64* %5, align 8
  %91 = load i64, i64* %6, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load i64, i64* %5, align 8
  %95 = call i32 @invalidate_dtlb_mapping(i64 %94)
  %96 = load i32, i32* @PAGE_SIZE, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %5, align 8
  %99 = add i64 %98, %97
  store i64 %99, i64* %5, align 8
  br label %89

100:                                              ; preds = %89
  br label %101

101:                                              ; preds = %100, %87
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @set_rasid_register(i32 %102)
  br label %107

104:                                              ; preds = %26
  %105 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %106 = call i32 @local_flush_tlb_mm(%struct.mm_struct* %105)
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i64, i64* %9, align 8
  %109 = call i32 @local_irq_restore(i64 %108)
  br label %110

110:                                              ; preds = %107, %25
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @pr_debug(i8*, i64, i64, i64) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @get_rasid_register(...) #1

declare dso_local i32 @set_rasid_register(i32) #1

declare dso_local i32 @ASID_INSERT(i64) #1

declare dso_local i32 @invalidate_itlb_mapping(i64) #1

declare dso_local i32 @invalidate_dtlb_mapping(i64) #1

declare dso_local i32 @local_flush_tlb_mm(%struct.mm_struct*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
