; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_psycho.c_psycho_find_sibling.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_psycho.c_psycho_find_sibling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i64, %struct.pci_pbm_info* }

@pci_pbm_root = common dso_local global %struct.pci_pbm_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_pbm_info* (i64)* @psycho_find_sibling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_pbm_info* @psycho_find_sibling(i64 %0) #0 {
  %2 = alloca %struct.pci_pbm_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.pci_pbm_info*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** @pci_pbm_root, align 8
  store %struct.pci_pbm_info* %5, %struct.pci_pbm_info** %4, align 8
  br label %6

6:                                                ; preds = %18, %1
  %7 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %4, align 8
  %8 = icmp ne %struct.pci_pbm_info* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %4, align 8
  %11 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %4, align 8
  store %struct.pci_pbm_info* %16, %struct.pci_pbm_info** %2, align 8
  br label %23

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %4, align 8
  %20 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %19, i32 0, i32 1
  %21 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %20, align 8
  store %struct.pci_pbm_info* %21, %struct.pci_pbm_info** %4, align 8
  br label %6

22:                                               ; preds = %6
  store %struct.pci_pbm_info* null, %struct.pci_pbm_info** %2, align 8
  br label %23

23:                                               ; preds = %22, %15
  %24 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  ret %struct.pci_pbm_info* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
