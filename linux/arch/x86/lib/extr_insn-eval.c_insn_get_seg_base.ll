; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/lib/extr_insn-eval.c_insn_get_seg_base.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/lib/extr_insn-eval.c_insn_get_seg_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.desc_struct = type { i32 }

@INAT_SEG_REG_FS = common dso_local global i32 0, align 4
@MSR_FS_BASE = common dso_local global i32 0, align 4
@INAT_SEG_REG_GS = common dso_local global i32 0, align 4
@MSR_KERNEL_GS_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @insn_get_seg_base(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.desc_struct, align 4
  %7 = alloca i16, align 2
  %8 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call signext i16 @get_segment_selector(%struct.pt_regs* %9, i32 %10)
  store i16 %11, i16* %7, align 2
  %12 = load i16, i16* %7, align 2
  %13 = sext i16 %12 to i32
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i64 -1, i64* %3, align 8
  br label %60

16:                                               ; preds = %2
  %17 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %18 = call i64 @v8086_mode(%struct.pt_regs* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i16, i16* %7, align 2
  %22 = sext i16 %21 to i32
  %23 = shl i32 %22, 4
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %3, align 8
  br label %60

25:                                               ; preds = %16
  %26 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %27 = call i64 @user_64bit_mode(%struct.pt_regs* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @INAT_SEG_REG_FS, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* @MSR_FS_BASE, align 4
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @rdmsrl(i32 %34, i64 %35)
  br label %47

37:                                               ; preds = %29
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @INAT_SEG_REG_GS, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* @MSR_KERNEL_GS_BASE, align 4
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @rdmsrl(i32 %42, i64 %43)
  br label %46

45:                                               ; preds = %37
  store i64 0, i64* %8, align 8
  br label %46

46:                                               ; preds = %45, %41
  br label %47

47:                                               ; preds = %46, %33
  %48 = load i64, i64* %8, align 8
  store i64 %48, i64* %3, align 8
  br label %60

49:                                               ; preds = %25
  %50 = load i16, i16* %7, align 2
  %51 = icmp ne i16 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i64 -1, i64* %3, align 8
  br label %60

53:                                               ; preds = %49
  %54 = load i16, i16* %7, align 2
  %55 = call i32 @get_desc(%struct.desc_struct* %6, i16 signext %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  store i64 -1, i64* %3, align 8
  br label %60

58:                                               ; preds = %53
  %59 = call i64 @get_desc_base(%struct.desc_struct* %6)
  store i64 %59, i64* %3, align 8
  br label %60

60:                                               ; preds = %58, %57, %52, %47, %20, %15
  %61 = load i64, i64* %3, align 8
  ret i64 %61
}

declare dso_local signext i16 @get_segment_selector(%struct.pt_regs*, i32) #1

declare dso_local i64 @v8086_mode(%struct.pt_regs*) #1

declare dso_local i64 @user_64bit_mode(%struct.pt_regs*) #1

declare dso_local i32 @rdmsrl(i32, i64) #1

declare dso_local i32 @get_desc(%struct.desc_struct*, i16 signext) #1

declare dso_local i64 @get_desc_base(%struct.desc_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
