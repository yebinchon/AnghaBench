; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_unaligned.c_fixup_load.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_unaligned.c_fixup_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disasm_state = type { i32, i32, i32, i64, i64, i32, i32, i64, i32 }
%struct.pt_regs = type { i32 }
%struct.callee_regs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.disasm_state*, %struct.pt_regs*, %struct.callee_regs*)* @fixup_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_load(%struct.disasm_state* %0, %struct.pt_regs* %1, %struct.callee_regs* %2) #0 {
  %4 = alloca %struct.disasm_state*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca %struct.callee_regs*, align 8
  %7 = alloca i32, align 4
  store %struct.disasm_state* %0, %struct.disasm_state** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store %struct.callee_regs* %2, %struct.callee_regs** %6, align 8
  %8 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %9 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %14 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %39

17:                                               ; preds = %12, %3
  %18 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %19 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %22 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %25 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %23, %26
  %28 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %29 = load %struct.callee_regs*, %struct.callee_regs** %6, align 8
  %30 = call i32 @set_reg(i32 %20, i32 %27, %struct.pt_regs* %28, %struct.callee_regs* %29)
  %31 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %32 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %38

35:                                               ; preds = %17
  %36 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %37 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %36, i32 0, i32 2
  store i32 0, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %17
  br label %39

39:                                               ; preds = %38, %12
  %40 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %41 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %47 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %50 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %48, %51
  %53 = call i32 @get32_unaligned_check(i32 %45, i32 %52)
  br label %73

54:                                               ; preds = %39
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %57 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %60 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %58, %61
  %63 = call i32 @get16_unaligned_check(i32 %55, i32 %62)
  %64 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %65 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %64, i32 0, i32 7
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %54
  %69 = load i32, i32* %7, align 4
  %70 = shl i32 %69, 16
  %71 = ashr i32 %70, 16
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %68, %54
  br label %73

73:                                               ; preds = %72, %44
  %74 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %75 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %80 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %84 = load %struct.callee_regs*, %struct.callee_regs** %6, align 8
  %85 = call i32 @set_reg(i32 %81, i32 %82, %struct.pt_regs* %83, %struct.callee_regs* %84)
  br label %86

86:                                               ; preds = %78, %73
  br label %90

87:                                               ; No predecessors!
  %88 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %89 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %88, i32 0, i32 5
  store i32 1, i32* %89, align 8
  br label %90

90:                                               ; preds = %87, %86
  ret void
}

declare dso_local i32 @set_reg(i32, i32, %struct.pt_regs*, %struct.callee_regs*) #1

declare dso_local i32 @get32_unaligned_check(i32, i32) #1

declare dso_local i32 @get16_unaligned_check(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
