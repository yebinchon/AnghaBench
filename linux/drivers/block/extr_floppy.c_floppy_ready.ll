; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_floppy_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_floppy_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@FDCS = common dso_local global %struct.TYPE_5__* null, align 8
@DP = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"calling disk change from floppy_ready\0A\00", align 1
@raw_cmd = common dso_local global %struct.TYPE_4__* null, align 8
@FD_RAW_NO_MOTOR = common dso_local global i32 0, align 4
@current_drive = common dso_local global i32 0, align 4
@FD_RAW_NEED_SEEK = common dso_local global i32 0, align 4
@FD_RAW_NEED_DISK = common dso_local global i32 0, align 4
@FD_RAW_READ = common dso_local global i32 0, align 4
@FD_RAW_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @floppy_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @floppy_ready() #0 {
  %1 = load %struct.TYPE_5__*, %struct.TYPE_5__** @FDCS, align 8
  %2 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 (...) @reset_fdc()
  br label %68

7:                                                ; preds = %0
  %8 = call i64 @start_motor(void (...)* bitcast (void ()* @floppy_ready to void (...)*))
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %68

11:                                               ; preds = %7
  %12 = call i64 (...) @fdc_dtr()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %68

15:                                               ; preds = %11
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @DP, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @debug_dcl(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @raw_cmd, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FD_RAW_NO_MOTOR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %15
  %27 = load i32, i32* @current_drive, align 4
  %28 = call i64 @disk_change(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @DP, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = call i32 (...) @twaddle()
  br label %37

37:                                               ; preds = %35, %30, %26, %15
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @raw_cmd, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @FD_RAW_NEED_SEEK, align 4
  %42 = load i32, i32* @FD_RAW_NEED_DISK, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = call i32 (...) @perpendicular_mode()
  %48 = call i32 (...) @fdc_specify()
  %49 = call i32 (...) @seek_floppy()
  br label %68

50:                                               ; preds = %37
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @raw_cmd, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @FD_RAW_READ, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @raw_cmd, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @FD_RAW_WRITE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57, %50
  %65 = call i32 (...) @fdc_specify()
  br label %66

66:                                               ; preds = %64, %57
  %67 = call i32 (...) @setup_rw_floppy()
  br label %68

68:                                               ; preds = %5, %10, %14, %66, %46
  ret void
}

declare dso_local i32 @reset_fdc(...) #1

declare dso_local i64 @start_motor(void (...)*) #1

declare dso_local i64 @fdc_dtr(...) #1

declare dso_local i32 @debug_dcl(i32, i8*) #1

declare dso_local i64 @disk_change(i32) #1

declare dso_local i32 @twaddle(...) #1

declare dso_local i32 @perpendicular_mode(...) #1

declare dso_local i32 @fdc_specify(...) #1

declare dso_local i32 @seek_floppy(...) #1

declare dso_local i32 @setup_rw_floppy(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
