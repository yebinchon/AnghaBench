; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_code_segment_base.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_code_segment_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32 }

@__USER32_CS = common dso_local global i32 0, align 4
@X86_VM_MASK = common dso_local global i32 0, align 4
@__USER_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pt_regs*)* @code_segment_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @code_segment_base(%struct.pt_regs* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %4 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %5 = call i64 @user_mode(%struct.pt_regs* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %9 = call i32 @user_64bit_mode(%struct.pt_regs* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %13 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @__USER32_CS, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %19 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @get_segment_base(i32 %20)
  store i64 %21, i64* %2, align 8
  br label %23

22:                                               ; preds = %11, %7, %1
  store i64 0, i64* %2, align 8
  br label %23

23:                                               ; preds = %22, %17
  %24 = load i64, i64* %2, align 8
  ret i64 %24
}

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @user_64bit_mode(%struct.pt_regs*) #1

declare dso_local i64 @get_segment_base(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
