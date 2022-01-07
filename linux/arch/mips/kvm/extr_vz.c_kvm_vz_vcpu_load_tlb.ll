; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_vcpu_load_tlb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_vcpu_load_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_3__, %struct.kvm* }
%struct.TYPE_3__ = type { i32, i32* }
%struct.kvm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.mm_struct }
%struct.mm_struct = type { i32 }

@cpu_has_guestid = common dso_local global i64 0, align 8
@GUESTID_VERSION_MASK = common dso_local global i32 0, align 4
@GUESTID_MASK = common dso_local global i32 0, align 4
@last_exec_vcpu = common dso_local global %struct.kvm_vcpu** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32)* @kvm_vz_vcpu_load_tlb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_vz_vcpu_load_tlb(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 1
  %10 = load %struct.kvm*, %struct.kvm** %9, align 8
  store %struct.kvm* %10, %struct.kvm** %5, align 8
  %11 = load %struct.kvm*, %struct.kvm** %5, align 8
  %12 = getelementptr inbounds %struct.kvm, %struct.kvm* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store %struct.mm_struct* %13, %struct.mm_struct** %6, align 8
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load i64, i64* @cpu_has_guestid, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %79

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %27
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %32 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @guestid_cache(i32 %39)
  %41 = xor i32 %38, %40
  %42 = load i32, i32* @GUESTID_VERSION_MASK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %30, %27
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %48 = call i32 @kvm_vz_get_new_guestid(i32 %46, %struct.kvm_vcpu* %47)
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @guestid_cache(i32 %49)
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %50, i32* %57, align 4
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %60 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @trace_kvm_guestid_change(%struct.kvm_vcpu* %58, i32 %66)
  br label %68

68:                                               ; preds = %45, %30
  %69 = load i32, i32* @GUESTID_MASK, align 4
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %71 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @change_c0_guestctl1(i32 %69, i32 %77)
  br label %111

79:                                               ; preds = %2
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %79
  %83 = load %struct.kvm_vcpu**, %struct.kvm_vcpu*** @last_exec_vcpu, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.kvm_vcpu*, %struct.kvm_vcpu** %83, i64 %85
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %86, align 8
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %89 = icmp ne %struct.kvm_vcpu* %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %82, %79
  %91 = call i32 (...) @kvm_vz_local_flush_guesttlb_all()
  br label %92

92:                                               ; preds = %90, %82
  %93 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %94 = load %struct.kvm_vcpu**, %struct.kvm_vcpu*** @last_exec_vcpu, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.kvm_vcpu*, %struct.kvm_vcpu** %94, i64 %96
  store %struct.kvm_vcpu* %93, %struct.kvm_vcpu** %97, align 8
  %98 = load i32, i32* %4, align 4
  %99 = load %struct.kvm*, %struct.kvm** %5, align 8
  %100 = getelementptr inbounds %struct.kvm, %struct.kvm* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = call i64 @cpumask_test_and_clear_cpu(i32 %98, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %92
  %105 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %106 = call i32 @get_new_mmu_context(%struct.mm_struct* %105)
  br label %110

107:                                              ; preds = %92
  %108 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %109 = call i32 @check_mmu_context(%struct.mm_struct* %108)
  br label %110

110:                                              ; preds = %107, %104
  br label %111

111:                                              ; preds = %110, %68
  ret void
}

declare dso_local i32 @guestid_cache(i32) #1

declare dso_local i32 @kvm_vz_get_new_guestid(i32, %struct.kvm_vcpu*) #1

declare dso_local i32 @trace_kvm_guestid_change(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @change_c0_guestctl1(i32, i32) #1

declare dso_local i32 @kvm_vz_local_flush_guesttlb_all(...) #1

declare dso_local i64 @cpumask_test_and_clear_cpu(i32, i32*) #1

declare dso_local i32 @get_new_mmu_context(%struct.mm_struct*) #1

declare dso_local i32 @check_mmu_context(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
