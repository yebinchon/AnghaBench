; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_cpuid.c_kvm_mpx_supported.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_cpuid.c_kvm_mpx_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (...)* }

@host_xcr0 = common dso_local global i32 0, align 4
@XFEATURE_MASK_BNDREGS = common dso_local global i32 0, align 4
@XFEATURE_MASK_BNDCSR = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_mpx_supported() #0 {
  %1 = load i32, i32* @host_xcr0, align 4
  %2 = load i32, i32* @XFEATURE_MASK_BNDREGS, align 4
  %3 = load i32, i32* @XFEATURE_MASK_BNDCSR, align 4
  %4 = or i32 %2, %3
  %5 = and i32 %1, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64 (...)*, i64 (...)** %9, align 8
  %11 = call i64 (...) %10()
  %12 = icmp ne i64 %11, 0
  br label %13

13:                                               ; preds = %7, %0
  %14 = phi i1 [ false, %0 ], [ %12, %7 ]
  %15 = zext i1 %14 to i32
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
