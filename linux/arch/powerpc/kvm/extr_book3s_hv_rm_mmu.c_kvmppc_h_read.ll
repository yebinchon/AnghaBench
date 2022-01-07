; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_kvmppc_h_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_mmu.c_kvmppc_h_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_7__, %struct.kvm* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64* }
%struct.kvm = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32* }
%struct.revmap_entry = type { i64 }

@H_FUNCTION = common dso_local global i64 0, align 8
@H_PARAMETER = common dso_local global i64 0, align 8
@H_READ_4 = common dso_local global i64 0, align 8
@HPTE_V_HVLOCK = common dso_local global i64 0, align 8
@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@HPTE_V_ABSENT = common dso_local global i64 0, align 8
@HPTE_V_VALID = common dso_local global i64 0, align 8
@HPTE_R_R = common dso_local global i64 0, align 8
@HPTE_R_C = common dso_local global i64 0, align 8
@HPTE_GR_RESERVED = common dso_local global i64 0, align 8
@H_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kvmppc_h_read(%struct.kvm_vcpu* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kvm*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.revmap_entry*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 1
  %17 = load %struct.kvm*, %struct.kvm** %16, align 8
  store %struct.kvm* %17, %struct.kvm** %8, align 8
  store i32 1, i32* %13, align 4
  store %struct.revmap_entry* null, %struct.revmap_entry** %14, align 8
  %18 = load %struct.kvm*, %struct.kvm** %8, align 8
  %19 = call i64 @kvm_is_radix(%struct.kvm* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* @H_FUNCTION, align 8
  store i64 %22, i64* %4, align 8
  br label %148

23:                                               ; preds = %3
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.kvm*, %struct.kvm** %8, align 8
  %26 = getelementptr inbounds %struct.kvm, %struct.kvm* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = call i64 @kvmppc_hpt_npte(%struct.TYPE_8__* %27)
  %29 = icmp uge i64 %24, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i64, i64* @H_PARAMETER, align 8
  store i64 %31, i64* %4, align 8
  br label %148

32:                                               ; preds = %23
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @H_READ_4, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i64, i64* %7, align 8
  %39 = and i64 %38, -4
  store i64 %39, i64* %7, align 8
  store i32 4, i32* %13, align 4
  br label %40

40:                                               ; preds = %37, %32
  %41 = load %struct.kvm*, %struct.kvm** %8, align 8
  %42 = getelementptr inbounds %struct.kvm, %struct.kvm* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = call %struct.revmap_entry* @real_vmalloc_addr(i32* %47)
  store %struct.revmap_entry* %48, %struct.revmap_entry** %14, align 8
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %141, %40
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %146

53:                                               ; preds = %49
  %54 = load %struct.kvm*, %struct.kvm** %8, align 8
  %55 = getelementptr inbounds %struct.kvm, %struct.kvm* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = shl i64 %59, 4
  %61 = add i64 %58, %60
  %62 = inttoptr i64 %61 to i32*
  store i32* %62, i32** %9, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @be64_to_cpu(i32 %65)
  %67 = load i64, i64* @HPTE_V_HVLOCK, align 8
  %68 = xor i64 %67, -1
  %69 = and i64 %66, %68
  store i64 %69, i64* %10, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @be64_to_cpu(i32 %72)
  store i64 %73, i64* %11, align 8
  %74 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %75 = call i64 @cpu_has_feature(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %53
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call i64 @hpte_new_to_old_v(i64 %78, i64 %79)
  store i64 %80, i64* %10, align 8
  %81 = load i64, i64* %11, align 8
  %82 = call i64 @hpte_new_to_old_r(i64 %81)
  store i64 %82, i64* %11, align 8
  br label %83

83:                                               ; preds = %77, %53
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* @HPTE_V_ABSENT, align 8
  %86 = and i64 %84, %85
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load i64, i64* @HPTE_V_ABSENT, align 8
  %90 = xor i64 %89, -1
  %91 = load i64, i64* %10, align 8
  %92 = and i64 %91, %90
  store i64 %92, i64* %10, align 8
  %93 = load i64, i64* @HPTE_V_VALID, align 8
  %94 = load i64, i64* %10, align 8
  %95 = or i64 %94, %93
  store i64 %95, i64* %10, align 8
  br label %96

96:                                               ; preds = %88, %83
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* @HPTE_V_VALID, align 8
  %99 = and i64 %97, %98
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %118

101:                                              ; preds = %96
  %102 = load %struct.revmap_entry*, %struct.revmap_entry** %14, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %102, i64 %104
  %106 = getelementptr inbounds %struct.revmap_entry, %struct.revmap_entry* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* @HPTE_R_R, align 8
  %110 = load i64, i64* @HPTE_R_C, align 8
  %111 = or i64 %109, %110
  %112 = and i64 %108, %111
  %113 = or i64 %107, %112
  store i64 %113, i64* %11, align 8
  %114 = load i64, i64* @HPTE_GR_RESERVED, align 8
  %115 = xor i64 %114, -1
  %116 = load i64, i64* %11, align 8
  %117 = and i64 %116, %115
  store i64 %117, i64* %11, align 8
  br label %118

118:                                              ; preds = %101, %96
  %119 = load i64, i64* %10, align 8
  %120 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %121 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = mul nsw i32 %125, 2
  %127 = add nsw i32 4, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %124, i64 %128
  store i64 %119, i64* %129, align 8
  %130 = load i64, i64* %11, align 8
  %131 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %132 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = mul nsw i32 %136, 2
  %138 = add nsw i32 5, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %135, i64 %139
  store i64 %130, i64* %140, align 8
  br label %141

141:                                              ; preds = %118
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %12, align 4
  %144 = load i64, i64* %7, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %7, align 8
  br label %49

146:                                              ; preds = %49
  %147 = load i64, i64* @H_SUCCESS, align 8
  store i64 %147, i64* %4, align 8
  br label %148

148:                                              ; preds = %146, %30, %21
  %149 = load i64, i64* %4, align 8
  ret i64 %149
}

declare dso_local i64 @kvm_is_radix(%struct.kvm*) #1

declare dso_local i64 @kvmppc_hpt_npte(%struct.TYPE_8__*) #1

declare dso_local %struct.revmap_entry* @real_vmalloc_addr(i32*) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i64 @hpte_new_to_old_v(i64, i64) #1

declare dso_local i64 @hpte_new_to_old_r(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
