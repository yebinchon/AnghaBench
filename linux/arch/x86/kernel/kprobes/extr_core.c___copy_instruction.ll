; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_core.c___copy_instruction.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_core.c___copy_instruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64* }

@MAX_INSN_SIZE = common dso_local global i32 0, align 4
@BREAKPOINT_INSTRUCTION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__copy_instruction(i32* %0, i32* %1, i32* %2, %struct.insn* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.insn*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.insn* %3, %struct.insn** %9, align 8
  %14 = load i32, i32* @MAX_INSN_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = ptrtoint i32* %18 to i64
  %20 = call i64 @recover_probed_instruction(i32* %17, i64 %19)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load %struct.insn*, %struct.insn** %9, align 8
  %25 = icmp ne %struct.insn* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %60

27:                                               ; preds = %23
  %28 = load i32*, i32** %6, align 8
  %29 = load i64, i64* %12, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = load i32, i32* @MAX_INSN_SIZE, align 4
  %32 = call i64 @probe_kernel_read(i32* %28, i8* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %60

35:                                               ; preds = %27
  %36 = load %struct.insn*, %struct.insn** %9, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* @MAX_INSN_SIZE, align 4
  %39 = call i32 @kernel_insn_init(%struct.insn* %36, i32* %37, i32 %38)
  %40 = load %struct.insn*, %struct.insn** %9, align 8
  %41 = call i32 @insn_get_length(%struct.insn* %40)
  %42 = load %struct.insn*, %struct.insn** %9, align 8
  %43 = getelementptr inbounds %struct.insn, %struct.insn* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @BREAKPOINT_INSTRUCTION, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %60

51:                                               ; preds = %35
  %52 = load %struct.insn*, %struct.insn** %9, align 8
  %53 = call i64 @insn_masking_exception(%struct.insn* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %60

56:                                               ; preds = %51
  %57 = load %struct.insn*, %struct.insn** %9, align 8
  %58 = getelementptr inbounds %struct.insn, %struct.insn* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %60

60:                                               ; preds = %56, %55, %50, %34, %26
  %61 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @recover_probed_instruction(i32*, i64) #2

declare dso_local i64 @probe_kernel_read(i32*, i8*, i32) #2

declare dso_local i32 @kernel_insn_init(%struct.insn*, i32*, i32) #2

declare dso_local i32 @insn_get_length(%struct.insn*) #2

declare dso_local i64 @insn_masking_exception(%struct.insn*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
