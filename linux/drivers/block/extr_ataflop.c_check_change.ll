; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_ataflop.c_check_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_ataflop.c_check_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i8 }
%struct.timer_list = type { i32 }

@check_change.drive = internal global i32 0, align 4
@UD = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@sound_ym = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@DSKDRVNONE = common dso_local global i8 0, align 1
@DSKDRV0 = common dso_local global i8 0, align 1
@DSKDRV1 = common dso_local global i8 0, align 1
@FDCREG_STATUS = common dso_local global i32 0, align 4
@FDCSTAT_WPROT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"wpstat[%d] = %d\0A\00", align 1
@changed_floppies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @check_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_change(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load i32, i32* @check_change.drive, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @check_change.drive, align 4
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @UD, i32 0, i32 1), align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %1
  store i32 0, i32* @check_change.drive, align 4
  br label %13

13:                                               ; preds = %12, %9
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @local_irq_save(i64 %14)
  %16 = call i32 (...) @stdma_islocked()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %61, label %18

18:                                               ; preds = %13
  store i32 14, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sound_ym, i32 0, i32 0), align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sound_ym, i32 0, i32 0), align 4
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %4, align 1
  %21 = load i8, i8* %4, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @DSKDRVNONE, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %22, %24
  %26 = load i32, i32* @check_change.drive, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i8, i8* @DSKDRV0, align 1
  %30 = zext i8 %29 to i32
  br label %34

31:                                               ; preds = %18
  %32 = load i8, i8* @DSKDRV1, align 1
  %33 = zext i8 %32 to i32
  br label %34

34:                                               ; preds = %31, %28
  %35 = phi i32 [ %30, %28 ], [ %33, %31 ]
  %36 = xor i32 %35, -1
  %37 = and i32 %25, %36
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sound_ym, i32 0, i32 1), align 4
  %39 = load i32, i32* @FDCREG_STATUS, align 4
  %40 = call i32 @FDC_READ(i32 %39)
  %41 = load i32, i32* @FDCSTAT_WPROT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %5, align 4
  %47 = load i8, i8* %4, align 1
  store i8 %47, i8* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sound_ym, i32 0, i32 1), align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @UD, i32 0, i32 0), align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %34
  %52 = load i32, i32* @check_change.drive, align 4
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 @DPRINT(i8* %55)
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @UD, i32 0, i32 0), align 4
  %58 = load i32, i32* @check_change.drive, align 4
  %59 = call i32 @set_bit(i32 %58, i32* @changed_floppies)
  br label %60

60:                                               ; preds = %51, %34
  br label %61

61:                                               ; preds = %60, %13
  %62 = load i64, i64* %3, align 8
  %63 = call i32 @local_irq_restore(i64 %62)
  %64 = call i32 (...) @start_check_change_timer()
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @stdma_islocked(...) #1

declare dso_local i32 @FDC_READ(i32) #1

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @start_check_change_timer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
