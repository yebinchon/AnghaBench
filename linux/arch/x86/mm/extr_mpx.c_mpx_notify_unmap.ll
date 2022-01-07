; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_mpx.c_mpx_notify_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_mpx.c_mpx_notify_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mm_struct = type { i32 }
%struct.vm_area_struct = type { i64, i32, %struct.vm_area_struct* }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@VM_MPX = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpx_notify_unmap(%struct.mm_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @kernel_managing_mpx_tables(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %52

15:                                               ; preds = %3
  %16 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %16, i64 %17)
  store %struct.vm_area_struct* %18, %struct.vm_area_struct** %7, align 8
  br label %19

19:                                               ; preds = %38, %15
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %21 = icmp ne %struct.vm_area_struct* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ult i64 %25, %26
  br label %28

28:                                               ; preds = %22, %19
  %29 = phi i1 [ false, %19 ], [ %27, %22 ]
  br i1 %29, label %30, label %42

30:                                               ; preds = %28
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @VM_MPX, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %52

38:                                               ; preds = %30
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %40 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %39, i32 0, i32 2
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %40, align 8
  store %struct.vm_area_struct* %41, %struct.vm_area_struct** %7, align 8
  br label %19

42:                                               ; preds = %28
  %43 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @mpx_unmap_tables(%struct.mm_struct* %43, i64 %44, i64 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @SIGSEGV, align 4
  %51 = call i32 @force_sig(i32 %50)
  br label %52

52:                                               ; preds = %14, %37, %49, %42
  ret void
}

declare dso_local i32 @kernel_managing_mpx_tables(i32) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i32 @mpx_unmap_tables(%struct.mm_struct*, i64, i64) #1

declare dso_local i32 @force_sig(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
