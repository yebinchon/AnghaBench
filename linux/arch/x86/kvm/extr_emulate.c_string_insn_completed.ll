; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_string_insn_completed.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_emulate.c_string_insn_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_emulate_ctxt = type { i32, i64, i32 }

@REPE_PREFIX = common dso_local global i64 0, align 8
@X86_EFLAGS_ZF = common dso_local global i32 0, align 4
@REPNE_PREFIX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x86_emulate_ctxt*)* @string_insn_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string_insn_completed(%struct.x86_emulate_ctxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.x86_emulate_ctxt*, align 8
  store %struct.x86_emulate_ctxt* %0, %struct.x86_emulate_ctxt** %3, align 8
  %4 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %5 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, 166
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  %9 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %10 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 167
  br i1 %12, label %23, label %13

13:                                               ; preds = %8
  %14 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %15 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 174
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %20 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 175
  br i1 %22, label %23, label %51

23:                                               ; preds = %18, %13, %8, %1
  %24 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %25 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @REPE_PREFIX, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %31 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @X86_EFLAGS_ZF, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %29, %23
  %37 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %38 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @REPNE_PREFIX, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %3, align 8
  %44 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @X86_EFLAGS_ZF, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @X86_EFLAGS_ZF, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42, %29
  store i32 1, i32* %2, align 4
  br label %52

51:                                               ; preds = %42, %36, %18
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %50
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
