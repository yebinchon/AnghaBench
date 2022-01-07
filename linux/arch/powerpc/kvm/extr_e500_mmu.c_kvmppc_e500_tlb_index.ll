; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu.c_kvmppc_e500_tlb_index.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_mmu.c_kvmppc_e500_tlb_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_vcpu_e500 = type { i64, i64, i32*, %struct.kvm_book3e_206_tlb_entry*, %struct.TYPE_2__* }
%struct.kvm_book3e_206_tlb_entry = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvmppc_vcpu_e500*, i64, i32, i32, i32)* @kvmppc_e500_tlb_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_e500_tlb_index(%struct.kvmppc_vcpu_e500* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvmppc_vcpu_e500*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.kvm_book3e_206_tlb_entry*, align 8
  %17 = alloca i32, align 4
  store %struct.kvmppc_vcpu_e500* %0, %struct.kvmppc_vcpu_e500** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %19 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %18, i32 0, i32 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %5
  %29 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @gtlb0_set_base(%struct.kvmppc_vcpu_e500* %29, i64 %30)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %33 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %32, i32 0, i32 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  br label %52

38:                                               ; preds = %5
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %41 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %47 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44, %38
  store i32 -1, i32* %6, align 4
  br label %118

51:                                               ; preds = %44
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %51, %28
  %53 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %54 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %60

60:                                               ; preds = %114, %52
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %117

64:                                               ; preds = %60
  %65 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %7, align 8
  %66 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %65, i32 0, i32 3
  %67 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %66, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %13, align 4
  %70 = add i32 %68, %69
  %71 = load i32, i32* %15, align 4
  %72 = add i32 %70, %71
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.kvm_book3e_206_tlb_entry, %struct.kvm_book3e_206_tlb_entry* %67, i64 %73
  store %struct.kvm_book3e_206_tlb_entry* %74, %struct.kvm_book3e_206_tlb_entry** %16, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %16, align 8
  %77 = call i64 @get_tlb_eaddr(%struct.kvm_book3e_206_tlb_entry* %76)
  %78 = icmp slt i64 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %64
  br label %114

80:                                               ; preds = %64
  %81 = load i64, i64* %8, align 8
  %82 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %16, align 8
  %83 = call i64 @get_tlb_end(%struct.kvm_book3e_206_tlb_entry* %82)
  %84 = icmp sgt i64 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %114

86:                                               ; preds = %80
  %87 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %16, align 8
  %88 = call i32 @get_tlb_tid(%struct.kvm_book3e_206_tlb_entry* %87)
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* %17, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %114

96:                                               ; preds = %91, %86
  %97 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %16, align 8
  %98 = call i32 @get_tlb_v(%struct.kvm_book3e_206_tlb_entry* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  br label %114

101:                                              ; preds = %96
  %102 = load %struct.kvm_book3e_206_tlb_entry*, %struct.kvm_book3e_206_tlb_entry** %16, align 8
  %103 = call i32 @get_tlb_ts(%struct.kvm_book3e_206_tlb_entry* %102)
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, -1
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %114

110:                                              ; preds = %106, %101
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %15, align 4
  %113 = add i32 %111, %112
  store i32 %113, i32* %6, align 4
  br label %118

114:                                              ; preds = %109, %100, %95, %85, %79
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %15, align 4
  br label %60

117:                                              ; preds = %60
  store i32 -1, i32* %6, align 4
  br label %118

118:                                              ; preds = %117, %110, %50
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i32 @gtlb0_set_base(%struct.kvmppc_vcpu_e500*, i64) #1

declare dso_local i64 @get_tlb_eaddr(%struct.kvm_book3e_206_tlb_entry*) #1

declare dso_local i64 @get_tlb_end(%struct.kvm_book3e_206_tlb_entry*) #1

declare dso_local i32 @get_tlb_tid(%struct.kvm_book3e_206_tlb_entry*) #1

declare dso_local i32 @get_tlb_v(%struct.kvm_book3e_206_tlb_entry*) #1

declare dso_local i32 @get_tlb_ts(%struct.kvm_book3e_206_tlb_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
