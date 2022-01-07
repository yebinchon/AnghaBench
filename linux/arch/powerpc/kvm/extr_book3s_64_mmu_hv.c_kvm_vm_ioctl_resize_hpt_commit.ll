; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvm_vm_ioctl_resize_hpt_commit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu_hv.c_kvm_vm_ioctl_resize_hpt_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.kvm_resize_hpt* }
%struct.kvm_resize_hpt = type { i64, i64 }
%struct.kvm_ppc_resize_hpt = type { i64, i64 }

@EINVAL = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@resize_hpt_boot_vcpu = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kvm_vm_ioctl_resize_hpt_commit(%struct.kvm* %0, %struct.kvm_ppc_resize_hpt* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_ppc_resize_hpt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kvm_resize_hpt*, align 8
  %9 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_ppc_resize_hpt* %1, %struct.kvm_ppc_resize_hpt** %5, align 8
  %10 = load %struct.kvm_ppc_resize_hpt*, %struct.kvm_ppc_resize_hpt** %5, align 8
  %11 = getelementptr inbounds %struct.kvm_ppc_resize_hpt, %struct.kvm_ppc_resize_hpt* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.kvm_ppc_resize_hpt*, %struct.kvm_ppc_resize_hpt** %5, align 8
  %14 = getelementptr inbounds %struct.kvm_ppc_resize_hpt, %struct.kvm_ppc_resize_hpt* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load %struct.kvm*, %struct.kvm** %4, align 8
  %20 = call i64 @kvm_is_radix(%struct.kvm* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %2
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub nsw i64 0, %23
  store i64 %24, i64* %3, align 8
  br label %106

25:                                               ; preds = %18
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i64, i64* %7, align 8
  %30 = icmp ult i64 %29, 18
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* %7, align 8
  %33 = icmp ugt i64 %32, 46
  br i1 %33, label %34, label %37

34:                                               ; preds = %31, %28
  %35 = load i64, i64* @EINVAL, align 8
  %36 = sub nsw i64 0, %35
  store i64 %36, i64* %3, align 8
  br label %106

37:                                               ; preds = %31, %25
  %38 = load %struct.kvm*, %struct.kvm** %4, align 8
  %39 = getelementptr inbounds %struct.kvm, %struct.kvm* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.kvm*, %struct.kvm** %4, align 8
  %43 = getelementptr inbounds %struct.kvm, %struct.kvm* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %44, align 8
  store %struct.kvm_resize_hpt* %45, %struct.kvm_resize_hpt** %8, align 8
  %46 = load i64, i64* @EIO, align 8
  %47 = sub nsw i64 0, %46
  store i64 %47, i64* %9, align 8
  %48 = load %struct.kvm*, %struct.kvm** %4, align 8
  %49 = getelementptr inbounds %struct.kvm, %struct.kvm* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i64 @WARN_ON(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %37
  br label %97

58:                                               ; preds = %37
  %59 = load %struct.kvm*, %struct.kvm** %4, align 8
  %60 = getelementptr inbounds %struct.kvm, %struct.kvm* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  %62 = call i32 (...) @smp_mb()
  %63 = load i32, i32* @resize_hpt_boot_vcpu, align 4
  %64 = call i32 @on_each_cpu(i32 %63, i32* null, i32 1)
  %65 = load i64, i64* @ENXIO, align 8
  %66 = sub nsw i64 0, %65
  store i64 %66, i64* %9, align 8
  %67 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %8, align 8
  %68 = icmp ne %struct.kvm_resize_hpt* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %58
  %70 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %8, align 8
  %71 = getelementptr inbounds %struct.kvm_resize_hpt, %struct.kvm_resize_hpt* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69, %58
  br label %92

76:                                               ; preds = %69
  %77 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %8, align 8
  %78 = getelementptr inbounds %struct.kvm_resize_hpt, %struct.kvm_resize_hpt* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %9, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %92

83:                                               ; preds = %76
  %84 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %8, align 8
  %85 = call i64 @resize_hpt_rehash(%struct.kvm_resize_hpt* %84)
  store i64 %85, i64* %9, align 8
  %86 = load i64, i64* %9, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %92

89:                                               ; preds = %83
  %90 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %8, align 8
  %91 = call i32 @resize_hpt_pivot(%struct.kvm_resize_hpt* %90)
  br label %92

92:                                               ; preds = %89, %88, %82, %75
  %93 = load %struct.kvm*, %struct.kvm** %4, align 8
  %94 = getelementptr inbounds %struct.kvm, %struct.kvm* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  %96 = call i32 (...) @smp_mb()
  br label %97

97:                                               ; preds = %92, %57
  %98 = load %struct.kvm*, %struct.kvm** %4, align 8
  %99 = load %struct.kvm_resize_hpt*, %struct.kvm_resize_hpt** %8, align 8
  %100 = call i32 @resize_hpt_release(%struct.kvm* %98, %struct.kvm_resize_hpt* %99)
  %101 = load %struct.kvm*, %struct.kvm** %4, align 8
  %102 = getelementptr inbounds %struct.kvm, %struct.kvm* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load i64, i64* %9, align 8
  store i64 %105, i64* %3, align 8
  br label %106

106:                                              ; preds = %97, %34, %22
  %107 = load i64, i64* %3, align 8
  ret i64 %107
}

declare dso_local i64 @kvm_is_radix(%struct.kvm*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @on_each_cpu(i32, i32*, i32) #1

declare dso_local i64 @resize_hpt_rehash(%struct.kvm_resize_hpt*) #1

declare dso_local i32 @resize_hpt_pivot(%struct.kvm_resize_hpt*) #1

declare dso_local i32 @resize_hpt_release(%struct.kvm*, %struct.kvm_resize_hpt*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
