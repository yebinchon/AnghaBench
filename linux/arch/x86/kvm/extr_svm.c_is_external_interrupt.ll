; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_is_external_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_is_external_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVM_EVTINJ_TYPE_MASK = common dso_local global i32 0, align 4
@SVM_EVTINJ_VALID = common dso_local global i32 0, align 4
@SVM_EVTINJ_TYPE_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @is_external_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_external_interrupt(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @SVM_EVTINJ_TYPE_MASK, align 4
  %4 = load i32, i32* @SVM_EVTINJ_VALID, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* %2, align 4
  %7 = and i32 %6, %5
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @SVM_EVTINJ_VALID, align 4
  %10 = load i32, i32* @SVM_EVTINJ_TYPE_INTR, align 4
  %11 = or i32 %9, %10
  %12 = icmp eq i32 %8, %11
  %13 = zext i1 %12 to i32
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
