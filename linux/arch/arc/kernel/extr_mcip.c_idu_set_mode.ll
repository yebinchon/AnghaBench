; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_mcip.c_idu_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_mcip.c_idu_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32 }
%struct.anon = type { i32 }

@CMD_IDU_READ_MODE = common dso_local global i32 0, align 4
@CMD_IDU_SET_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32)* @idu_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idu_set_mode(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.anon, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @CMD_IDU_READ_MODE, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @__mcip_cmd_read(i32 %12, i32 %13)
  %15 = bitcast %union.anon* %11 to i32*
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %5
  %19 = load i32, i32* %10, align 4
  %20 = bitcast %union.anon* %11 to %struct.anon*
  %21 = bitcast %struct.anon* %20 to i32*
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %19, 3
  %24 = and i32 %22, -4
  %25 = or i32 %24, %23
  store i32 %25, i32* %21, align 4
  br label %26

26:                                               ; preds = %18, %5
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = bitcast %union.anon* %11 to %struct.anon*
  %32 = bitcast %struct.anon* %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %30, 1
  %35 = shl i32 %34, 4
  %36 = and i32 %33, -17
  %37 = or i32 %36, %35
  store i32 %37, i32* %32, align 4
  br label %38

38:                                               ; preds = %29, %26
  %39 = load i32, i32* @CMD_IDU_SET_MODE, align 4
  %40 = load i32, i32* %6, align 4
  %41 = bitcast %union.anon* %11 to i32*
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @__mcip_cmd_data(i32 %39, i32 %40, i32 %42)
  ret void
}

declare dso_local i32 @__mcip_cmd_read(i32, i32) #1

declare dso_local i32 @__mcip_cmd_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
