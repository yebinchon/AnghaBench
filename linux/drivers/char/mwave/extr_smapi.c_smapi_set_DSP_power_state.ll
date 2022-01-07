; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/mwave/extr_smapi.c_smapi_set_DSP_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/mwave/extr_smapi.c_smapi_set_DSP_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EIO = common dso_local global i32 0, align 4
@TRACE_SMAPI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"smapi::smapi_set_DSP_power_state entry bOn %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"smapi::smapi_set_DSP_power_state exit bRC %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smapi_set_DSP_power_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @TRACE_SMAPI, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @PRINTK_2(i32 %13, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %10, align 2
  %21 = load i16, i16* %10, align 2
  %22 = call i32 @smapi_request(i32 18689, i32 0, i32 0, i16 zeroext %21, i16* %4, i16* %5, i16* %6, i16* %7, i16* %8, i16* %9)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @TRACE_SMAPI, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @PRINTK_2(i32 %23, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @PRINTK_2(i32, i8*, i32) #1

declare dso_local i32 @smapi_request(i32, i32, i32, i16 zeroext, i16*, i16*, i16*, i16*, i16*, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
