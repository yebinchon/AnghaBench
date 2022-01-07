; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_slb.c_do_bad_slb_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_slb.c_do_bad_slb_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@EFAULT = common dso_local global i64 0, align 8
@SIGSEGV = common dso_local global i32 0, align 4
@SEGV_BNDERR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_bad_slb_fault(%struct.pt_regs* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @EFAULT, align 8
  %9 = sub nsw i64 0, %8
  %10 = icmp eq i64 %7, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %3
  %12 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %13 = call i64 @user_mode(%struct.pt_regs* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i32, i32* @SIGSEGV, align 4
  %17 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %18 = load i32, i32* @SEGV_BNDERR, align 4
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @_exception(i32 %16, %struct.pt_regs* %17, i32 %18, i64 %19)
  br label %26

21:                                               ; preds = %11
  %22 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* @SIGSEGV, align 4
  %25 = call i32 @bad_page_fault(%struct.pt_regs* %22, i64 %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %15
  br label %38

27:                                               ; preds = %3
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub nsw i64 0, %29
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %34 = call i32 @unrecoverable_exception(%struct.pt_regs* %33)
  br label %37

35:                                               ; preds = %27
  %36 = call i32 (...) @BUG()
  br label %37

37:                                               ; preds = %35, %32
  br label %38

38:                                               ; preds = %37, %26
  ret void
}

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @_exception(i32, %struct.pt_regs*, i32, i64) #1

declare dso_local i32 @bad_page_fault(%struct.pt_regs*, i64, i32) #1

declare dso_local i32 @unrecoverable_exception(%struct.pt_regs*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
