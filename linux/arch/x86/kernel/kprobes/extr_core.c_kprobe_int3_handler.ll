; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_core.c_kprobe_int3_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/kprobes/extr_core.c_kprobe_int3_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.kprobe = type { i32 (%struct.kprobe*, %struct.pt_regs*)* }
%struct.kprobe_ctlblk = type { i32 }

@KPROBE_HIT_ACTIVE = common dso_local global i32 0, align 4
@BREAKPOINT_INSTRUCTION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kprobe_int3_handler(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.kprobe*, align 8
  %6 = alloca %struct.kprobe_ctlblk*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %7 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %8 = call i64 @user_mode(%struct.pt_regs* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %76

11:                                               ; preds = %1
  %12 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %13 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = sub i64 %15, 8
  %17 = inttoptr i64 %16 to i64*
  store i64* %17, i64** %4, align 8
  %18 = call %struct.kprobe_ctlblk* (...) @get_kprobe_ctlblk()
  store %struct.kprobe_ctlblk* %18, %struct.kprobe_ctlblk** %6, align 8
  %19 = load i64*, i64** %4, align 8
  %20 = call %struct.kprobe* @get_kprobe(i64* %19)
  store %struct.kprobe* %20, %struct.kprobe** %5, align 8
  %21 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %22 = icmp ne %struct.kprobe* %21, null
  br i1 %22, label %23, label %63

23:                                               ; preds = %11
  %24 = call i64 (...) @kprobe_running()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %28 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %29 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %6, align 8
  %30 = call i64 @reenter_kprobe(%struct.kprobe* %27, %struct.pt_regs* %28, %struct.kprobe_ctlblk* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %76

33:                                               ; preds = %26
  br label %62

34:                                               ; preds = %23
  %35 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %36 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %37 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %6, align 8
  %38 = call i32 @set_current_kprobe(%struct.kprobe* %35, %struct.pt_regs* %36, %struct.kprobe_ctlblk* %37)
  %39 = load i32, i32* @KPROBE_HIT_ACTIVE, align 4
  %40 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %6, align 8
  %41 = getelementptr inbounds %struct.kprobe_ctlblk, %struct.kprobe_ctlblk* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %43 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %42, i32 0, i32 0
  %44 = load i32 (%struct.kprobe*, %struct.pt_regs*)*, i32 (%struct.kprobe*, %struct.pt_regs*)** %43, align 8
  %45 = icmp ne i32 (%struct.kprobe*, %struct.pt_regs*)* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %34
  %47 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %48 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %47, i32 0, i32 0
  %49 = load i32 (%struct.kprobe*, %struct.pt_regs*)*, i32 (%struct.kprobe*, %struct.pt_regs*)** %48, align 8
  %50 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %51 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %52 = call i32 %49(%struct.kprobe* %50, %struct.pt_regs* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %46, %34
  %55 = load %struct.kprobe*, %struct.kprobe** %5, align 8
  %56 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %57 = load %struct.kprobe_ctlblk*, %struct.kprobe_ctlblk** %6, align 8
  %58 = call i32 @setup_singlestep(%struct.kprobe* %55, %struct.pt_regs* %56, %struct.kprobe_ctlblk* %57, i32 0)
  br label %61

59:                                               ; preds = %46
  %60 = call i32 (...) @reset_current_kprobe()
  br label %61

61:                                               ; preds = %59, %54
  store i32 1, i32* %2, align 4
  br label %76

62:                                               ; preds = %33
  br label %75

63:                                               ; preds = %11
  %64 = load i64*, i64** %4, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @BREAKPOINT_INSTRUCTION, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i64*, i64** %4, align 8
  %70 = ptrtoint i64* %69 to i64
  %71 = trunc i64 %70 to i32
  %72 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %73 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  store i32 1, i32* %2, align 4
  br label %76

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %62
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %68, %61, %32, %10
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local %struct.kprobe_ctlblk* @get_kprobe_ctlblk(...) #1

declare dso_local %struct.kprobe* @get_kprobe(i64*) #1

declare dso_local i64 @kprobe_running(...) #1

declare dso_local i64 @reenter_kprobe(%struct.kprobe*, %struct.pt_regs*, %struct.kprobe_ctlblk*) #1

declare dso_local i32 @set_current_kprobe(%struct.kprobe*, %struct.pt_regs*, %struct.kprobe_ctlblk*) #1

declare dso_local i32 @setup_singlestep(%struct.kprobe*, %struct.pt_regs*, %struct.kprobe_ctlblk*, i32) #1

declare dso_local i32 @reset_current_kprobe(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
