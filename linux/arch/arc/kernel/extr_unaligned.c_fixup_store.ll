; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_unaligned.c_fixup_store.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_unaligned.c_fixup_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disasm_state = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.pt_regs = type { i32 }
%struct.callee_regs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.disasm_state*, %struct.pt_regs*, %struct.callee_regs*)* @fixup_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_store(%struct.disasm_state* %0, %struct.pt_regs* %1, %struct.callee_regs* %2) #0 {
  %4 = alloca %struct.disasm_state*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca %struct.callee_regs*, align 8
  store %struct.disasm_state* %0, %struct.disasm_state** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store %struct.callee_regs* %2, %struct.callee_regs** %6, align 8
  %7 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %8 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %13 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %39

16:                                               ; preds = %11, %3
  %17 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %18 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %21 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %24 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %22, %26
  %28 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %29 = load %struct.callee_regs*, %struct.callee_regs** %6, align 8
  %30 = call i32 @set_reg(i32 %19, i64 %27, %struct.pt_regs* %28, %struct.callee_regs* %29)
  %31 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %32 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %35, label %38

35:                                               ; preds = %16
  %36 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %37 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %16
  br label %90

39:                                               ; preds = %11
  %40 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %41 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %89

44:                                               ; preds = %39
  %45 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %46 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %51 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %54 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %57 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %55, %60
  %62 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %63 = load %struct.callee_regs*, %struct.callee_regs** %6, align 8
  %64 = call i32 @set_reg(i32 %52, i64 %61, %struct.pt_regs* %62, %struct.callee_regs* %63)
  br label %88

65:                                               ; preds = %44
  %66 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %67 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %86, label %70

70:                                               ; preds = %65
  %71 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %72 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %75 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %78 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 2
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %76, %81
  %83 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %84 = load %struct.callee_regs*, %struct.callee_regs** %6, align 8
  %85 = call i32 @set_reg(i32 %73, i64 %82, %struct.pt_regs* %83, %struct.callee_regs* %84)
  br label %87

86:                                               ; preds = %65
  br label %122

87:                                               ; preds = %70
  br label %88

88:                                               ; preds = %87, %49
  br label %89

89:                                               ; preds = %88, %39
  br label %90

90:                                               ; preds = %89, %38
  %91 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %92 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %108, label %95

95:                                               ; preds = %90
  %96 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %97 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %100 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %103 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %101, %105
  %107 = call i32 @put32_unaligned_check(i32 %98, i64 %106)
  br label %121

108:                                              ; preds = %90
  %109 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %110 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %113 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %116 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %114, %118
  %120 = call i32 @put16_unaligned_check(i32 %111, i64 %119)
  br label %121

121:                                              ; preds = %108, %95
  br label %125

122:                                              ; preds = %86
  %123 = load %struct.disasm_state*, %struct.disasm_state** %4, align 8
  %124 = getelementptr inbounds %struct.disasm_state, %struct.disasm_state* %123, i32 0, i32 3
  store i32 1, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %121
  ret void
}

declare dso_local i32 @set_reg(i32, i64, %struct.pt_regs*, %struct.callee_regs*) #1

declare dso_local i32 @put32_unaligned_check(i32, i64) #1

declare dso_local i32 @put16_unaligned_check(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
