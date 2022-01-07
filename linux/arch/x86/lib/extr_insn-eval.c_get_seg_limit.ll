; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/lib/extr_insn-eval.c_get_seg_limit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/lib/extr_insn-eval.c_get_seg_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.desc_struct = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pt_regs*, i32)* @get_seg_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_seg_limit(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.desc_struct, align 8
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call signext i16 @get_segment_selector(%struct.pt_regs* %9, i32 %10)
  store i16 %11, i16* %8, align 2
  %12 = load i16, i16* %8, align 2
  %13 = sext i16 %12 to i32
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %45

16:                                               ; preds = %2
  %17 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %18 = call i64 @user_64bit_mode(%struct.pt_regs* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %22 = call i64 @v8086_mode(%struct.pt_regs* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %16
  store i64 -1, i64* %3, align 8
  br label %45

25:                                               ; preds = %20
  %26 = load i16, i16* %8, align 2
  %27 = icmp ne i16 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store i64 0, i64* %3, align 8
  br label %45

29:                                               ; preds = %25
  %30 = load i16, i16* %8, align 2
  %31 = call i32 @get_desc(%struct.desc_struct* %6, i16 signext %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i64 0, i64* %3, align 8
  br label %45

34:                                               ; preds = %29
  %35 = call i64 @get_desc_limit(%struct.desc_struct* %6)
  store i64 %35, i64* %7, align 8
  %36 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %6, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i64, i64* %7, align 8
  %41 = shl i64 %40, 12
  %42 = add i64 %41, 4095
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i64, i64* %7, align 8
  store i64 %44, i64* %3, align 8
  br label %45

45:                                               ; preds = %43, %33, %28, %24, %15
  %46 = load i64, i64* %3, align 8
  ret i64 %46
}

declare dso_local signext i16 @get_segment_selector(%struct.pt_regs*, i32) #1

declare dso_local i64 @user_64bit_mode(%struct.pt_regs*) #1

declare dso_local i64 @v8086_mode(%struct.pt_regs*) #1

declare dso_local i32 @get_desc(%struct.desc_struct*, i16 signext) #1

declare dso_local i64 @get_desc_limit(%struct.desc_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
