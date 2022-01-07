; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/leds/extr_ledtrig-adm5120-switch.c_led_port_state_show.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/leds/extr_ledtrig-adm5120-switch.c_led_port_state_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_state = type { i8* }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.led_classdev = type { %struct.port_state* }

@port_states = common dso_local global %struct.port_state* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @led_port_state_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @led_port_state_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.led_classdev*, align 8
  %8 = alloca %struct.port_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.led_classdev* @dev_get_drvdata(%struct.device* %11)
  store %struct.led_classdev* %12, %struct.led_classdev** %7, align 8
  %13 = load %struct.led_classdev*, %struct.led_classdev** %7, align 8
  %14 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %13, i32 0, i32 0
  %15 = load %struct.port_state*, %struct.port_state** %14, align 8
  store %struct.port_state* %15, %struct.port_state** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load i8*, i8** %6, align 8
  store i8 0, i8* %16, align 1
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %62, %3
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.port_state*, %struct.port_state** @port_states, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.port_state* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %65

22:                                               ; preds = %17
  %23 = load %struct.port_state*, %struct.port_state** @port_states, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.port_state, %struct.port_state* %23, i64 %25
  %27 = load %struct.port_state*, %struct.port_state** %8, align 8
  %28 = icmp eq %struct.port_state* %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %22
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load %struct.port_state*, %struct.port_state** @port_states, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.port_state, %struct.port_state* %34, i64 %36
  %38 = getelementptr inbounds %struct.port_state, %struct.port_state* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 (i8*, i8*, ...) @sprintf(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %9, align 4
  br label %61

45:                                               ; preds = %22
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load %struct.port_state*, %struct.port_state** @port_states, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.port_state, %struct.port_state* %50, i64 %52
  %54 = getelementptr inbounds %struct.port_state, %struct.port_state* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 (i8*, i8*, ...) @sprintf(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %45, %29
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %17

65:                                               ; preds = %17
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = call i64 (i8*, i8*, ...) @sprintf(i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  ret i32 %75
}

declare dso_local %struct.led_classdev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.port_state*) #1

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
