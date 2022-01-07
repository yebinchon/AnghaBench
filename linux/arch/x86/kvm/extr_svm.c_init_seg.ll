; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_init_seg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_init_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmcb_seg = type { i32, i32, i64, i64 }

@SVM_SELECTOR_P_MASK = common dso_local global i32 0, align 4
@SVM_SELECTOR_S_MASK = common dso_local global i32 0, align 4
@SVM_SELECTOR_WRITE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmcb_seg*)* @init_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_seg(%struct.vmcb_seg* %0) #0 {
  %2 = alloca %struct.vmcb_seg*, align 8
  store %struct.vmcb_seg* %0, %struct.vmcb_seg** %2, align 8
  %3 = load %struct.vmcb_seg*, %struct.vmcb_seg** %2, align 8
  %4 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %3, i32 0, i32 3
  store i64 0, i64* %4, align 8
  %5 = load i32, i32* @SVM_SELECTOR_P_MASK, align 4
  %6 = load i32, i32* @SVM_SELECTOR_S_MASK, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @SVM_SELECTOR_WRITE_MASK, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.vmcb_seg*, %struct.vmcb_seg** %2, align 8
  %11 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.vmcb_seg*, %struct.vmcb_seg** %2, align 8
  %13 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %12, i32 0, i32 1
  store i32 65535, i32* %13, align 4
  %14 = load %struct.vmcb_seg*, %struct.vmcb_seg** %2, align 8
  %15 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
