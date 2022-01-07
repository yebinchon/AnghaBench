; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_mmio.c_get_pfn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_mmio.c_get_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.vm_area_struct = type { i64 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@EINVAL = common dso_local global i64 0, align 8
@EACCES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64*)* @get_pfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_pfn(i64 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32 @down_read(i32* %12)
  %14 = load i64, i64* @EINVAL, align 8
  %15 = sub nsw i64 0, %14
  store i64 %15, i64* %8, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call %struct.vm_area_struct* @find_vma(%struct.TYPE_3__* %18, i64 %19)
  store %struct.vm_area_struct* %20, %struct.vm_area_struct** %7, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %22 = icmp ne %struct.vm_area_struct* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %39

24:                                               ; preds = %3
  %25 = load i64, i64* @EACCES, align 8
  %26 = sub nsw i64 0, %25
  store i64 %26, i64* %8, align 8
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %39

34:                                               ; preds = %24
  %35 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64*, i64** %6, align 8
  %38 = call i64 @follow_pfn(%struct.vm_area_struct* %35, i64 %36, i64* %37)
  store i64 %38, i64* %8, align 8
  br label %39

39:                                               ; preds = %34, %33, %23
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = call i32 @up_read(i32* %43)
  %45 = load i64, i64* %8, align 8
  ret i64 %45
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.TYPE_3__*, i64) #1

declare dso_local i64 @follow_pfn(%struct.vm_area_struct*, i64, i64*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
