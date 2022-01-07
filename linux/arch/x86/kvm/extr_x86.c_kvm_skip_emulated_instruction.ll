; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_skip_emulated_instruction.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_skip_emulated_instruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8
@X86_EFLAGS_TF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_skip_emulated_instruction(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64 (%struct.kvm_vcpu*)*, i64 (%struct.kvm_vcpu*)** %7, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = call i64 %8(%struct.kvm_vcpu* %9)
  store i64 %10, i64* %4, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %12, align 8
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = call i32 %13(%struct.kvm_vcpu* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = sext i32 %19 to i64
  %21 = call i64 @unlikely(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

24:                                               ; preds = %1
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @X86_EFLAGS_TF, align 8
  %27 = and i64 %25, %26
  %28 = call i64 @unlikely(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %32 = call i32 @kvm_vcpu_do_singlestep(%struct.kvm_vcpu* %31)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %24
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %23
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @kvm_vcpu_do_singlestep(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
