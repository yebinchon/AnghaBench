; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu.c_decode_pagesize.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_64_mmu.c_decode_pagesize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_slb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvmppc_slb*, i32)* @decode_pagesize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_pagesize(%struct.kvmppc_slb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvmppc_slb*, align 8
  %5 = alloca i32, align 4
  store %struct.kvmppc_slb* %0, %struct.kvmppc_slb** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.kvmppc_slb*, %struct.kvmppc_slb** %4, align 8
  %7 = getelementptr inbounds %struct.kvmppc_slb, %struct.kvmppc_slb* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %21 [
    i32 128, label %9
    i32 129, label %15
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, 61440
  %12 = icmp eq i32 %11, 4096
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 128, i32* %3, align 4
  br label %22

14:                                               ; preds = %9
  br label %21

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 1044480
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 129, i32* %3, align 4
  br label %22

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %2, %20, %14
  store i32 -1, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %19, %13
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
