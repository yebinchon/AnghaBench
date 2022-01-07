; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_init_emulate_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_init_emulate_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.kvm_vcpu*, i32*, i32*)* }
%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.x86_emulate_ctxt }
%struct.x86_emulate_ctxt = type { i32, i32, i32, i32 }

@kvm_x86_ops = common dso_local global %struct.TYPE_4__* null, align 8
@X86_EFLAGS_TF = common dso_local global i32 0, align 4
@X86EMUL_MODE_REAL = common dso_local global i32 0, align 4
@X86_EFLAGS_VM = common dso_local global i32 0, align 4
@X86EMUL_MODE_VM86 = common dso_local global i32 0, align 4
@X86EMUL_MODE_PROT64 = common dso_local global i32 0, align 4
@X86EMUL_MODE_PROT32 = common dso_local global i32 0, align 4
@X86EMUL_MODE_PROT16 = common dso_local global i32 0, align 4
@HF_GUEST_MASK = common dso_local global i64 0, align 8
@X86EMUL_GUEST_MASK = common dso_local global i64 0, align 8
@HF_SMM_MASK = common dso_local global i64 0, align 8
@X86EMUL_SMM_MASK = common dso_local global i64 0, align 8
@HF_SMM_INSIDE_NMI_MASK = common dso_local global i64 0, align 8
@X86EMUL_SMM_INSIDE_NMI_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @init_emulate_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_emulate_ctxt(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.x86_emulate_ctxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store %struct.x86_emulate_ctxt* %8, %struct.x86_emulate_ctxt** %3, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_x86_ops, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32 (%struct.kvm_vcpu*, i32*, i32*)*, i32 (%struct.kvm_vcpu*, i32*, i32*)** %10, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %13 = call i32 %11(%struct.kvm_vcpu* %12, i32* %4, i32* %5)
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %15 = call i32 @kvm_get_rflags(%struct.kvm_vcpu* %14)
  %16 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %17 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %19 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @X86_EFLAGS_TF, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %26 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %28 = call i32 @kvm_rip_read(%struct.kvm_vcpu* %27)
  %29 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %30 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %32 = call i32 @is_protmode(%struct.kvm_vcpu* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %1
  %35 = load i32, i32* @X86EMUL_MODE_REAL, align 4
  br label %67

36:                                               ; preds = %1
  %37 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %38 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @X86_EFLAGS_VM, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @X86EMUL_MODE_VM86, align 4
  br label %65

45:                                               ; preds = %36
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %50 = call i64 @is_long_mode(%struct.kvm_vcpu* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @X86EMUL_MODE_PROT64, align 4
  br label %63

54:                                               ; preds = %48, %45
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @X86EMUL_MODE_PROT32, align 4
  br label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @X86EMUL_MODE_PROT16, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  br label %63

63:                                               ; preds = %61, %52
  %64 = phi i32 [ %53, %52 ], [ %62, %61 ]
  br label %65

65:                                               ; preds = %63, %43
  %66 = phi i32 [ %44, %43 ], [ %64, %63 ]
  br label %67

67:                                               ; preds = %65, %34
  %68 = phi i32 [ %35, %34 ], [ %66, %65 ]
  %69 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %70 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load i64, i64* @HF_GUEST_MASK, align 8
  %72 = load i64, i64* @X86EMUL_GUEST_MASK, align 8
  %73 = icmp ne i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @BUILD_BUG_ON(i32 %74)
  %76 = load i64, i64* @HF_SMM_MASK, align 8
  %77 = load i64, i64* @X86EMUL_SMM_MASK, align 8
  %78 = icmp ne i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @BUILD_BUG_ON(i32 %79)
  %81 = load i64, i64* @HF_SMM_INSIDE_NMI_MASK, align 8
  %82 = load i64, i64* @X86EMUL_SMM_INSIDE_NMI_MASK, align 8
  %83 = icmp ne i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @BUILD_BUG_ON(i32 %84)
  %86 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %87 = call i32 @init_decode_cache(%struct.x86_emulate_ctxt* %86)
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %89 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i32 0, i32* %90, align 4
  ret void
}

declare dso_local i32 @kvm_get_rflags(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_rip_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @is_protmode(%struct.kvm_vcpu*) #1

declare dso_local i64 @is_long_mode(%struct.kvm_vcpu*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @init_decode_cache(%struct.x86_emulate_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
