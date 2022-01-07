; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive_native.c_kvmppc_xive_native_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive_native.c_kvmppc_xive_native_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_device = type { %struct.kvmppc_xive* }
%struct.kvmppc_xive = type { i32 }
%struct.vm_area_struct = type { i64, i32, %struct.TYPE_2__*, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@KVM_XIVE_TIMA_PAGE_OFFSET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@xive_native_tima_vmops = common dso_local global i32 0, align 4
@KVM_XIVE_ESB_PAGE_OFFSET = common dso_local global i64 0, align 8
@KVMPPC_XIVE_NR_IRQS = common dso_local global i32 0, align 4
@xive_native_esb_vmops = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_device*, %struct.vm_area_struct*)* @kvmppc_xive_native_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_xive_native_mmap(%struct.kvm_device* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_device*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.kvmppc_xive*, align 8
  store %struct.kvm_device* %0, %struct.kvm_device** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %7 = load %struct.kvm_device*, %struct.kvm_device** %4, align 8
  %8 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %7, i32 0, i32 0
  %9 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %8, align 8
  store %struct.kvmppc_xive* %9, %struct.kvmppc_xive** %6, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @KVM_XIVE_TIMA_PAGE_OFFSET, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %17 = call i32 @vma_pages(%struct.vm_area_struct* %16)
  %18 = icmp sgt i32 %17, 4
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %68

22:                                               ; preds = %15
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 4
  store i32* @xive_native_tima_vmops, i32** %24, align 8
  br label %47

25:                                               ; preds = %2
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @KVM_XIVE_ESB_PAGE_OFFSET, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %33 = call i32 @vma_pages(%struct.vm_area_struct* %32)
  %34 = load i32, i32* @KVMPPC_XIVE_NR_IRQS, align 4
  %35 = mul nsw i32 %34, 2
  %36 = icmp sgt i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %68

40:                                               ; preds = %31
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %42 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %41, i32 0, i32 4
  store i32* @xive_native_esb_vmops, i32** %42, align 8
  br label %46

43:                                               ; preds = %25
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %68

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %22
  %48 = load i32, i32* @VM_IO, align 4
  %49 = load i32, i32* @VM_PFNMAP, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %52 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %56 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @pgprot_noncached_wc(i32 %57)
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %60 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %62 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.kvmppc_xive*, %struct.kvmppc_xive** %6, align 8
  %67 = getelementptr inbounds %struct.kvmppc_xive, %struct.kvmppc_xive* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %47, %43, %37, %19
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @vma_pages(%struct.vm_area_struct*) #1

declare dso_local i32 @pgprot_noncached_wc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
