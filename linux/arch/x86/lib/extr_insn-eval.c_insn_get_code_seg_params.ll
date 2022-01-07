; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/lib/extr_insn-eval.c_insn_get_code_seg_params.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/lib/extr_insn-eval.c_insn_get_code_seg_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.desc_struct = type { i32, i32, i32 }

@INAT_SEG_REG_CS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @insn_get_code_seg_params(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.desc_struct, align 4
  %5 = alloca i16, align 2
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %6 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %7 = call i64 @v8086_mode(%struct.pt_regs* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @INSN_CODE_SEG_PARAMS(i32 2, i32 2)
  store i32 %10, i32* %2, align 4
  br label %54

11:                                               ; preds = %1
  %12 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %13 = load i32, i32* @INAT_SEG_REG_CS, align 4
  %14 = call signext i16 @get_segment_selector(%struct.pt_regs* %12, i32 %13)
  store i16 %14, i16* %5, align 2
  %15 = load i16, i16* %5, align 2
  %16 = sext i16 %15 to i32
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i16, i16* %5, align 2
  %20 = sext i16 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %54

21:                                               ; preds = %11
  %22 = load i16, i16* %5, align 2
  %23 = call i32 @get_desc(%struct.desc_struct* %4, i16 signext %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %54

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %4, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @BIT(i32 3)
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %54

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %4, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 1
  %41 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %4, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %40, %42
  switch i32 %43, label %51 [
    i32 0, label %44
    i32 1, label %46
    i32 2, label %48
    i32 3, label %50
  ]

44:                                               ; preds = %37
  %45 = call i32 @INSN_CODE_SEG_PARAMS(i32 2, i32 2)
  store i32 %45, i32* %2, align 4
  br label %54

46:                                               ; preds = %37
  %47 = call i32 @INSN_CODE_SEG_PARAMS(i32 4, i32 4)
  store i32 %47, i32* %2, align 4
  br label %54

48:                                               ; preds = %37
  %49 = call i32 @INSN_CODE_SEG_PARAMS(i32 4, i32 8)
  store i32 %49, i32* %2, align 4
  br label %54

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %37, %50
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %51, %48, %46, %44, %34, %25, %18, %9
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @v8086_mode(%struct.pt_regs*) #1

declare dso_local i32 @INSN_CODE_SEG_PARAMS(i32, i32) #1

declare dso_local signext i16 @get_segment_selector(%struct.pt_regs*, i32) #1

declare dso_local i32 @get_desc(%struct.desc_struct*, i16 signext) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
