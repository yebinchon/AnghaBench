; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_trap_vz_handle_hc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_trap_vz_handle_hc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%union.mips_instruction = type { i32 }

@CAUSEF_BD = common dso_local global i32 0, align 4
@EMULATE_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.kvm_vcpu*)* @kvm_trap_vz_handle_hc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_trap_vz_handle_hc(i32 %0, i32* %1, %struct.kvm_vcpu* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.mips_instruction, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.kvm_vcpu* %2, %struct.kvm_vcpu** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @CAUSEF_BD, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32* %18, i32** %6, align 8
  br label %19

19:                                               ; preds = %16, %3
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %22 = bitcast %union.mips_instruction* %9 to i32*
  %23 = call i32 @kvm_get_badinstr(i32* %20, %struct.kvm_vcpu* %21, i32* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %27, i32* %4, align 4
  br label %56

28:                                               ; preds = %19
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %10, align 8
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @update_pc(%struct.kvm_vcpu* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @EMULATE_FAIL, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %56

41:                                               ; preds = %28
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %43 = getelementptr inbounds %union.mips_instruction, %union.mips_instruction* %9, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @kvm_mips_emul_hypcall(%struct.kvm_vcpu* %42, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @EMULATE_FAIL, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  br label %54

54:                                               ; preds = %49, %41
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %39, %26
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @kvm_get_badinstr(i32*, %struct.kvm_vcpu*, i32*) #1

declare dso_local i32 @update_pc(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_mips_emul_hypcall(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
