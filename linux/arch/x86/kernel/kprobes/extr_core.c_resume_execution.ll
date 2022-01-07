; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_core.c_resume_execution.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_core.c_resume_execution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kprobe = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.pt_regs = type { i64, i64 }
%struct.kprobe_ctlblk = type { i64 }

@X86_EFLAGS_TF = common dso_local global i64 0, align 8
@X86_EFLAGS_IF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kprobe*, %struct.pt_regs*, %struct.kprobe_ctlblk*)* @resume_execution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resume_execution(%struct.kprobe* %0, %struct.pt_regs* %1, %struct.kprobe_ctlblk* %2) #0 {
  %4 = alloca %struct.kprobe*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca %struct.kprobe_ctlblk*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.kprobe* %0, %struct.kprobe** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store %struct.kprobe_ctlblk* %2, %struct.kprobe_ctlblk** %6, align 8
  %11 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %12 = call i64* @stack_addr(%struct.pt_regs* %11)
  store i64* %12, i64** %7, align 8
  %13 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %14 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = ptrtoint i32* %16 to i64
  store i64 %17, i64* %8, align 8
  %18 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %19 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %22 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = call i32* @skip_prefixes(i32* %25)
  store i32* %26, i32** %10, align 8
  %27 = load i64, i64* @X86_EFLAGS_TF, align 8
  %28 = xor i64 %27, -1
  %29 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %30 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = and i64 %31, %28
  store i64 %32, i64* %30, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %93 [
    i32 156, label %35
    i32 194, label %49
    i32 195, label %49
    i32 202, label %49
    i32 203, label %49
    i32 207, label %49
    i32 234, label %49
    i32 232, label %53
    i32 255, label %61
  ]

35:                                               ; preds = %3
  %36 = load i64, i64* @X86_EFLAGS_TF, align 8
  %37 = load i64, i64* @X86_EFLAGS_IF, align 8
  %38 = or i64 %36, %37
  %39 = xor i64 %38, -1
  %40 = load i64*, i64** %7, align 8
  %41 = load i64, i64* %40, align 8
  %42 = and i64 %41, %39
  store i64 %42, i64* %40, align 8
  %43 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %6, align 8
  %44 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64*, i64** %7, align 8
  %47 = load i64, i64* %46, align 8
  %48 = or i64 %47, %45
  store i64 %48, i64* %46, align 8
  br label %94

49:                                               ; preds = %3, %3, %3, %3, %3, %3
  %50 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %51 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 1, i32* %52, align 8
  br label %102

53:                                               ; preds = %3
  %54 = load i64, i64* %9, align 8
  %55 = load i64*, i64** %7, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = sub i64 %56, %57
  %59 = add i64 %54, %58
  %60 = load i64*, i64** %7, align 8
  store i64 %59, i64* %60, align 8
  br label %94

61:                                               ; preds = %3
  %62 = load i32*, i32** %10, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 48
  %66 = icmp eq i32 %65, 16
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load i64, i64* %9, align 8
  %69 = load i64*, i64** %7, align 8
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %8, align 8
  %72 = sub i64 %70, %71
  %73 = add i64 %68, %72
  %74 = load i64*, i64** %7, align 8
  store i64 %73, i64* %74, align 8
  br label %102

75:                                               ; preds = %61
  %76 = load i32*, i32** %10, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 49
  %80 = icmp eq i32 %79, 32
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load i32*, i32** %10, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 49
  %86 = icmp eq i32 %85, 33
  br i1 %86, label %87, label %91

87:                                               ; preds = %81, %75
  %88 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %89 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i32 1, i32* %90, align 8
  br label %102

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %3, %92
  br label %94

94:                                               ; preds = %93, %53, %35
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* %8, align 8
  %97 = sub i64 %95, %96
  %98 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %99 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %100, %97
  store i64 %101, i64* %99, align 8
  br label %102

102:                                              ; preds = %94, %87, %67, %49
  %103 = call i32 (...) @restore_btf()
  ret void
}

declare dso_local i64* @stack_addr(%struct.pt_regs*) #1

declare dso_local i32* @skip_prefixes(i32*) #1

declare dso_local i32 @restore_btf(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
