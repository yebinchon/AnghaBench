; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_output_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_output_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@FD_DATA = common dso_local global i32 0, align 4
@output_log = common dso_local global %struct.TYPE_3__* null, align 8
@output_log_pos = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@OLOGSIZE = common dso_local global i64 0, align 8
@FDCS = common dso_local global %struct.TYPE_4__* null, align 8
@initialized = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Unable to send byte %x to FDC. Fdc=%x Status=%x\0A\00", align 1
@fdc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @output_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_byte(i8 signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  %5 = call i32 (...) @wait_til_ready()
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %48

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @is_ready_state(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = load i8, i8* %3, align 1
  %15 = load i32, i32* @FD_DATA, align 4
  %16 = call i32 @fd_outb(i8 signext %14, i32 %15)
  %17 = load i8, i8* %3, align 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @output_log, align 8
  %19 = load i64, i64* @output_log_pos, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i8 %17, i8* %21, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @output_log, align 8
  %24 = load i64, i64* @output_log_pos, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i32 %22, i32* %26, align 4
  %27 = load i32, i32* @jiffies, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @output_log, align 8
  %29 = load i64, i64* @output_log_pos, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  store i32 %27, i32* %31, align 4
  %32 = load i64, i64* @output_log_pos, align 8
  %33 = add i64 %32, 1
  %34 = load i64, i64* @OLOGSIZE, align 8
  %35 = urem i64 %33, %34
  store i64 %35, i64* @output_log_pos, align 8
  store i32 0, i32* %2, align 4
  br label %48

36:                                               ; preds = %9
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FDCS, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load i64, i64* @initialized, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i8, i8* %3, align 1
  %43 = load i32, i32* @fdc, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @DPRINT(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8 signext %42, i32 %43, i32 %44)
  %46 = call i32 (...) @show_floppy()
  br label %47

47:                                               ; preds = %41, %36
  store i32 -1, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %13, %8
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @wait_til_ready(...) #1

declare dso_local i64 @is_ready_state(i32) #1

declare dso_local i32 @fd_outb(i8 signext, i32) #1

declare dso_local i32 @DPRINT(i8*, i8 signext, i32, i32) #1

declare dso_local i32 @show_floppy(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
