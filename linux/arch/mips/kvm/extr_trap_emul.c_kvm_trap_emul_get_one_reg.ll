; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_trap_emul.c_kvm_trap_emul_get_one_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_trap_emul.c_kvm_trap_emul_get_one_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, %struct.mips_coproc* }
%struct.mips_coproc = type { i32 }
%struct.kvm_one_reg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_one_reg*, i64*)* @kvm_trap_emul_get_one_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_trap_emul_get_one_reg(%struct.kvm_vcpu* %0, %struct.kvm_one_reg* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca %struct.kvm_one_reg*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.mips_coproc*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store %struct.kvm_one_reg* %1, %struct.kvm_one_reg** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = load %struct.mips_coproc*, %struct.mips_coproc** %11, align 8
  store %struct.mips_coproc* %12, %struct.mips_coproc** %8, align 8
  %13 = load %struct.kvm_one_reg*, %struct.kvm_one_reg** %6, align 8
  %14 = getelementptr inbounds %struct.kvm_one_reg, %struct.kvm_one_reg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %163 [
    i32 140, label %16
    i32 145, label %20
    i32 144, label %24
    i32 149, label %28
    i32 129, label %32
    i32 132, label %36
    i32 128, label %40
    i32 141, label %44
    i32 159, label %48
    i32 146, label %52
    i32 157, label %56
    i32 130, label %60
    i32 139, label %64
    i32 158, label %68
    i32 143, label %72
    i32 131, label %76
    i32 147, label %80
    i32 156, label %84
    i32 155, label %88
    i32 154, label %92
    i32 153, label %96
    i32 152, label %100
    i32 151, label %104
    i32 150, label %108
    i32 148, label %112
    i32 162, label %116
    i32 160, label %122
    i32 161, label %129
    i32 142, label %135
    i32 138, label %139
    i32 137, label %143
    i32 136, label %147
    i32 135, label %151
    i32 134, label %155
    i32 133, label %159
  ]

16:                                               ; preds = %3
  %17 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %18 = call i64 @kvm_read_c0_guest_index(%struct.mips_coproc* %17)
  %19 = load i64*, i64** %7, align 8
  store i64 %18, i64* %19, align 8
  br label %166

20:                                               ; preds = %3
  %21 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %22 = call i64 @kvm_read_c0_guest_entrylo0(%struct.mips_coproc* %21)
  %23 = load i64*, i64** %7, align 8
  store i64 %22, i64* %23, align 8
  br label %166

24:                                               ; preds = %3
  %25 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %26 = call i64 @kvm_read_c0_guest_entrylo1(%struct.mips_coproc* %25)
  %27 = load i64*, i64** %7, align 8
  store i64 %26, i64* %27, align 8
  br label %166

28:                                               ; preds = %3
  %29 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %30 = call i64 @kvm_read_c0_guest_context(%struct.mips_coproc* %29)
  %31 = load i64*, i64** %7, align 8
  store i64 %30, i64* %31, align 8
  br label %166

32:                                               ; preds = %3
  %33 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %34 = call i64 @kvm_read_c0_guest_userlocal(%struct.mips_coproc* %33)
  %35 = load i64*, i64** %7, align 8
  store i64 %34, i64* %35, align 8
  br label %166

36:                                               ; preds = %3
  %37 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %38 = call i64 @kvm_read_c0_guest_pagemask(%struct.mips_coproc* %37)
  %39 = load i64*, i64** %7, align 8
  store i64 %38, i64* %39, align 8
  br label %166

40:                                               ; preds = %3
  %41 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %42 = call i64 @kvm_read_c0_guest_wired(%struct.mips_coproc* %41)
  %43 = load i64*, i64** %7, align 8
  store i64 %42, i64* %43, align 8
  br label %166

44:                                               ; preds = %3
  %45 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %46 = call i64 @kvm_read_c0_guest_hwrena(%struct.mips_coproc* %45)
  %47 = load i64*, i64** %7, align 8
  store i64 %46, i64* %47, align 8
  br label %166

48:                                               ; preds = %3
  %49 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %50 = call i64 @kvm_read_c0_guest_badvaddr(%struct.mips_coproc* %49)
  %51 = load i64*, i64** %7, align 8
  store i64 %50, i64* %51, align 8
  br label %166

52:                                               ; preds = %3
  %53 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %54 = call i64 @kvm_read_c0_guest_entryhi(%struct.mips_coproc* %53)
  %55 = load i64*, i64** %7, align 8
  store i64 %54, i64* %55, align 8
  br label %166

56:                                               ; preds = %3
  %57 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %58 = call i64 @kvm_read_c0_guest_compare(%struct.mips_coproc* %57)
  %59 = load i64*, i64** %7, align 8
  store i64 %58, i64* %59, align 8
  br label %166

60:                                               ; preds = %3
  %61 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %62 = call i64 @kvm_read_c0_guest_status(%struct.mips_coproc* %61)
  %63 = load i64*, i64** %7, align 8
  store i64 %62, i64* %63, align 8
  br label %166

64:                                               ; preds = %3
  %65 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %66 = call i64 @kvm_read_c0_guest_intctl(%struct.mips_coproc* %65)
  %67 = load i64*, i64** %7, align 8
  store i64 %66, i64* %67, align 8
  br label %166

68:                                               ; preds = %3
  %69 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %70 = call i64 @kvm_read_c0_guest_cause(%struct.mips_coproc* %69)
  %71 = load i64*, i64** %7, align 8
  store i64 %70, i64* %71, align 8
  br label %166

72:                                               ; preds = %3
  %73 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %74 = call i64 @kvm_read_c0_guest_epc(%struct.mips_coproc* %73)
  %75 = load i64*, i64** %7, align 8
  store i64 %74, i64* %75, align 8
  br label %166

76:                                               ; preds = %3
  %77 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %78 = call i64 @kvm_read_c0_guest_prid(%struct.mips_coproc* %77)
  %79 = load i64*, i64** %7, align 8
  store i64 %78, i64* %79, align 8
  br label %166

80:                                               ; preds = %3
  %81 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %82 = call i64 @kvm_read_c0_guest_ebase(%struct.mips_coproc* %81)
  %83 = load i64*, i64** %7, align 8
  store i64 %82, i64* %83, align 8
  br label %166

84:                                               ; preds = %3
  %85 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %86 = call i64 @kvm_read_c0_guest_config(%struct.mips_coproc* %85)
  %87 = load i64*, i64** %7, align 8
  store i64 %86, i64* %87, align 8
  br label %166

88:                                               ; preds = %3
  %89 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %90 = call i64 @kvm_read_c0_guest_config1(%struct.mips_coproc* %89)
  %91 = load i64*, i64** %7, align 8
  store i64 %90, i64* %91, align 8
  br label %166

92:                                               ; preds = %3
  %93 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %94 = call i64 @kvm_read_c0_guest_config2(%struct.mips_coproc* %93)
  %95 = load i64*, i64** %7, align 8
  store i64 %94, i64* %95, align 8
  br label %166

96:                                               ; preds = %3
  %97 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %98 = call i64 @kvm_read_c0_guest_config3(%struct.mips_coproc* %97)
  %99 = load i64*, i64** %7, align 8
  store i64 %98, i64* %99, align 8
  br label %166

100:                                              ; preds = %3
  %101 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %102 = call i64 @kvm_read_c0_guest_config4(%struct.mips_coproc* %101)
  %103 = load i64*, i64** %7, align 8
  store i64 %102, i64* %103, align 8
  br label %166

104:                                              ; preds = %3
  %105 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %106 = call i64 @kvm_read_c0_guest_config5(%struct.mips_coproc* %105)
  %107 = load i64*, i64** %7, align 8
  store i64 %106, i64* %107, align 8
  br label %166

108:                                              ; preds = %3
  %109 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %110 = call i64 @kvm_read_c0_guest_config7(%struct.mips_coproc* %109)
  %111 = load i64*, i64** %7, align 8
  store i64 %110, i64* %111, align 8
  br label %166

112:                                              ; preds = %3
  %113 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %114 = call i64 @kvm_mips_read_count(%struct.kvm_vcpu* %113)
  %115 = load i64*, i64** %7, align 8
  store i64 %114, i64* %115, align 8
  br label %166

116:                                              ; preds = %3
  %117 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %118 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64*, i64** %7, align 8
  store i64 %120, i64* %121, align 8
  br label %166

122:                                              ; preds = %3
  %123 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %124 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @ktime_to_ns(i32 %126)
  %128 = load i64*, i64** %7, align 8
  store i64 %127, i64* %128, align 8
  br label %166

129:                                              ; preds = %3
  %130 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %131 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64*, i64** %7, align 8
  store i64 %133, i64* %134, align 8
  br label %166

135:                                              ; preds = %3
  %136 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %137 = call i64 @kvm_read_c0_guest_errorepc(%struct.mips_coproc* %136)
  %138 = load i64*, i64** %7, align 8
  store i64 %137, i64* %138, align 8
  br label %166

139:                                              ; preds = %3
  %140 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %141 = call i64 @kvm_read_c0_guest_kscratch1(%struct.mips_coproc* %140)
  %142 = load i64*, i64** %7, align 8
  store i64 %141, i64* %142, align 8
  br label %166

143:                                              ; preds = %3
  %144 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %145 = call i64 @kvm_read_c0_guest_kscratch2(%struct.mips_coproc* %144)
  %146 = load i64*, i64** %7, align 8
  store i64 %145, i64* %146, align 8
  br label %166

147:                                              ; preds = %3
  %148 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %149 = call i64 @kvm_read_c0_guest_kscratch3(%struct.mips_coproc* %148)
  %150 = load i64*, i64** %7, align 8
  store i64 %149, i64* %150, align 8
  br label %166

151:                                              ; preds = %3
  %152 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %153 = call i64 @kvm_read_c0_guest_kscratch4(%struct.mips_coproc* %152)
  %154 = load i64*, i64** %7, align 8
  store i64 %153, i64* %154, align 8
  br label %166

155:                                              ; preds = %3
  %156 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %157 = call i64 @kvm_read_c0_guest_kscratch5(%struct.mips_coproc* %156)
  %158 = load i64*, i64** %7, align 8
  store i64 %157, i64* %158, align 8
  br label %166

159:                                              ; preds = %3
  %160 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  %161 = call i64 @kvm_read_c0_guest_kscratch6(%struct.mips_coproc* %160)
  %162 = load i64*, i64** %7, align 8
  store i64 %161, i64* %162, align 8
  br label %166

163:                                              ; preds = %3
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %4, align 4
  br label %167

166:                                              ; preds = %159, %155, %151, %147, %143, %139, %135, %129, %122, %116, %112, %108, %104, %100, %96, %92, %88, %84, %80, %76, %72, %68, %64, %60, %56, %52, %48, %44, %40, %36, %32, %28, %24, %20, %16
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %166, %163
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i64 @kvm_read_c0_guest_index(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_read_c0_guest_entrylo0(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_read_c0_guest_entrylo1(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_read_c0_guest_context(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_read_c0_guest_userlocal(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_read_c0_guest_pagemask(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_read_c0_guest_wired(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_read_c0_guest_hwrena(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_read_c0_guest_badvaddr(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_read_c0_guest_entryhi(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_read_c0_guest_compare(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_read_c0_guest_status(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_read_c0_guest_intctl(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_read_c0_guest_cause(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_read_c0_guest_epc(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_read_c0_guest_prid(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_read_c0_guest_ebase(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_read_c0_guest_config(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_read_c0_guest_config1(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_read_c0_guest_config2(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_read_c0_guest_config3(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_read_c0_guest_config4(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_read_c0_guest_config5(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_read_c0_guest_config7(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_mips_read_count(%struct.kvm_vcpu*) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i64 @kvm_read_c0_guest_errorepc(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_read_c0_guest_kscratch1(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_read_c0_guest_kscratch2(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_read_c0_guest_kscratch3(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_read_c0_guest_kscratch4(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_read_c0_guest_kscratch5(%struct.mips_coproc*) #1

declare dso_local i64 @kvm_read_c0_guest_kscratch6(%struct.mips_coproc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
