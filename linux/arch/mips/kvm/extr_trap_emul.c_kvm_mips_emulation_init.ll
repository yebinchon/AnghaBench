; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_trap_emul.c_kvm_mips_emulation_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_trap_emul.c_kvm_mips_emulation_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_mips_callbacks = type { i32 }

@kvm_trap_emul_callbacks = common dso_local global %struct.kvm_mips_callbacks zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_mips_emulation_init(%struct.kvm_mips_callbacks** %0) #0 {
  %2 = alloca %struct.kvm_mips_callbacks**, align 8
  store %struct.kvm_mips_callbacks** %0, %struct.kvm_mips_callbacks*** %2, align 8
  %3 = load %struct.kvm_mips_callbacks**, %struct.kvm_mips_callbacks*** %2, align 8
  store %struct.kvm_mips_callbacks* @kvm_trap_emul_callbacks, %struct.kvm_mips_callbacks** %3, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
