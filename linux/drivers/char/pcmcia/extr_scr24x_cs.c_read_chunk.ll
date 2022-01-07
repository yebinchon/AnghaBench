; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_scr24x_cs.c_read_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_scr24x_cs.c_read_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scr24x_dev = type { i64, i32* }

@CMD_READ_BYTE = common dso_local global i32 0, align 4
@SCR24X_CMD_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scr24x_dev*, i64, i64)* @read_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_chunk(%struct.scr24x_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scr24x_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.scr24x_dev* %0, %struct.scr24x_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %6, align 8
  store i64 %11, i64* %8, align 8
  br label %12

12:                                               ; preds = %61, %3
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %64

16:                                               ; preds = %12
  %17 = load i32, i32* @CMD_READ_BYTE, align 4
  %18 = load %struct.scr24x_dev*, %struct.scr24x_dev** %5, align 8
  %19 = getelementptr inbounds %struct.scr24x_dev, %struct.scr24x_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SCR24X_CMD_STATUS, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @iowrite8(i32 %17, i64 %22)
  %24 = load %struct.scr24x_dev*, %struct.scr24x_dev** %5, align 8
  %25 = call i32 @scr24x_wait_ready(%struct.scr24x_dev* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %65

30:                                               ; preds = %16
  store i64 0, i64* %9, align 8
  br label %31

31:                                               ; preds = %57, %30
  %32 = load i64, i64* %9, align 8
  %33 = icmp ult i64 %32, 5
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %35, %36
  %38 = load i64, i64* %7, align 8
  %39 = icmp ult i64 %37, %38
  br label %40

40:                                               ; preds = %34, %31
  %41 = phi i1 [ false, %31 ], [ %39, %34 ]
  br i1 %41, label %42, label %60

42:                                               ; preds = %40
  %43 = load %struct.scr24x_dev*, %struct.scr24x_dev** %5, align 8
  %44 = getelementptr inbounds %struct.scr24x_dev, %struct.scr24x_dev* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i64 @SCR24X_DATA(i64 %46)
  %48 = add nsw i64 %45, %47
  %49 = call i32 @ioread8(i64 %48)
  %50 = load %struct.scr24x_dev*, %struct.scr24x_dev** %5, align 8
  %51 = getelementptr inbounds %struct.scr24x_dev, %struct.scr24x_dev* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %53, %54
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  store i32 %49, i32* %56, align 4
  br label %57

57:                                               ; preds = %42
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %9, align 8
  br label %31

60:                                               ; preds = %40
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 5
  store i64 %63, i64* %8, align 8
  br label %12

64:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %28
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @iowrite8(i32, i64) #1

declare dso_local i32 @scr24x_wait_ready(%struct.scr24x_dev*) #1

declare dso_local i32 @ioread8(i64) #1

declare dso_local i64 @SCR24X_DATA(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
