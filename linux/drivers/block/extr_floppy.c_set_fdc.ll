; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_set_fdc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_set_fdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@N_DRIVE = common dso_local global i32 0, align 4
@fdc = common dso_local global i32 0, align 4
@current_drive = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"bad fdc value\0A\00", align 1
@FDCS = common dso_local global %struct.TYPE_2__* null, align 8
@FD_STATUS = common dso_local global i32 0, align 4
@STATUS_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_fdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_fdc(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sge i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @N_DRIVE, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @FDC(i32 %10)
  store i32 %11, i32* @fdc, align 4
  %12 = load i32, i32* %2, align 4
  store i32 %12, i32* @current_drive, align 4
  br label %13

13:                                               ; preds = %9, %5, %1
  %14 = load i32, i32* @fdc, align 4
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32, i32* @fdc, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %38

21:                                               ; preds = %16, %13
  %22 = load i32, i32* @fdc, align 4
  %23 = call i32 @set_dor(i32 %22, i32 -1, i32 8)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FDCS, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 @reset_fdc_info(i32 1)
  br label %30

30:                                               ; preds = %28, %21
  %31 = load i32, i32* @FD_STATUS, align 4
  %32 = call i64 @fd_inb(i32 %31)
  %33 = load i64, i64* @STATUS_READY, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @FDCS, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %19, %35, %30
  ret void
}

declare dso_local i32 @FDC(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @set_dor(i32, i32, i32) #1

declare dso_local i32 @reset_fdc_info(i32) #1

declare dso_local i64 @fd_inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
