; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_trap_emul.c_kvm_mips_bad_access.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_trap_emul.c_kvm_mips_bad_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_run = type { i32 }
%struct.kvm_vcpu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.kvm_run*, %struct.kvm_vcpu*, i32)* @kvm_mips_bad_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_mips_bad_access(i32 %0, i32* %1, %struct.kvm_run* %2, %struct.kvm_vcpu* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.kvm_run*, align 8
  %10 = alloca %struct.kvm_vcpu*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store %struct.kvm_run* %2, %struct.kvm_run** %9, align 8
  store %struct.kvm_vcpu* %3, %struct.kvm_vcpu** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = load i32, i32* %7, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = load %struct.kvm_run*, %struct.kvm_run** %9, align 8
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %19 = call i32 @kvm_mips_bad_store(i32 %15, i32* %16, %struct.kvm_run* %17, %struct.kvm_vcpu* %18)
  store i32 %19, i32* %6, align 4
  br label %26

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load %struct.kvm_run*, %struct.kvm_run** %9, align 8
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %25 = call i32 @kvm_mips_bad_load(i32 %21, i32* %22, %struct.kvm_run* %23, %struct.kvm_vcpu* %24)
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %20, %14
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local i32 @kvm_mips_bad_store(i32, i32*, %struct.kvm_run*, %struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mips_bad_load(i32, i32*, %struct.kvm_run*, %struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
