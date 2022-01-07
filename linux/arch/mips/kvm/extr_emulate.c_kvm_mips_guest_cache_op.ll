; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_guest_cache_op.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_guest_cache_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@EMULATE_DONE = common dso_local global i32 0, align 4
@EMULATE_FAIL = common dso_local global i32 0, align 4
@EMULATE_EXCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32 (i64)*, i64, i64, %struct.kvm_run*, %struct.kvm_vcpu*, i32)* @kvm_mips_guest_cache_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_mips_guest_cache_op(i32 (i64)* %0, i64 %1, i64 %2, %struct.kvm_run* %3, %struct.kvm_vcpu* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32 (i64)*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.kvm_run*, align 8
  %12 = alloca %struct.kvm_vcpu*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 (i64)* %0, i32 (i64)** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.kvm_run* %3, %struct.kvm_run** %11, align 8
  store %struct.kvm_vcpu* %4, %struct.kvm_vcpu** %12, align 8
  store i32 %5, i32* %13, align 4
  br label %15

15:                                               ; preds = %66, %6
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %17 = call i32 @kvm_trap_emul_gva_lockless_begin(%struct.kvm_vcpu* %16)
  %18 = load i32 (i64)*, i32 (i64)** %8, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call i32 %18(i64 %19)
  store i32 %20, i32* %14, align 4
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %22 = call i32 @kvm_trap_emul_gva_lockless_end(%struct.kvm_vcpu* %21)
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @likely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %15
  %30 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %30, i32* %7, align 4
  br label %67

31:                                               ; preds = %15
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @kvm_trap_emul_gva_fault(%struct.kvm_vcpu* %32, i64 %33, i32 0)
  switch i32 %34, label %65 [
    i32 130, label %35
    i32 131, label %35
    i32 129, label %37
    i32 128, label %51
  ]

35:                                               ; preds = %31, %31
  %36 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %36, i32* %7, align 4
  br label %67

37:                                               ; preds = %31
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %40 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %44 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i64 %42, i64* %45, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.kvm_run*, %struct.kvm_run** %11, align 8
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %49 = call i32 @kvm_mips_emulate_tlbmiss_ld(i32 %46, i32* null, %struct.kvm_run* %47, %struct.kvm_vcpu* %48)
  %50 = load i32, i32* @EMULATE_EXCEPT, align 4
  store i32 %50, i32* %7, align 4
  br label %67

51:                                               ; preds = %31
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %54 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i64 %52, i64* %55, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %58 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i64 %56, i64* %59, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load %struct.kvm_run*, %struct.kvm_run** %11, align 8
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %63 = call i32 @kvm_mips_emulate_tlbinv_ld(i32 %60, i32* null, %struct.kvm_run* %61, %struct.kvm_vcpu* %62)
  %64 = load i32, i32* @EMULATE_EXCEPT, align 4
  store i32 %64, i32* %7, align 4
  br label %67

65:                                               ; preds = %31
  br label %66

66:                                               ; preds = %65
  br label %15

67:                                               ; preds = %51, %37, %35, %29
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @kvm_trap_emul_gva_lockless_begin(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_trap_emul_gva_lockless_end(%struct.kvm_vcpu*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @kvm_trap_emul_gva_fault(%struct.kvm_vcpu*, i64, i32) #1

declare dso_local i32 @kvm_mips_emulate_tlbmiss_ld(i32, i32*, %struct.kvm_run*, %struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mips_emulate_tlbinv_ld(i32, i32*, %struct.kvm_run*, %struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
