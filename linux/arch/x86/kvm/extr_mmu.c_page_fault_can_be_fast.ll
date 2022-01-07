; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_page_fault_can_be_fast.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_page_fault_can_be_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PFERR_RSVD_MASK = common dso_local global i32 0, align 4
@PFERR_FETCH_MASK = common dso_local global i32 0, align 4
@PFERR_PRESENT_MASK = common dso_local global i32 0, align 4
@shadow_acc_track_mask = common dso_local global i64 0, align 8
@PFERR_WRITE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @page_fault_can_be_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @page_fault_can_be_fast(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @PFERR_RSVD_MASK, align 4
  %6 = and i32 %4, %5
  %7 = call i64 @unlikely(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @PFERR_FETCH_MASK, align 4
  %13 = load i32, i32* @PFERR_PRESENT_MASK, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = load i32, i32* @PFERR_FETCH_MASK, align 4
  %17 = load i32, i32* @PFERR_PRESENT_MASK, align 4
  %18 = or i32 %16, %17
  %19 = icmp eq i32 %15, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %40

24:                                               ; preds = %10
  %25 = load i64, i64* @shadow_acc_track_mask, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @PFERR_WRITE_MASK, align 4
  %30 = load i32, i32* @PFERR_PRESENT_MASK, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = load i32, i32* @PFERR_WRITE_MASK, align 4
  %34 = load i32, i32* @PFERR_PRESENT_MASK, align 4
  %35 = or i32 %33, %34
  %36 = icmp eq i32 %32, %35
  br label %37

37:                                               ; preds = %27, %24
  %38 = phi i1 [ true, %24 ], [ %36, %27 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %37, %23, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
