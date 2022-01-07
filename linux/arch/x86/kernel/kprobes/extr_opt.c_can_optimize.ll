; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_opt.c_can_optimize.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_opt.c_can_optimize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn = type { i64, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@MAX_INSN_SIZE = common dso_local global i32 0, align 4
@__entry_text_start = common dso_local global i64 0, align 8
@__entry_text_end = common dso_local global i64 0, align 8
@__irqentry_text_start = common dso_local global i64 0, align 8
@__irqentry_text_end = common dso_local global i64 0, align 8
@RELATIVEJUMP_SIZE = common dso_local global i64 0, align 8
@BREAKPOINT_INSTRUCTION = common dso_local global i64 0, align 8
@INT3_SIZE = common dso_local global i64 0, align 8
@RELATIVE_ADDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @can_optimize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_optimize(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.insn, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %12 = load i32, i32* @MAX_INSN_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @kallsyms_lookup_size_offset(i64 %16, i64* %5, i64* %6)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %107

20:                                               ; preds = %1
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @__entry_text_start, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @__entry_text_end, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %24, %20
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @__irqentry_text_start, align 8
  %31 = icmp uge i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @__irqentry_text_end, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %24
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %107

37:                                               ; preds = %32, %28
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = sub i64 %38, %39
  %41 = load i64, i64* @RELATIVEJUMP_SIZE, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %107

44:                                               ; preds = %37
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* %6, align 8
  %47 = sub i64 %45, %46
  store i64 %47, i64* %4, align 8
  br label %48

48:                                               ; preds = %101, %44
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* %3, align 8
  %51 = load i64, i64* %6, align 8
  %52 = sub i64 %50, %51
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %52, %53
  %55 = icmp ult i64 %49, %54
  br i1 %55, label %56, label %106

56:                                               ; preds = %48
  %57 = load i64, i64* %4, align 8
  %58 = call i64 @search_exception_tables(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %107

61:                                               ; preds = %56
  %62 = load i64, i64* %4, align 8
  %63 = call i64 @recover_probed_instruction(i32* %15, i64 %62)
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %107

67:                                               ; preds = %61
  %68 = load i64, i64* %11, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = load i32, i32* @MAX_INSN_SIZE, align 4
  %71 = call i32 @kernel_insn_init(%struct.insn* %7, i8* %69, i32 %70)
  %72 = call i32 @insn_get_length(%struct.insn* %7)
  %73 = getelementptr inbounds %struct.insn, %struct.insn* %7, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @BREAKPOINT_INSTRUCTION, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %107

81:                                               ; preds = %67
  %82 = load i64, i64* %4, align 8
  %83 = inttoptr i64 %82 to i8*
  %84 = getelementptr inbounds %struct.insn, %struct.insn* %7, i32 0, i32 2
  store i8* %83, i8** %84, align 8
  %85 = load i64, i64* %4, align 8
  %86 = getelementptr inbounds %struct.insn, %struct.insn* %7, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %85, %87
  %89 = inttoptr i64 %88 to i8*
  %90 = getelementptr inbounds %struct.insn, %struct.insn* %7, i32 0, i32 1
  store i8* %89, i8** %90, align 8
  %91 = call i64 @insn_is_indirect_jump(%struct.insn* %7)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %81
  %94 = load i64, i64* %3, align 8
  %95 = load i64, i64* @INT3_SIZE, align 8
  %96 = add i64 %94, %95
  %97 = load i32, i32* @RELATIVE_ADDR_SIZE, align 4
  %98 = call i64 @insn_jump_into_range(%struct.insn* %7, i64 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93, %81
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %107

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.insn, %struct.insn* %7, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %4, align 8
  %105 = add i64 %104, %103
  store i64 %105, i64* %4, align 8
  br label %48

106:                                              ; preds = %48
  store i32 1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %107

107:                                              ; preds = %106, %100, %80, %66, %60, %43, %36, %19
  %108 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %108)
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @kallsyms_lookup_size_offset(i64, i64*, i64*) #2

declare dso_local i64 @search_exception_tables(i64) #2

declare dso_local i64 @recover_probed_instruction(i32*, i64) #2

declare dso_local i32 @kernel_insn_init(%struct.insn*, i8*, i32) #2

declare dso_local i32 @insn_get_length(%struct.insn*) #2

declare dso_local i64 @insn_is_indirect_jump(%struct.insn*) #2

declare dso_local i64 @insn_jump_into_range(%struct.insn*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
