; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_emulator_set_segment.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_emulator_set_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { i32 }
%struct.desc_struct = type { i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.kvm_vcpu = type { i32 }
%struct.kvm_segment = type { i32, i32, i32, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86_emulate_ctxt*, i32, %struct.desc_struct*, i64, i32)* @emulator_set_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emulator_set_segment(%struct.x86_emulate_ctxt* %0, i32 %1, %struct.desc_struct* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.x86_emulate_ctxt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.desc_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.kvm_vcpu*, align 8
  %12 = alloca %struct.kvm_segment, align 8
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.desc_struct* %2, %struct.desc_struct** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %6, align 8
  %14 = call %struct.kvm_vcpu* @emul_to_vcpu(%struct.x86_emulate_ctxt* %13)
  store %struct.kvm_vcpu* %14, %struct.kvm_vcpu** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 12
  store i32 %15, i32* %16, align 4
  %17 = load %struct.desc_struct*, %struct.desc_struct** %8, align 8
  %18 = call i32 @get_desc_base(%struct.desc_struct* %17)
  %19 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load %struct.desc_struct*, %struct.desc_struct** %8, align 8
  %21 = call i32 @get_desc_limit(%struct.desc_struct* %20)
  %22 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.desc_struct*, %struct.desc_struct** %8, align 8
  %24 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 12
  %31 = or i32 %30, 4095
  %32 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %27, %5
  %34 = load %struct.desc_struct*, %struct.desc_struct** %8, align 8
  %35 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 11
  store i32 %36, i32* %37, align 8
  %38 = load %struct.desc_struct*, %struct.desc_struct** %8, align 8
  %39 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 10
  store i32 %40, i32* %41, align 4
  %42 = load %struct.desc_struct*, %struct.desc_struct** %8, align 8
  %43 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 9
  store i32 %44, i32* %45, align 8
  %46 = load %struct.desc_struct*, %struct.desc_struct** %8, align 8
  %47 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 8
  store i32 %48, i32* %49, align 4
  %50 = load %struct.desc_struct*, %struct.desc_struct** %8, align 8
  %51 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 7
  store i32 %52, i32* %53, align 8
  %54 = load %struct.desc_struct*, %struct.desc_struct** %8, align 8
  %55 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 6
  store i64 %56, i64* %57, align 8
  %58 = load %struct.desc_struct*, %struct.desc_struct** %8, align 8
  %59 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 5
  store i32 %60, i32* %61, align 4
  %62 = load %struct.desc_struct*, %struct.desc_struct** %8, align 8
  %63 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 4
  store i32 %64, i32* %65, align 8
  %66 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 2
  store i32 %70, i32* %71, align 8
  %72 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %12, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %11, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @kvm_set_segment(%struct.kvm_vcpu* %73, %struct.kvm_segment* %12, i32 %74)
  ret void
}

declare dso_local %struct.kvm_vcpu* @emul_to_vcpu(%struct.x86_emulate_ctxt*) #1

declare dso_local i32 @get_desc_base(%struct.desc_struct*) #1

declare dso_local i32 @get_desc_limit(%struct.desc_struct*) #1

declare dso_local i32 @kvm_set_segment(%struct.kvm_vcpu*, %struct.kvm_segment*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
