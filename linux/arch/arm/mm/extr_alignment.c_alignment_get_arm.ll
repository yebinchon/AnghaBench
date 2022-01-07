; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_alignment.c_alignment_get_arm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_alignment.c_alignment_get_arm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32*, i32*)* @alignment_get_arm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alignment_get_arm(%struct.pt_regs* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %10 = call i64 @user_mode(%struct.pt_regs* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @get_user(i32 %13, i32* %14)
  store i32 %15, i32* %8, align 4
  br label %20

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @probe_kernel_address(i32* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @__mem_to_opcode_arm(i32 %21)
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  ret i32 %24
}

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @get_user(i32, i32*) #1

declare dso_local i32 @probe_kernel_address(i32*, i32) #1

declare dso_local i32 @__mem_to_opcode_arm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
