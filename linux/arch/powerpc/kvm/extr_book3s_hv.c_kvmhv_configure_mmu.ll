; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmhv_configure_mmu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmhv_configure_mmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.kvm_ppc_mmuv3_cfg = type { i32, i32 }

@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@KVM_PPC_MMUV3_RADIX = common dso_local global i32 0, align 4
@KVM_PPC_MMUV3_GTSE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PATB_GR = common dso_local global i32 0, align 4
@PRTS_MASK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@LPCR_GTSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_ppc_mmuv3_cfg*)* @kvmhv_configure_mmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmhv_configure_mmu(%struct.kvm* %0, %struct.kvm_ppc_mmuv3_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.kvm_ppc_mmuv3_cfg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.kvm_ppc_mmuv3_cfg* %1, %struct.kvm_ppc_mmuv3_cfg** %5, align 8
  %9 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %10 = call i32 @cpu_has_feature(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %156

15:                                               ; preds = %2
  %16 = load %struct.kvm_ppc_mmuv3_cfg*, %struct.kvm_ppc_mmuv3_cfg** %5, align 8
  %17 = getelementptr inbounds %struct.kvm_ppc_mmuv3_cfg, %struct.kvm_ppc_mmuv3_cfg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @KVM_PPC_MMUV3_RADIX, align 4
  %20 = load i32, i32* @KVM_PPC_MMUV3_GTSE, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = and i32 %18, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %156

28:                                               ; preds = %15
  %29 = load %struct.kvm_ppc_mmuv3_cfg*, %struct.kvm_ppc_mmuv3_cfg** %5, align 8
  %30 = getelementptr inbounds %struct.kvm_ppc_mmuv3_cfg, %struct.kvm_ppc_mmuv3_cfg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @KVM_PPC_MMUV3_RADIX, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load %struct.kvm_ppc_mmuv3_cfg*, %struct.kvm_ppc_mmuv3_cfg** %5, align 8
  %39 = getelementptr inbounds %struct.kvm_ppc_mmuv3_cfg, %struct.kvm_ppc_mmuv3_cfg* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PATB_GR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %28
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %156

52:                                               ; preds = %28
  %53 = load %struct.kvm_ppc_mmuv3_cfg*, %struct.kvm_ppc_mmuv3_cfg** %5, align 8
  %54 = getelementptr inbounds %struct.kvm_ppc_mmuv3_cfg, %struct.kvm_ppc_mmuv3_cfg* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PRTS_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp sgt i32 %57, 24
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %156

62:                                               ; preds = %52
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = call i32 (...) @radix_enabled()
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %156

71:                                               ; preds = %65, %62
  %72 = call i64 (...) @kvmhv_on_pseries()
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %156

80:                                               ; preds = %74, %71
  %81 = load %struct.kvm*, %struct.kvm** %4, align 8
  %82 = getelementptr inbounds %struct.kvm, %struct.kvm* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  %84 = call i32 @mutex_lock(i32* %83)
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.kvm*, %struct.kvm** %4, align 8
  %87 = call i32 @kvm_is_radix(%struct.kvm* %86)
  %88 = icmp ne i32 %85, %87
  br i1 %88, label %89, label %126

89:                                               ; preds = %80
  %90 = load %struct.kvm*, %struct.kvm** %4, align 8
  %91 = getelementptr inbounds %struct.kvm, %struct.kvm* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %89
  %96 = load %struct.kvm*, %struct.kvm** %4, align 8
  %97 = getelementptr inbounds %struct.kvm, %struct.kvm* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  store i32 0, i32* %98, align 4
  %99 = call i32 (...) @smp_mb()
  %100 = load %struct.kvm*, %struct.kvm** %4, align 8
  %101 = getelementptr inbounds %struct.kvm, %struct.kvm* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  %103 = call i64 @atomic_read(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %95
  %106 = load %struct.kvm*, %struct.kvm** %4, align 8
  %107 = getelementptr inbounds %struct.kvm, %struct.kvm* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i32 1, i32* %108, align 4
  %109 = load i32, i32* @EBUSY, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %8, align 4
  br label %150

111:                                              ; preds = %95
  br label %112

112:                                              ; preds = %111, %89
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load %struct.kvm*, %struct.kvm** %4, align 8
  %117 = call i32 @kvmppc_switch_mmu_to_radix(%struct.kvm* %116)
  store i32 %117, i32* %8, align 4
  br label %121

118:                                              ; preds = %112
  %119 = load %struct.kvm*, %struct.kvm** %4, align 8
  %120 = call i32 @kvmppc_switch_mmu_to_hpt(%struct.kvm* %119)
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %150

125:                                              ; preds = %121
  br label %126

126:                                              ; preds = %125, %80
  %127 = load %struct.kvm_ppc_mmuv3_cfg*, %struct.kvm_ppc_mmuv3_cfg** %5, align 8
  %128 = getelementptr inbounds %struct.kvm_ppc_mmuv3_cfg, %struct.kvm_ppc_mmuv3_cfg* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.kvm*, %struct.kvm** %4, align 8
  %131 = getelementptr inbounds %struct.kvm, %struct.kvm* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 4
  %133 = load %struct.kvm*, %struct.kvm** %4, align 8
  %134 = call i32 @kvmppc_setup_partition_table(%struct.kvm* %133)
  %135 = load %struct.kvm_ppc_mmuv3_cfg*, %struct.kvm_ppc_mmuv3_cfg** %5, align 8
  %136 = getelementptr inbounds %struct.kvm_ppc_mmuv3_cfg, %struct.kvm_ppc_mmuv3_cfg* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @KVM_PPC_MMUV3_GTSE, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %126
  %142 = load i64, i64* @LPCR_GTSE, align 8
  br label %144

143:                                              ; preds = %126
  br label %144

144:                                              ; preds = %143, %141
  %145 = phi i64 [ %142, %141 ], [ 0, %143 ]
  store i64 %145, i64* %6, align 8
  %146 = load %struct.kvm*, %struct.kvm** %4, align 8
  %147 = load i64, i64* %6, align 8
  %148 = load i64, i64* @LPCR_GTSE, align 8
  %149 = call i32 @kvmppc_update_lpcr(%struct.kvm* %146, i64 %147, i64 %148)
  store i32 0, i32* %8, align 4
  br label %150

150:                                              ; preds = %144, %124, %105
  %151 = load %struct.kvm*, %struct.kvm** %4, align 8
  %152 = getelementptr inbounds %struct.kvm, %struct.kvm* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 2
  %154 = call i32 @mutex_unlock(i32* %153)
  %155 = load i32, i32* %8, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %150, %77, %68, %59, %49, %25, %12
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @cpu_has_feature(i32) #1

declare dso_local i32 @radix_enabled(...) #1

declare dso_local i64 @kvmhv_on_pseries(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kvm_is_radix(%struct.kvm*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @kvmppc_switch_mmu_to_radix(%struct.kvm*) #1

declare dso_local i32 @kvmppc_switch_mmu_to_hpt(%struct.kvm*) #1

declare dso_local i32 @kvmppc_setup_partition_table(%struct.kvm*) #1

declare dso_local i32 @kvmppc_update_lpcr(%struct.kvm*, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
