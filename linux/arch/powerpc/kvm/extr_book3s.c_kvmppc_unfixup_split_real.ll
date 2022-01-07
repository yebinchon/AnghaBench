; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s.c_kvmppc_unfixup_split_real.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s.c_kvmppc_unfixup_split_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BOOK3S_HFLAG_SPLIT_HACK = common dso_local global i32 0, align 4
@SPLIT_HACK_MASK = common dso_local global i32 0, align 4
@SPLIT_HACK_OFFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_unfixup_split_real(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @BOOK3S_HFLAG_SPLIT_HACK, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %50

12:                                               ; preds = %1
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %14 = call i32 @kvmppc_get_pc(%struct.kvm_vcpu* %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %16 = call i32 @kvmppc_get_lr(%struct.kvm_vcpu* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SPLIT_HACK_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @SPLIT_HACK_OFFS, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %12
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @SPLIT_HACK_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = call i32 @kvmppc_set_pc(%struct.kvm_vcpu* %23, i32 %27)
  br label %29

29:                                               ; preds = %22, %12
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @SPLIT_HACK_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @SPLIT_HACK_OFFS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @SPLIT_HACK_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = call i32 @kvmppc_set_lr(%struct.kvm_vcpu* %36, i32 %40)
  br label %42

42:                                               ; preds = %35, %29
  %43 = load i32, i32* @BOOK3S_HFLAG_SPLIT_HACK, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %46 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %44
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %42, %1
  ret void
}

declare dso_local i32 @kvmppc_get_pc(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_get_lr(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_set_pc(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_set_lr(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
