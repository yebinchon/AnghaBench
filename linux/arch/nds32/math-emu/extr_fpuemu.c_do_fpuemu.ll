; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/math-emu/extr_fpuemu.c_do_fpuemu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/math-emu/extr_fpuemu.c_do_fpuemu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64 }
%struct.fpu_struct = type { i32 }

@SIGBUS = common dso_local global i32 0, align 4
@cop0_op = common dso_local global i64 0, align 8
@SIGILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_fpuemu(%struct.pt_regs* %0, %struct.fpu_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca %struct.fpu_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store %struct.fpu_struct* %1, %struct.fpu_struct** %5, align 8
  store i64 0, i64* %6, align 8
  %14 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %15 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = bitcast i64* %6 to i8*
  store i8* %17, i8** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %34, %2
  %19 = load i32, i32* %12, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load i8, i8* %11, align 1
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %7, align 8
  %25 = inttoptr i64 %23 to i8*
  %26 = call i64 @__get_user(i8 signext %22, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @SIGBUS, align 4
  store i32 %29, i32* %3, align 4
  br label %71

30:                                               ; preds = %21
  %31 = load i8, i8* %11, align 1
  %32 = load i8*, i8** %10, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %10, align 8
  store i8 %31, i8* %32, align 1
  br label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %12, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %12, align 4
  br label %18

37:                                               ; preds = %18
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @be32_to_cpu(i64 %38)
  store i64 %39, i64* %6, align 8
  %40 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %41 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %8, align 8
  %43 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %44 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 4
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i64 @NDS32Insn_OPCODE(i64 %47)
  %49 = load i64, i64* @cop0_op, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %37
  %52 = load i32, i32* @SIGILL, align 4
  store i32 %52, i32* %3, align 4
  br label %71

53:                                               ; preds = %37
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @NDS32Insn_OPCODE_COP0(i64 %54)
  switch i32 %55, label %67 [
    i32 129, label %56
    i32 128, label %56
    i32 131, label %56
    i32 130, label %56
  ]

56:                                               ; preds = %53, %53, %53, %53
  %57 = load %struct.fpu_struct*, %struct.fpu_struct** %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @fpu_emu(%struct.fpu_struct* %57, i64 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %65 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %62, %56
  br label %69

67:                                               ; preds = %53
  %68 = load i32, i32* @SIGILL, align 4
  store i32 %68, i32* %3, align 4
  br label %71

69:                                               ; preds = %66
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %67, %51, %28
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @__get_user(i8 signext, i8*) #1

declare dso_local i64 @be32_to_cpu(i64) #1

declare dso_local i64 @NDS32Insn_OPCODE(i64) #1

declare dso_local i32 @NDS32Insn_OPCODE_COP0(i64) #1

declare dso_local i32 @fpu_emu(%struct.fpu_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
