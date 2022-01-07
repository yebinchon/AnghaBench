; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4040_cs.c_wait_for_bulk_out_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4040_cs.c_wait_for_bulk_out_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reader_dev = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }

@POLL_LOOP_COUNT = common dso_local global i32 0, align 4
@REG_OFFSET_BUFFER_STATUS = common dso_local global i64 0, align 8
@BSR_BULK_OUT_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"BulkOut empty (i=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"wait_event_interruptible_timeout(timeout=%ld\0A\00", align 1
@BS_WRITABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"woke up: BulkOut empty\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"woke up: BulkOut full, returning 0 :(\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"woke up: signal arrived\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reader_dev*)* @wait_for_bulk_out_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_bulk_out_ready(%struct.reader_dev* %0) #0 {
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

16:                                               ; preds = %34, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @POLL_LOOP_COUNT, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* @REG_OFFSET_BUFFER_STATUS, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @xinb(i64 %24)
  %26 = load i32, i32* @BSR_BULK_OUT_FULL, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i32, %struct.reader_dev*, i8*, ...) @DEBUGP(i32 4, %struct.reader_dev* %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 1, i32* %2, align 4
  br label %75

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %16

37:                                               ; preds = %16
  %38 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %39 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %40 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i32, %struct.reader_dev*, i8*, ...) @DEBUGP(i32 4, %struct.reader_dev* %38, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %44 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @BS_WRITABLE, align 4
  %47 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %48 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %47, i32 0, i32 1
  %49 = call i32 @test_and_clear_bit(i32 %46, i32* %48)
  %50 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %51 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @wait_event_interruptible_timeout(i32 %45, i32 %49, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %37
  %57 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %58 = call i32 (i32, %struct.reader_dev*, i8*, ...) @DEBUGP(i32 4, %struct.reader_dev* %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %73

59:                                               ; preds = %37
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %64 = call i32 (i32, %struct.reader_dev*, i8*, ...) @DEBUGP(i32 4, %struct.reader_dev* %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %72

65:                                               ; preds = %59
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %70 = call i32 (i32, %struct.reader_dev*, i8*, ...) @DEBUGP(i32 4, %struct.reader_dev* %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71, %62
  br label %73

73:                                               ; preds = %72, %56
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %29
  %76 = load i32, i32* %2, align 4
  ret i32 %76
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
