; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4040_cs.c_wait_for_bulk_in_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4040_cs.c_wait_for_bulk_in_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reader_dev = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }

@POLL_LOOP_COUNT = common dso_local global i32 0, align 4
@REG_OFFSET_BUFFER_STATUS = common dso_local global i64 0, align 8
@BSR_BULK_IN_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"BulkIn full (i=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"wait_event_interruptible_timeout(timeout=%ld\0A\00", align 1
@BS_READABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"woke up: BulkIn full\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"woke up: BulkIn not full, returning 0 :(\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"woke up: signal arrived\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reader_dev*)* @wait_for_bulk_in_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_bulk_in_ready(%struct.reader_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.reader_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.reader_dev* %0, %struct.reader_dev** %3, align 8
  %7 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %8 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %7, i32 0, i32 3
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %11, i64 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %35, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @POLL_LOOP_COUNT, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* @REG_OFFSET_BUFFER_STATUS, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @xinb(i64 %24)
  %26 = load i32, i32* @BSR_BULK_IN_FULL, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @BSR_BULK_IN_FULL, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 (i32, %struct.reader_dev*, i8*, ...) @DEBUGP(i32 3, %struct.reader_dev* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 1, i32* %2, align 4
  br label %76

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %16

38:                                               ; preds = %16
  %39 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %40 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %41 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i32, %struct.reader_dev*, i8*, ...) @DEBUGP(i32 4, %struct.reader_dev* %39, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %45 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @BS_READABLE, align 4
  %48 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %49 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %48, i32 0, i32 1
  %50 = call i32 @test_and_clear_bit(i32 %47, i32* %49)
  %51 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %52 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @wait_event_interruptible_timeout(i32 %46, i32 %50, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %38
  %58 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %59 = call i32 (i32, %struct.reader_dev*, i8*, ...) @DEBUGP(i32 4, %struct.reader_dev* %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %74

60:                                               ; preds = %38
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %65 = call i32 (i32, %struct.reader_dev*, i8*, ...) @DEBUGP(i32 4, %struct.reader_dev* %64, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %73

66:                                               ; preds = %60
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %71 = call i32 (i32, %struct.reader_dev*, i8*, ...) @DEBUGP(i32 4, %struct.reader_dev* %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72, %63
  br label %74

74:                                               ; preds = %73, %57
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %30
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @xinb(i64) #1

declare dso_local i32 @DEBUGP(i32, %struct.reader_dev*, i8*, ...) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
