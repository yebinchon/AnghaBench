; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.h_print_sys_reg_instr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kvm/extr_sys_regs.h_print_sys_reg_instr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_reg_params = type { i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [65 x i8] c" { Op0(%2u), Op1(%2u), CRn(%2u), CRm(%2u), Op2(%2u), func_%s },\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sys_reg_params*)* @print_sys_reg_instr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_sys_reg_instr(%struct.sys_reg_params* %0) #0 {
  %2 = alloca %struct.sys_reg_params*, align 8
  store %struct.sys_reg_params* %0, %struct.sys_reg_params** %2, align 8
  %3 = load %struct.sys_reg_params*, %struct.sys_reg_params** %2, align 8
  %4 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.sys_reg_params*, %struct.sys_reg_params** %2, align 8
  %7 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.sys_reg_params*, %struct.sys_reg_params** %2, align 8
  %10 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.sys_reg_params*, %struct.sys_reg_params** %2, align 8
  %13 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sys_reg_params*, %struct.sys_reg_params** %2, align 8
  %16 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.sys_reg_params*, %struct.sys_reg_params** %2, align 8
  %19 = getelementptr inbounds %struct.sys_reg_params, %struct.sys_reg_params* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %24 = call i32 @kvm_pr_unimpl(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %8, i32 %11, i32 %14, i32 %17, i8* %23)
  ret void
}

declare dso_local i32 @kvm_pr_unimpl(i8*, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
