; ModuleID = '/home/carl/AnghaBench/linux/arch/unicore32/mm/extr_fault.c___do_pf.c'
source_filename = "/home/carl/AnghaBench/linux/arch/unicore32/mm/extr_fault.c___do_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.task_struct = type { i32 }
%struct.vm_area_struct = type { i64, i32 }

@VM_FAULT_BADMAP = common dso_local global i32 0, align 4
@VM_FAULT_BADACCESS = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@VM_GROWSDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i64, i32, i32, %struct.task_struct*)* @__do_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__do_pf(%struct.mm_struct* %0, i64 %1, i32 %2, i32 %3, %struct.task_struct* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.task_struct*, align 8
  %12 = alloca %struct.vm_area_struct*, align 8
  %13 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.task_struct* %4, %struct.task_struct** %11, align 8
  %14 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %14, i64 %15)
  store %struct.vm_area_struct* %16, %struct.vm_area_struct** %12, align 8
  %17 = load i32, i32* @VM_FAULT_BADMAP, align 4
  store i32 %17, i32* %13, align 4
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %19 = icmp ne %struct.vm_area_struct* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  br label %65

25:                                               ; preds = %5
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ugt i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %51

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %63, %35
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %39 = call i64 @access_error(i32 %37, %struct.vm_area_struct* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @VM_FAULT_BADACCESS, align 4
  store i32 %42, i32* %13, align 4
  br label %65

43:                                               ; preds = %36
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @PAGE_MASK, align 8
  %47 = and i64 %45, %46
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @handle_mm_fault(%struct.vm_area_struct* %44, i64 %47, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %6, align 4
  br label %67

51:                                               ; preds = %34
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @VM_GROWSDOWN, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @expand_stack(%struct.vm_area_struct* %59, i64 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %36

64:                                               ; preds = %58, %51
  br label %65

65:                                               ; preds = %64, %41, %24
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %65, %43
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @access_error(i32, %struct.vm_area_struct*) #1

declare dso_local i32 @handle_mm_fault(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @expand_stack(%struct.vm_area_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
