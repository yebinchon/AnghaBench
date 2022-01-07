; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_firmware.c_pdc_lan_station_id.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_firmware.c_pdc_lan_station_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pdc_lock = common dso_local global i32 0, align 4
@PDC_LAN_STATION_ID = common dso_local global i32 0, align 4
@PDC_LAN_STATION_ID_READ = common dso_local global i32 0, align 4
@pdc_result = common dso_local global i32 0, align 4
@PDC_LAN_STATION_ID_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pdc_lan_station_id(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @pdc_lock, i64 %7)
  %9 = load i32, i32* @PDC_LAN_STATION_ID, align 4
  %10 = load i32, i32* @PDC_LAN_STATION_ID_READ, align 4
  %11 = load i32, i32* @pdc_result, align 4
  %12 = call i32 @__pa(i32 %11)
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @mem_pdc_call(i32 %9, i32 %10, i32 %12, i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* @PDC_LAN_STATION_ID_SIZE, align 4
  %20 = call i32 @memset(i8* %18, i32 0, i32 %19)
  br label %26

21:                                               ; preds = %2
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* @pdc_result, align 4
  %24 = load i32, i32* @PDC_LAN_STATION_ID_SIZE, align 4
  %25 = call i32 @memcpy(i8* %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %17
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* @pdc_lock, i64 %27)
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mem_pdc_call(i32, i32, i32, i64) #1

declare dso_local i32 @__pa(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
