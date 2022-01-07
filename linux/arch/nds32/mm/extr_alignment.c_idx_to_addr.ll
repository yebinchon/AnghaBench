; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/mm/extr_alignment.c_idx_to_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/mm/extr_alignment.c_idx_to_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.pt_regs*, i32)* @idx_to_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @idx_to_addr(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp sle i32 %9, 25
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %13 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  store i64* %18, i64** %3, align 8
  br label %39

19:                                               ; preds = %8, %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp sge i32 %20, 28
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = icmp sle i32 %23, 30
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %27 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %26, i32 0, i32 1
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %28, 28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %27, i64 %30
  store i64* %31, i64** %3, align 8
  br label %39

32:                                               ; preds = %22, %19
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 31
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %37 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %36, i32 0, i32 2
  store i64* %37, i64** %3, align 8
  br label %39

38:                                               ; preds = %32
  store i64* null, i64** %3, align 8
  br label %39

39:                                               ; preds = %38, %35, %25, %11
  %40 = load i64*, i64** %3, align 8
  ret i64* %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
