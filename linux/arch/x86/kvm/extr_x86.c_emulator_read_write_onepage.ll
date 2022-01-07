; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_emulator_read_write_onepage.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_emulator_read_write_onepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_exception = type { i32 }
%struct.kvm_vcpu = type { i64, %struct.kvm_mmio_fragment*, %struct.TYPE_2__ }
%struct.kvm_mmio_fragment = type { i32, i32, i8* }
%struct.TYPE_2__ = type { i64, i64, %struct.x86_emulate_ctxt }
%struct.x86_emulate_ctxt = type { i32 }
%struct.read_write_emulator_ops = type { i32, i32 (%struct.kvm_vcpu.0*, i32, i32, i8*)*, i64 (%struct.kvm_vcpu.1*, i32, i8*, i32)* }
%struct.kvm_vcpu.0 = type opaque
%struct.kvm_vcpu.1 = type opaque

@PAGE_MASK = common dso_local global i64 0, align 8
@X86EMUL_PROPAGATE_FAULT = common dso_local global i32 0, align 4
@X86EMUL_CONTINUE = common dso_local global i32 0, align 4
@KVM_MAX_MMIO_FRAGMENTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32, %struct.x86_exception*, %struct.kvm_vcpu*, %struct.read_write_emulator_ops*)* @emulator_read_write_onepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emulator_read_write_onepage(i64 %0, i8* %1, i32 %2, %struct.x86_exception* %3, %struct.kvm_vcpu* %4, %struct.read_write_emulator_ops* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.x86_exception*, align 8
  %12 = alloca %struct.kvm_vcpu*, align 8
  %13 = alloca %struct.read_write_emulator_ops*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.kvm_mmio_fragment*, align 8
  %19 = alloca %struct.x86_emulate_ctxt*, align 8
  store i64 %0, i64* %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.x86_exception* %3, %struct.x86_exception** %11, align 8
  store %struct.kvm_vcpu* %4, %struct.kvm_vcpu** %12, align 8
  store %struct.read_write_emulator_ops* %5, %struct.read_write_emulator_ops** %13, align 8
  %20 = load %struct.read_write_emulator_ops*, %struct.read_write_emulator_ops** %13, align 8
  %21 = getelementptr inbounds %struct.read_write_emulator_ops, %struct.read_write_emulator_ops* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %17, align 4
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store %struct.x86_emulate_ctxt* %25, %struct.x86_emulate_ctxt** %19, align 8
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %6
  %32 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %19, align 8
  %33 = call i64 @emulator_can_use_gpa(%struct.x86_emulate_ctxt* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %31
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @PAGE_MASK, align 8
  %38 = xor i64 %37, -1
  %39 = and i64 %36, %38
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %41 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PAGE_MASK, align 8
  %45 = xor i64 %44, -1
  %46 = and i64 %43, %45
  %47 = icmp eq i64 %39, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %35
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %50 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %14, align 4
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %17, align 4
  %58 = call i32 @vcpu_is_mmio_gpa(%struct.kvm_vcpu* %54, i64 %55, i32 %56, i32 %57)
  store i32 %58, i32* %16, align 4
  br label %70

59:                                               ; preds = %35, %31, %6
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.x86_exception*, %struct.x86_exception** %11, align 8
  %63 = load i32, i32* %17, align 4
  %64 = call i32 @vcpu_mmio_gva_to_gpa(%struct.kvm_vcpu* %60, i64 %61, i32* %14, %struct.x86_exception* %62, i32 %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @X86EMUL_PROPAGATE_FAULT, align 4
  store i32 %68, i32* %7, align 4
  br label %137

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69, %48
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %86, label %73

73:                                               ; preds = %70
  %74 = load %struct.read_write_emulator_ops*, %struct.read_write_emulator_ops** %13, align 8
  %75 = getelementptr inbounds %struct.read_write_emulator_ops, %struct.read_write_emulator_ops* %74, i32 0, i32 2
  %76 = load i64 (%struct.kvm_vcpu.1*, i32, i8*, i32)*, i64 (%struct.kvm_vcpu.1*, i32, i8*, i32)** %75, align 8
  %77 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %78 = bitcast %struct.kvm_vcpu* %77 to %struct.kvm_vcpu.1*
  %79 = load i32, i32* %14, align 4
  %80 = load i8*, i8** %9, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i64 %76(%struct.kvm_vcpu.1* %78, i32 %79, i8* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %73
  %85 = load i32, i32* @X86EMUL_CONTINUE, align 4
  store i32 %85, i32* %7, align 4
  br label %137

86:                                               ; preds = %73, %70
  %87 = load %struct.read_write_emulator_ops*, %struct.read_write_emulator_ops** %13, align 8
  %88 = getelementptr inbounds %struct.read_write_emulator_ops, %struct.read_write_emulator_ops* %87, i32 0, i32 1
  %89 = load i32 (%struct.kvm_vcpu.0*, i32, i32, i8*)*, i32 (%struct.kvm_vcpu.0*, i32, i32, i8*)** %88, align 8
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %91 = bitcast %struct.kvm_vcpu* %90 to %struct.kvm_vcpu.0*
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i8*, i8** %9, align 8
  %95 = call i32 %89(%struct.kvm_vcpu.0* %91, i32 %92, i32 %93, i8* %94)
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %86
  %100 = load i32, i32* @X86EMUL_CONTINUE, align 4
  store i32 %100, i32* %7, align 4
  br label %137

101:                                              ; preds = %86
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %10, align 4
  %107 = sub i32 %106, %105
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load i8*, i8** %9, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr i8, i8* %109, i64 %110
  store i8* %111, i8** %9, align 8
  %112 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %113 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @KVM_MAX_MMIO_FRAGMENTS, align 8
  %116 = icmp sge i64 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @WARN_ON(i32 %117)
  %119 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %120 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %119, i32 0, i32 1
  %121 = load %struct.kvm_mmio_fragment*, %struct.kvm_mmio_fragment** %120, align 8
  %122 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %12, align 8
  %123 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %123, align 8
  %126 = getelementptr inbounds %struct.kvm_mmio_fragment, %struct.kvm_mmio_fragment* %121, i64 %124
  store %struct.kvm_mmio_fragment* %126, %struct.kvm_mmio_fragment** %18, align 8
  %127 = load i32, i32* %14, align 4
  %128 = load %struct.kvm_mmio_fragment*, %struct.kvm_mmio_fragment** %18, align 8
  %129 = getelementptr inbounds %struct.kvm_mmio_fragment, %struct.kvm_mmio_fragment* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = load %struct.kvm_mmio_fragment*, %struct.kvm_mmio_fragment** %18, align 8
  %132 = getelementptr inbounds %struct.kvm_mmio_fragment, %struct.kvm_mmio_fragment* %131, i32 0, i32 2
  store i8* %130, i8** %132, align 8
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.kvm_mmio_fragment*, %struct.kvm_mmio_fragment** %18, align 8
  %135 = getelementptr inbounds %struct.kvm_mmio_fragment, %struct.kvm_mmio_fragment* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @X86EMUL_CONTINUE, align 4
  store i32 %136, i32* %7, align 4
  br label %137

137:                                              ; preds = %101, %99, %84, %67
  %138 = load i32, i32* %7, align 4
  ret i32 %138
}

declare dso_local i64 @emulator_can_use_gpa(%struct.x86_emulate_ctxt*) #1

declare dso_local i32 @vcpu_is_mmio_gpa(%struct.kvm_vcpu*, i64, i32, i32) #1

declare dso_local i32 @vcpu_mmio_gva_to_gpa(%struct.kvm_vcpu*, i64, i32*, %struct.x86_exception*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
