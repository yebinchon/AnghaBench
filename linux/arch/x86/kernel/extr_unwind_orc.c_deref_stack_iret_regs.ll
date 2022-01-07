; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_orc.c_deref_stack_iret_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_orc.c_deref_stack_iret_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_state = type { i32 }
%struct.pt_regs = type { i64, i64 }

@IRET_FRAME_OFFSET = common dso_local global i8* null, align 8
@IRET_FRAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.unwind_state*, i64, i64*, i64*)* @deref_stack_iret_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deref_stack_iret_regs(%struct.unwind_state* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.unwind_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  store %struct.unwind_state* %0, %struct.unwind_state** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = load i8*, i8** @IRET_FRAME_OFFSET, align 8
  %14 = ptrtoint i8* %12 to i64
  %15 = ptrtoint i8* %13 to i64
  %16 = sub i64 %14, %15
  %17 = inttoptr i64 %16 to %struct.pt_regs*
  store %struct.pt_regs* %17, %struct.pt_regs** %10, align 8
  %18 = load %struct.unwind_state*, %struct.unwind_state** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* @IRET_FRAME_SIZE, align 4
  %21 = call i32 @stack_access_ok(%struct.unwind_state* %18, i64 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %33

24:                                               ; preds = %4
  %25 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %26 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %8, align 8
  store i64 %27, i64* %28, align 8
  %29 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %30 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %9, align 8
  store i64 %31, i64* %32, align 8
  store i32 1, i32* %5, align 4
  br label %33

33:                                               ; preds = %24, %23
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @stack_access_ok(%struct.unwind_state*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
