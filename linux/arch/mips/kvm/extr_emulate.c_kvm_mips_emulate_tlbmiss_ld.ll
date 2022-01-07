; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_emulate_tlbmiss_ld.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_emulate.c_kvm_mips_emulate_tlbmiss_ld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { i32 }
%struct.kvm_vcpu = type { %struct.kvm_vcpu_arch }
%struct.kvm_vcpu_arch = type { i64, i8*, %struct.mips_coproc* }
%struct.mips_coproc = type { i32 }

@VPN2_MASK = common dso_local global i64 0, align 8
@KVM_ENTRYHI_ASID = common dso_local global i64 0, align 8
@ST0_EXL = common dso_local global i32 0, align 4
@CAUSEF_BD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"[EXL == 0] delivering TLB MISS @ pc %#lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"[EXL == 1] delivering TLB MISS @ pc %#lx\0A\00", align 1
@EXCCODE_TLBL = common dso_local global i32 0, align 4
@CAUSEB_EXCCODE = common dso_local global i32 0, align 4
@EMULATE_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_mips_emulate_tlbmiss_ld(i32 %0, i32* %1, %struct.kvm_run* %2, %struct.kvm_vcpu* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.kvm_run*, align 8
  %8 = alloca %struct.kvm_vcpu*, align 8
  %9 = alloca %struct.mips_coproc*, align 8
  %10 = alloca %struct.kvm_vcpu_arch*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.kvm_run* %2, %struct.kvm_run** %7, align 8
  store %struct.kvm_vcpu* %3, %struct.kvm_vcpu** %8, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %13, i32 0, i32 2
  %15 = load %struct.mips_coproc*, %struct.mips_coproc** %14, align 8
  store %struct.mips_coproc* %15, %struct.mips_coproc** %9, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 0
  store %struct.kvm_vcpu_arch* %17, %struct.kvm_vcpu_arch** %10, align 8
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VPN2_MASK, align 8
  %23 = and i64 %21, %22
  %24 = load %struct.mips_coproc*, %struct.mips_coproc** %9, align 8
  %25 = call i64 @kvm_read_c0_guest_entryhi(%struct.mips_coproc* %24)
  %26 = load i64, i64* @KVM_ENTRYHI_ASID, align 8
  %27 = and i64 %25, %26
  %28 = or i64 %23, %27
  store i64 %28, i64* %11, align 8
  %29 = load %struct.mips_coproc*, %struct.mips_coproc** %9, align 8
  %30 = call i32 @kvm_read_c0_guest_status(%struct.mips_coproc* %29)
  %31 = load i32, i32* @ST0_EXL, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %65

34:                                               ; preds = %4
  %35 = load %struct.mips_coproc*, %struct.mips_coproc** %9, align 8
  %36 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %10, align 8
  %37 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @kvm_write_c0_guest_epc(%struct.mips_coproc* %35, i8* %38)
  %40 = load %struct.mips_coproc*, %struct.mips_coproc** %9, align 8
  %41 = load i32, i32* @ST0_EXL, align 4
  %42 = call i32 @kvm_set_c0_guest_status(%struct.mips_coproc* %40, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @CAUSEF_BD, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %34
  %48 = load %struct.mips_coproc*, %struct.mips_coproc** %9, align 8
  %49 = load i32, i32* @CAUSEF_BD, align 4
  %50 = call i32 @kvm_set_c0_guest_cause(%struct.mips_coproc* %48, i32 %49)
  br label %55

51:                                               ; preds = %34
  %52 = load %struct.mips_coproc*, %struct.mips_coproc** %9, align 8
  %53 = load i32, i32* @CAUSEF_BD, align 4
  %54 = call i32 @kvm_clear_c0_guest_cause(%struct.mips_coproc* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %47
  %56 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %10, align 8
  %57 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @kvm_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %58)
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %61 = call i8* @kvm_mips_guest_exception_base(%struct.kvm_vcpu* %60)
  %62 = getelementptr i8, i8* %61, i64 0
  %63 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %10, align 8
  %64 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  br label %75

65:                                               ; preds = %4
  %66 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %10, align 8
  %67 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @kvm_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %68)
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %71 = call i8* @kvm_mips_guest_exception_base(%struct.kvm_vcpu* %70)
  %72 = getelementptr i8, i8* %71, i64 384
  %73 = load %struct.kvm_vcpu_arch*, %struct.kvm_vcpu_arch** %10, align 8
  %74 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %65, %55
  %76 = load %struct.mips_coproc*, %struct.mips_coproc** %9, align 8
  %77 = load i32, i32* @EXCCODE_TLBL, align 4
  %78 = load i32, i32* @CAUSEB_EXCCODE, align 4
  %79 = shl i32 %77, %78
  %80 = call i32 @kvm_change_c0_guest_cause(%struct.mips_coproc* %76, i32 255, i32 %79)
  %81 = load %struct.mips_coproc*, %struct.mips_coproc** %9, align 8
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %83 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.kvm_vcpu_arch, %struct.kvm_vcpu_arch* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @kvm_write_c0_guest_badvaddr(%struct.mips_coproc* %81, i64 %85)
  %87 = load %struct.mips_coproc*, %struct.mips_coproc** %9, align 8
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @kvm_write_c0_guest_entryhi(%struct.mips_coproc* %87, i64 %88)
  %90 = load i32, i32* @EMULATE_DONE, align 4
  ret i32 %90
}

declare dso_local i64 @kvm_read_c0_guest_entryhi(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_read_c0_guest_status(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_write_c0_guest_epc(%struct.mips_coproc*, i8*) #1

declare dso_local i32 @kvm_set_c0_guest_status(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_set_c0_guest_cause(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_clear_c0_guest_cause(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_debug(i8*, i8*) #1

declare dso_local i8* @kvm_mips_guest_exception_base(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_change_c0_guest_cause(%struct.mips_coproc*, i32, i32) #1

declare dso_local i32 @kvm_write_c0_guest_badvaddr(%struct.mips_coproc*, i64) #1

declare dso_local i32 @kvm_write_c0_guest_entryhi(%struct.mips_coproc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
