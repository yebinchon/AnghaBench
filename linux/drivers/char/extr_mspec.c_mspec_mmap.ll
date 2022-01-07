; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_mspec.c_mspec_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_mspec.c_mspec_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_area_struct = type { i64, i32, i32*, i32, %struct.vma_data*, i32, i32 }
%struct.vma_data = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@VM_DONTDUMP = common dso_local global i32 0, align 4
@MSPEC_UNCACHED = common dso_local global i64 0, align 8
@mspec_vm_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*, i32)* @mspec_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mspec_mmap(%struct.file* %0, %struct.vm_area_struct* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vma_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %112

18:                                               ; preds = %3
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @VM_SHARED, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %112

28:                                               ; preds = %18
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @VM_WRITE, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @EPERM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %112

38:                                               ; preds = %28
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %40 = call i32 @vma_pages(%struct.vm_area_struct* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 8
  %44 = add i64 20, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.vma_data* @kzalloc(i32 %50, i32 %51)
  store %struct.vma_data* %52, %struct.vma_data** %8, align 8
  br label %56

53:                                               ; preds = %38
  %54 = load i32, i32* %10, align 4
  %55 = call %struct.vma_data* @vzalloc(i32 %54)
  store %struct.vma_data* %55, %struct.vma_data** %8, align 8
  br label %56

56:                                               ; preds = %53, %49
  %57 = load %struct.vma_data*, %struct.vma_data** %8, align 8
  %58 = icmp ne %struct.vma_data* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %112

62:                                               ; preds = %56
  %63 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %64 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.vma_data*, %struct.vma_data** %8, align 8
  %67 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 4
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %69 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.vma_data*, %struct.vma_data** %8, align 8
  %72 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.vma_data*, %struct.vma_data** %8, align 8
  %75 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.vma_data*, %struct.vma_data** %8, align 8
  %77 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %76, i32 0, i32 2
  %78 = call i32 @spin_lock_init(i32* %77)
  %79 = load %struct.vma_data*, %struct.vma_data** %8, align 8
  %80 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %79, i32 0, i32 1
  %81 = call i32 @refcount_set(i32* %80, i32 1)
  %82 = load %struct.vma_data*, %struct.vma_data** %8, align 8
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %84 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %83, i32 0, i32 4
  store %struct.vma_data* %82, %struct.vma_data** %84, align 8
  %85 = load i32, i32* @VM_IO, align 4
  %86 = load i32, i32* @VM_PFNMAP, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @VM_DONTEXPAND, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @VM_DONTDUMP, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %93 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load %struct.vma_data*, %struct.vma_data** %8, align 8
  %97 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* @MSPEC_UNCACHED, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %62
  %103 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %104 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @pgprot_noncached(i32 %105)
  %107 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %108 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %102, %62
  %110 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %111 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %110, i32 0, i32 2
  store i32* @mspec_vm_ops, i32** %111, align 8
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %109, %59, %35, %25, %15
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @vma_pages(%struct.vm_area_struct*) #1

declare dso_local %struct.vma_data* @kzalloc(i32, i32) #1

declare dso_local %struct.vma_data* @vzalloc(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @pgprot_noncached(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
