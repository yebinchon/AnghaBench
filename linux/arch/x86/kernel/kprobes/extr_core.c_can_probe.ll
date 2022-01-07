; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_core.c_can_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_core.c_can_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@MAX_INSN_SIZE = common dso_local global i32 0, align 4
@BREAKPOINT_INSTRUCTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @can_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_probe(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.insn, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %6, align 8
  %11 = load i32, i32* @MAX_INSN_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @kallsyms_lookup_size_offset(i64 %15, i32* null, i64* %6)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %57

19:                                               ; preds = %1
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* %6, align 8
  %22 = sub i64 %20, %21
  store i64 %22, i64* %4, align 8
  br label %23

23:                                               ; preds = %47, %19
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %3, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %23
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @recover_probed_instruction(i32* %14, i64 %28)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %57

33:                                               ; preds = %27
  %34 = load i64, i64* %5, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load i32, i32* @MAX_INSN_SIZE, align 4
  %37 = call i32 @kernel_insn_init(%struct.insn* %7, i8* %35, i32 %36)
  %38 = call i32 @insn_get_length(%struct.insn* %7)
  %39 = getelementptr inbounds %struct.insn, %struct.insn* %7, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @BREAKPOINT_INSTRUCTION, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %57

47:                                               ; preds = %33
  %48 = getelementptr inbounds %struct.insn, %struct.insn* %7, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %4, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %4, align 8
  br label %23

52:                                               ; preds = %23
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* %3, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %57

57:                                               ; preds = %52, %46, %32, %18
  %58 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @kallsyms_lookup_size_offset(i64, i32*, i64*) #2

declare dso_local i64 @recover_probed_instruction(i32*, i64) #2

declare dso_local i32 @kernel_insn_init(%struct.insn*, i8*, i32) #2

declare dso_local i32 @insn_get_length(%struct.insn*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
