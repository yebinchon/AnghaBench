; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_inject_realmode_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_inject_realmode_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.x86_emulate_ctxt }
%struct.x86_emulate_ctxt = type { i32, i32, i32, i64, i64 }

@X86EMUL_CONTINUE = common dso_local global i32 0, align 4
@KVM_REQ_TRIPLE_FAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_inject_realmode_interrupt(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.x86_emulate_ctxt*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.x86_emulate_ctxt* %11, %struct.x86_emulate_ctxt** %7, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %13 = call i32 @init_emulate_ctxt(%struct.kvm_vcpu* %12)
  %14 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %7, align 8
  %15 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %14, i32 0, i32 0
  store i32 2, i32* %15, align 8
  %16 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %7, align 8
  %17 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %16, i32 0, i32 1
  store i32 2, i32* %17, align 4
  %18 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %7, align 8
  %19 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %7, align 8
  %25 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %24, i32 0, i32 4
  store i64 %23, i64* %25, align 8
  %26 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @emulate_int_real(%struct.x86_emulate_ctxt* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @X86EMUL_CONTINUE, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load i32, i32* @KVM_REQ_TRIPLE_FAULT, align 4
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %35 = call i32 @kvm_make_request(i32 %33, %struct.kvm_vcpu* %34)
  br label %52

36:                                               ; preds = %3
  %37 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %7, align 8
  %38 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %7, align 8
  %41 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %40, i32 0, i32 3
  store i64 %39, i64* %41, align 8
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %43 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %7, align 8
  %44 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @kvm_rip_write(%struct.kvm_vcpu* %42, i64 %45)
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %48 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %7, align 8
  %49 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @kvm_set_rflags(%struct.kvm_vcpu* %47, i32 %50)
  br label %52

52:                                               ; preds = %36, %32
  ret void
}

declare dso_local i32 @init_emulate_ctxt(%struct.kvm_vcpu*) #1

declare dso_local i32 @emulate_int_real(%struct.x86_emulate_ctxt*, i32) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_rip_write(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_set_rflags(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
