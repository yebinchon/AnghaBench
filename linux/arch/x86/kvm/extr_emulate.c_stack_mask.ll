; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_stack_mask.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_stack_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.x86_emulate_ctxt*, i32*, %struct.desc_struct*, i32*, i32)* }
%struct.desc_struct = type { i32 }

@X86EMUL_MODE_PROT64 = common dso_local global i64 0, align 8
@VCPU_SREG_SS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.x86_emulate_ctxt*)* @stack_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stack_mask(%struct.x86_emulate_ctxt* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.x86_emulate_ctxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.desc_struct, align 4
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %3, align 8
  %6 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %7 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @X86EMUL_MODE_PROT64, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i64 -1, i64* %2, align 8
  br label %27

12:                                               ; preds = %1
  %13 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %14 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.x86_emulate_ctxt*, i32*, %struct.desc_struct*, i32*, i32)*, i32 (%struct.x86_emulate_ctxt*, i32*, %struct.desc_struct*, i32*, i32)** %16, align 8
  %18 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %19 = load i32, i32* @VCPU_SREG_SS, align 4
  %20 = call i32 %17(%struct.x86_emulate_ctxt* %18, i32* %4, %struct.desc_struct* %5, i32* null, i32 %19)
  %21 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %5, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = xor i32 %22, 1
  %24 = mul nsw i32 %23, 16
  %25 = lshr i32 -1, %24
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %2, align 8
  br label %27

27:                                               ; preds = %12, %11
  %28 = load i64, i64* %2, align 8
  ret i64 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
