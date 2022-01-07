; ModuleID = '/home/carl/AnghaBench/linux/arch/um/kernel/extr_tlb.c_force_flush_all.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/kernel/extr_tlb.c_force_flush_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { %struct.vm_area_struct* }
%struct.vm_area_struct = type { %struct.vm_area_struct*, i32, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @force_flush_all() #0 {
  %1 = alloca %struct.mm_struct*, align 8
  %2 = alloca %struct.vm_area_struct*, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  store %struct.mm_struct* %5, %struct.mm_struct** %1, align 8
  %6 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %7 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %6, i32 0, i32 0
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  store %struct.vm_area_struct* %8, %struct.vm_area_struct** %2, align 8
  br label %9

9:                                                ; preds = %12, %0
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %11 = icmp ne %struct.vm_area_struct* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @fix_range(%struct.mm_struct* %13, i32 %16, i32 %19, i32 1)
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %22, align 8
  store %struct.vm_area_struct* %23, %struct.vm_area_struct** %2, align 8
  br label %9

24:                                               ; preds = %9
  ret void
}

declare dso_local i32 @fix_range(%struct.mm_struct*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
