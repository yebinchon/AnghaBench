; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_check_wp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_check_wp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@FD_VERIFY_BIT = common dso_local global i32 0, align 4
@DRS = common dso_local global %struct.TYPE_5__* null, align 8
@FD_GETSTATUS = common dso_local global i32 0, align 4
@current_drive = common dso_local global i32 0, align 4
@FDCS = common dso_local global %struct.TYPE_4__* null, align 8
@FD_NEED_TWADDLE_BIT = common dso_local global i32 0, align 4
@DP = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"checking whether disk is write protected\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"wp=%x\0A\00", align 1
@ST3 = common dso_local global i32 0, align 4
@FD_DISK_WRITABLE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_wp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_wp() #0 {
  %1 = load i32, i32* @FD_VERIFY_BIT, align 4
  %2 = load %struct.TYPE_5__*, %struct.TYPE_5__** @DRS, align 8
  %3 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %4 = call i64 @test_bit(i32 %1, i32* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %50

6:                                                ; preds = %0
  %7 = load i32, i32* @FD_GETSTATUS, align 4
  %8 = call i32 @output_byte(i32 %7)
  %9 = load i32, i32* @current_drive, align 4
  %10 = call i32 @UNIT(i32 %9)
  %11 = call i32 @output_byte(i32 %10)
  %12 = call i32 (...) @result()
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FDCS, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  br label %50

17:                                               ; preds = %6
  %18 = load i32, i32* @FD_VERIFY_BIT, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @DRS, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = call i32 @clear_bit(i32 %18, i32* %20)
  %22 = load i32, i32* @FD_NEED_TWADDLE_BIT, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @DRS, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = call i32 @clear_bit(i32 %22, i32* %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @DP, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, ...) @debug_dcl(i32 %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @DP, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ST3, align 4
  %34 = and i32 %33, 64
  %35 = call i32 (i32, i8*, ...) @debug_dcl(i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @ST3, align 4
  %37 = and i32 %36, 64
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %17
  %40 = load i32, i32* @FD_DISK_WRITABLE_BIT, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @DRS, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = call i32 @set_bit(i32 %40, i32* %42)
  br label %49

44:                                               ; preds = %17
  %45 = load i32, i32* @FD_DISK_WRITABLE_BIT, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @DRS, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i32 @clear_bit(i32 %45, i32* %47)
  br label %49

49:                                               ; preds = %44, %39
  br label %50

50:                                               ; preds = %14, %49, %0
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @output_byte(i32) #1

declare dso_local i32 @UNIT(i32) #1

declare dso_local i32 @result(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @debug_dcl(i32, i8*, ...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
