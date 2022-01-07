; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_gemini.c_gemini_setup_ide_pins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_gemini.c_gemini_setup_ide_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pinctrl = type opaque
%struct.pinctrl_state = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"ide\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"could not select IDE state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @gemini_setup_ide_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gemini_setup_ide_pins(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.pinctrl*, align 8
  %5 = alloca %struct.pinctrl_state*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.pinctrl_state* @devm_pinctrl_get(%struct.device* %7)
  %9 = bitcast %struct.pinctrl_state* %8 to %struct.pinctrl*
  store %struct.pinctrl* %9, %struct.pinctrl** %4, align 8
  %10 = load %struct.pinctrl*, %struct.pinctrl** %4, align 8
  %11 = bitcast %struct.pinctrl* %10 to %struct.pinctrl_state*
  %12 = call i64 @IS_ERR(%struct.pinctrl_state* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.pinctrl*, %struct.pinctrl** %4, align 8
  %16 = bitcast %struct.pinctrl* %15 to %struct.pinctrl_state*
  %17 = call i32 @PTR_ERR(%struct.pinctrl_state* %16)
  store i32 %17, i32* %2, align 4
  br label %40

18:                                               ; preds = %1
  %19 = load %struct.pinctrl*, %struct.pinctrl** %4, align 8
  %20 = bitcast %struct.pinctrl* %19 to %struct.pinctrl_state*
  %21 = call %struct.pinctrl_state* @pinctrl_lookup_state(%struct.pinctrl_state* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.pinctrl_state* %21, %struct.pinctrl_state** %5, align 8
  %22 = load %struct.pinctrl_state*, %struct.pinctrl_state** %5, align 8
  %23 = call i64 @IS_ERR(%struct.pinctrl_state* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.pinctrl_state*, %struct.pinctrl_state** %5, align 8
  %27 = call i32 @PTR_ERR(%struct.pinctrl_state* %26)
  store i32 %27, i32* %2, align 4
  br label %40

28:                                               ; preds = %18
  %29 = load %struct.pinctrl*, %struct.pinctrl** %4, align 8
  %30 = bitcast %struct.pinctrl* %29 to %struct.pinctrl_state*
  %31 = load %struct.pinctrl_state*, %struct.pinctrl_state** %5, align 8
  %32 = call i32 @pinctrl_select_state(%struct.pinctrl_state* %30, %struct.pinctrl_state* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.device*, %struct.device** %3, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %40

39:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %35, %25, %14
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.pinctrl_state* @devm_pinctrl_get(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.pinctrl_state*) #1

declare dso_local i32 @PTR_ERR(%struct.pinctrl_state*) #1

declare dso_local %struct.pinctrl_state* @pinctrl_lookup_state(%struct.pinctrl_state*, i8*) #1

declare dso_local i32 @pinctrl_select_state(%struct.pinctrl_state*, %struct.pinctrl_state*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
