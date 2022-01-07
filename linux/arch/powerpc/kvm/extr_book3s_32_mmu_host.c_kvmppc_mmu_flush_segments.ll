; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_32_mmu_host.c_kvmppc_mmu_flush_segments.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_32_mmu_host.c_kvmppc_mmu_flush_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvmppc_book3s_shadow_vcpu = type { i32* }

@.str = private unnamed_addr constant [33 x i8] c"MMU: flushing all segments (%d)\0A\00", align 1
@SR_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_mmu_flush_segments(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvmppc_book3s_shadow_vcpu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = call %struct.kvmppc_book3s_shadow_vcpu* @svcpu_get(%struct.kvm_vcpu* %5)
  store %struct.kvmppc_book3s_shadow_vcpu* %6, %struct.kvmppc_book3s_shadow_vcpu** %4, align 8
  %7 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %4, align 8
  %8 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @ARRAY_SIZE(i32* %9)
  %11 = call i32 @dprintk_sr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %27, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %4, align 8
  %15 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @ARRAY_SIZE(i32* %16)
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %12
  %20 = load i32, i32* @SR_INVALID, align 4
  %21 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %4, align 8
  %22 = getelementptr inbounds %struct.kvmppc_book3s_shadow_vcpu, %struct.kvmppc_book3s_shadow_vcpu* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %20, i32* %26, align 4
  br label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %12

30:                                               ; preds = %12
  %31 = load %struct.kvmppc_book3s_shadow_vcpu*, %struct.kvmppc_book3s_shadow_vcpu** %4, align 8
  %32 = call i32 @svcpu_put(%struct.kvmppc_book3s_shadow_vcpu* %31)
  ret void
}

declare dso_local %struct.kvmppc_book3s_shadow_vcpu* @svcpu_get(%struct.kvm_vcpu*) #1

declare dso_local i32 @dprintk_sr(i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @svcpu_put(%struct.kvmppc_book3s_shadow_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
