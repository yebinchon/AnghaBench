; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/lib/extr_insn-eval.c_get_seg_base_limit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/lib/extr_insn-eval.c_get_seg_base_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn = type { i32 }
%struct.pt_regs = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.insn*, %struct.pt_regs*, i32, i64*, i64*)* @get_seg_base_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_seg_base_limit(%struct.insn* %0, %struct.pt_regs* %1, i32 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.insn*, align 8
  %8 = alloca %struct.pt_regs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store %struct.insn* %0, %struct.insn** %7, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load i64*, i64** %10, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  br label %54

18:                                               ; preds = %5
  %19 = load %struct.insn*, %struct.insn** %7, align 8
  %20 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @resolve_seg_reg(%struct.insn* %19, %struct.pt_regs* %20, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %6, align 4
  br label %54

27:                                               ; preds = %18
  %28 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i64 @insn_get_seg_base(%struct.pt_regs* %28, i32 %29)
  %31 = load i64*, i64** %10, align 8
  store i64 %30, i64* %31, align 8
  %32 = load i64*, i64** %10, align 8
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, -1
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %54

38:                                               ; preds = %27
  %39 = load i64*, i64** %11, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %54

42:                                               ; preds = %38
  %43 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i64 @get_seg_limit(%struct.pt_regs* %43, i32 %44)
  %46 = load i64*, i64** %11, align 8
  store i64 %45, i64* %46, align 8
  %47 = load i64*, i64** %11, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %54

53:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %50, %41, %35, %25, %15
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @resolve_seg_reg(%struct.insn*, %struct.pt_regs*, i32) #1

declare dso_local i64 @insn_get_seg_base(%struct.pt_regs*, i32) #1

declare dso_local i64 @get_seg_limit(%struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
