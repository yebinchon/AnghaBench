; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_trap_emul.c_kvm_trap_emul_vcpu_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_trap_emul.c_kvm_trap_emul_vcpu_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.mips_coproc* }
%struct.mips_coproc = type { i32 }

@MIPS_CONF_AR = common dso_local global i32 0, align 4
@MIPS_CONF_M = common dso_local global i32 0, align 4
@CONF_CM_CACHABLE_NONCOHERENT = common dso_local global i32 0, align 4
@MIPS_CONF_MT_TLB = common dso_local global i32 0, align 4
@cpu_has_vtag_icache = common dso_local global i64 0, align 8
@MIPS_CONF_VI = common dso_local global i32 0, align 4
@MIPS_CONF1_DL = common dso_local global i32 0, align 4
@MIPS_CONF1_DL_SHF = common dso_local global i32 0, align 4
@KVM_MIPS_GUEST_TLB_SIZE = common dso_local global i32 0, align 4
@MIPS_CONF1_C2 = common dso_local global i32 0, align 4
@MIPS_CONF1_MD = common dso_local global i32 0, align 4
@MIPS_CONF1_PC = common dso_local global i32 0, align 4
@MIPS_CONF1_WR = common dso_local global i32 0, align 4
@MIPS_CONF1_CA = common dso_local global i32 0, align 4
@MIPS_CONF3_ULRI = common dso_local global i32 0, align 4
@MIPS_CONF7_WII = common dso_local global i32 0, align 4
@ST0_BEV = common dso_local global i32 0, align 4
@ST0_ERL = common dso_local global i32 0, align 4
@KVM_GUEST_KSEG0 = common dso_local global i32 0, align 4
@MIPS_EBASE_CPUNUM = common dso_local global i32 0, align 4
@CONF_BE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @kvm_trap_emul_vcpu_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_trap_emul_vcpu_setup(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.mips_coproc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.mips_coproc*, %struct.mips_coproc** %9, align 8
  store %struct.mips_coproc* %10, %struct.mips_coproc** %3, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %15 = call i32 @kvm_mips_init_count(%struct.kvm_vcpu* %14, i32 100000000)
  %16 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %17 = call i32 @kvm_write_c0_guest_prid(%struct.mips_coproc* %16, i32 103168)
  %18 = call i32 (...) @read_c0_config()
  %19 = load i32, i32* @MIPS_CONF_AR, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @MIPS_CONF_M, align 4
  %22 = load i32, i32* @CONF_CM_CACHABLE_NONCOHERENT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @MIPS_CONF_MT_TLB, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i64, i64* @cpu_has_vtag_icache, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load i32, i32* @MIPS_CONF_VI, align 4
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %1
  %35 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @kvm_write_c0_guest_config(%struct.mips_coproc* %35, i32 %36)
  %38 = call i32 (...) @read_c0_config1()
  %39 = and i32 %38, -128
  store i32 %39, i32* %5, align 4
  %40 = call i64 (...) @cpu_dcache_line_size()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %34
  %43 = load i32, i32* @MIPS_CONF1_DL, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = call i64 (...) @cpu_dcache_line_size()
  %48 = call i32 @ilog2(i64 %47)
  %49 = sub nsw i32 %48, 1
  %50 = load i32, i32* @MIPS_CONF1_DL_SHF, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* @MIPS_CONF1_DL, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %42, %34
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, -2113929217
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* @KVM_MIPS_GUEST_TLB_SIZE, align 4
  %60 = sub nsw i32 %59, 1
  %61 = shl i32 %60, 25
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* @MIPS_CONF1_C2, align 4
  %65 = load i32, i32* @MIPS_CONF1_MD, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @MIPS_CONF1_PC, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @MIPS_CONF1_WR, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @MIPS_CONF1_CA, align 4
  %72 = or i32 %70, %71
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %5, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @kvm_write_c0_guest_config1(%struct.mips_coproc* %76, i32 %77)
  %79 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %80 = load i32, i32* @MIPS_CONF_M, align 4
  %81 = call i32 @kvm_write_c0_guest_config2(%struct.mips_coproc* %79, i32 %80)
  %82 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %83 = load i32, i32* @MIPS_CONF_M, align 4
  %84 = load i32, i32* @MIPS_CONF3_ULRI, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @kvm_write_c0_guest_config3(%struct.mips_coproc* %82, i32 %85)
  %87 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %88 = load i32, i32* @MIPS_CONF_M, align 4
  %89 = call i32 @kvm_write_c0_guest_config4(%struct.mips_coproc* %87, i32 %88)
  %90 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %91 = call i32 @kvm_write_c0_guest_config5(%struct.mips_coproc* %90, i32 0)
  %92 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %93 = load i32, i32* @MIPS_CONF7_WII, align 4
  %94 = or i32 %93, 1024
  %95 = call i32 @kvm_write_c0_guest_config7(%struct.mips_coproc* %92, i32 %94)
  %96 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %97 = load i32, i32* @ST0_BEV, align 4
  %98 = load i32, i32* @ST0_ERL, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @kvm_write_c0_guest_status(%struct.mips_coproc* %96, i32 %99)
  %101 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %102 = call i32 @kvm_write_c0_guest_intctl(%struct.mips_coproc* %101, i32 -67108864)
  %103 = load %struct.mips_coproc*, %struct.mips_coproc** %3, align 8
  %104 = load i32, i32* @KVM_GUEST_KSEG0, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @MIPS_EBASE_CPUNUM, align 4
  %107 = and i32 %105, %106
  %108 = or i32 %104, %107
  %109 = call i32 @kvm_write_c0_guest_ebase(%struct.mips_coproc* %103, i32 %108)
  %110 = call i32 @KVM_GUEST_CKSEG1ADDR(i32 532676608)
  %111 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %112 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  ret i32 0
}

declare dso_local i32 @kvm_mips_init_count(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_prid(%struct.mips_coproc*, i32) #1

declare dso_local i32 @read_c0_config(...) #1

declare dso_local i32 @kvm_write_c0_guest_config(%struct.mips_coproc*, i32) #1

declare dso_local i32 @read_c0_config1(...) #1

declare dso_local i64 @cpu_dcache_line_size(...) #1

declare dso_local i32 @ilog2(i64) #1

declare dso_local i32 @kvm_write_c0_guest_config1(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_config2(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_config3(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_config4(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_config5(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_config7(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_status(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_intctl(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_write_c0_guest_ebase(%struct.mips_coproc*, i32) #1

declare dso_local i32 @KVM_GUEST_CKSEG1ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
