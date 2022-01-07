; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona-setup.c_gate_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona-setup.c_gate_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_clk_gate = type { i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"gate status\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"gate enable\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"gate hw/sw select\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_clk_gate*, i8*, i8*)* @gate_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gate_valid(%struct.bcm_clk_gate* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm_clk_gate*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.bcm_clk_gate* %0, %struct.bcm_clk_gate** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %5, align 8
  %9 = getelementptr inbounds %struct.bcm_clk_gate, %struct.bcm_clk_gate* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @bit_posn_valid(i32 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %49

15:                                               ; preds = %3
  %16 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %5, align 8
  %17 = call i64 @gate_is_sw_controllable(%struct.bcm_clk_gate* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %15
  %20 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %5, align 8
  %21 = getelementptr inbounds %struct.bcm_clk_gate, %struct.bcm_clk_gate* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @bit_posn_valid(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %49

27:                                               ; preds = %19
  %28 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %5, align 8
  %29 = call i64 @gate_is_hw_controllable(%struct.bcm_clk_gate* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %5, align 8
  %33 = getelementptr inbounds %struct.bcm_clk_gate, %struct.bcm_clk_gate* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @bit_posn_valid(i32 %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %49

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %27
  br label %48

41:                                               ; preds = %15
  %42 = load %struct.bcm_clk_gate*, %struct.bcm_clk_gate** %5, align 8
  %43 = call i64 @gate_is_hw_controllable(%struct.bcm_clk_gate* %42)
  %44 = icmp ne i64 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUG_ON(i32 %46)
  br label %48

48:                                               ; preds = %41, %40
  store i32 1, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %38, %26, %14
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @bit_posn_valid(i32, i8*, i8*) #1

declare dso_local i64 @gate_is_sw_controllable(%struct.bcm_clk_gate*) #1

declare dso_local i64 @gate_is_hw_controllable(%struct.bcm_clk_gate*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
