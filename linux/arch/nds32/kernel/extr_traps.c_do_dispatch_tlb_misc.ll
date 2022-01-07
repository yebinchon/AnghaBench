; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_traps.c_do_dispatch_tlb_misc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_traps.c_do_dispatch_tlb_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@ITYPE_mskINST = common dso_local global i64 0, align 8
@ITYPE_mskETYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_dispatch_tlb_misc(i64 %0, i64 %1, i64 %2, %struct.pt_regs* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.pt_regs*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.pt_regs* %3, %struct.pt_regs** %8, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @ITYPE_mskINST, align 8
  %11 = load i64, i64* @ITYPE_mskETYPE, align 8
  %12 = or i64 %10, %11
  %13 = and i64 %9, %12
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @ITYPE_mskETYPE, align 8
  %16 = and i64 %14, %15
  %17 = icmp ult i64 %16, 5
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %23 = call i32 @do_page_fault(i64 %19, i64 %20, i64 %21, %struct.pt_regs* %22)
  br label %30

24:                                               ; preds = %4
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %29 = call i32 @unhandled_exceptions(i64 %25, i64 %26, i64 %27, %struct.pt_regs* %28)
  br label %30

30:                                               ; preds = %24, %18
  ret void
}

declare dso_local i32 @do_page_fault(i64, i64, i64, %struct.pt_regs*) #1

declare dso_local i32 @unhandled_exceptions(i64, i64, i64, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
