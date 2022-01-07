; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_sonypi.c_input_keyrelease.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_sonypi.c_input_keyrelease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.work_struct = type { i32 }
%struct.sonypi_keypress = type { i32, i32 }

@sonypi_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @input_keyrelease to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_keyrelease(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.sonypi_keypress, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = bitcast %struct.sonypi_keypress* %3 to i8*
  %6 = call i32 @kfifo_out_locked(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sonypi_device, i32 0, i32 1), i8* %5, i32 8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sonypi_device, i32 0, i32 0))
  %7 = sext i32 %6 to i64
  %8 = icmp eq i64 %7, 8
  br i1 %8, label %9, label %19

9:                                                ; preds = %4
  %10 = call i32 @msleep(i32 10)
  %11 = getelementptr inbounds %struct.sonypi_keypress, %struct.sonypi_keypress* %3, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.sonypi_keypress, %struct.sonypi_keypress* %3, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @input_report_key(i32 %12, i32 %14, i32 0)
  %16 = getelementptr inbounds %struct.sonypi_keypress, %struct.sonypi_keypress* %3, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @input_sync(i32 %17)
  br label %4

19:                                               ; preds = %4
  ret void
}

declare dso_local i32 @kfifo_out_locked(i32*, i8*, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
