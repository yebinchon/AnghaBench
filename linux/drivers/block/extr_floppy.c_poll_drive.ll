; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_poll_drive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_poll_drive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@default_raw_cmd = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@raw_cmd = common dso_local global %struct.TYPE_5__* null, align 8
@poll_cont = common dso_local global i32 0, align 4
@cont = common dso_local global i32* null, align 8
@DP = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"setting NEWCHANGE in poll_drive\0A\00", align 1
@FD_DISK_NEWCHANGE_BIT = common dso_local global i32 0, align 4
@DRS = common dso_local global %struct.TYPE_6__* null, align 8
@floppy_ready = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @poll_drive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poll_drive(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_5__* @default_raw_cmd, %struct.TYPE_5__** @raw_cmd, align 8
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @raw_cmd, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @raw_cmd, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @raw_cmd, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  store i32* @poll_cont, i32** @cont, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** @DP, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @debug_dcl(i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @FD_DISK_NEWCHANGE_BIT, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @DRS, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  %20 = load i32, i32* @floppy_ready, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @wait_til_done(i32 %20, i32 %21)
  ret i32 %22
}

declare dso_local i32 @debug_dcl(i32, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wait_til_done(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
