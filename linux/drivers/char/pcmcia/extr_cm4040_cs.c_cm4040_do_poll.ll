; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4040_cs.c_cm4040_do_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4040_cs.c_cm4040_do_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reader_dev = type { i32, i32, i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i64 }
%struct.timer_list = type { i32 }

@poll_timer = common dso_local global i32 0, align 4
@REG_OFFSET_BUFFER_STATUS = common dso_local global i64 0, align 8
@BSR_BULK_IN_FULL = common dso_local global i32 0, align 4
@BS_READABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"waking up read_wait\0A\00", align 1
@BSR_BULK_OUT_FULL = common dso_local global i32 0, align 4
@BS_WRITABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"waking up write_wait\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@POLL_PERIOD = common dso_local global i64 0, align 8
@dev = common dso_local global %struct.reader_dev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @cm4040_do_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cm4040_do_poll(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.reader_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %6 = ptrtoint %struct.reader_dev* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @poll_timer, align 4
  %9 = call %struct.reader_dev* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.reader_dev* %9, %struct.reader_dev** %3, align 8
  %10 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %11 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %10, i32 0, i32 5
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %14, i64 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @REG_OFFSET_BUFFER_STATUS, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @xinb(i64 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @BSR_BULK_IN_FULL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %1
  %27 = load i32, i32* @BS_READABLE, align 4
  %28 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %29 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %28, i32 0, i32 2
  %30 = call i32 @set_bit(i32 %27, i64* %29)
  %31 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %32 = call i32 @DEBUGP(i32 4, %struct.reader_dev* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %34 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %33, i32 0, i32 4
  %35 = call i32 @wake_up_interruptible(i32* %34)
  br label %41

36:                                               ; preds = %1
  %37 = load i32, i32* @BS_READABLE, align 4
  %38 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %39 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %38, i32 0, i32 2
  %40 = call i32 @clear_bit(i32 %37, i64* %39)
  br label %41

41:                                               ; preds = %36, %26
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @BSR_BULK_OUT_FULL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @BS_WRITABLE, align 4
  %48 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %49 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %48, i32 0, i32 2
  %50 = call i32 @set_bit(i32 %47, i64* %49)
  %51 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %52 = call i32 @DEBUGP(i32 4, %struct.reader_dev* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %54 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %53, i32 0, i32 3
  %55 = call i32 @wake_up_interruptible(i32* %54)
  br label %61

56:                                               ; preds = %41
  %57 = load i32, i32* @BS_WRITABLE, align 4
  %58 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %59 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %58, i32 0, i32 2
  %60 = call i32 @clear_bit(i32 %57, i64* %59)
  br label %61

61:                                               ; preds = %56, %46
  %62 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %63 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %68 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %67, i32 0, i32 1
  %69 = call i32 @wake_up_interruptible(i32* %68)
  br label %70

70:                                               ; preds = %66, %61
  %71 = load %struct.reader_dev*, %struct.reader_dev** %3, align 8
  %72 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %71, i32 0, i32 0
  %73 = load i64, i64* @jiffies, align 8
  %74 = load i64, i64* @POLL_PERIOD, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @mod_timer(i32* %72, i64 %75)
  ret void
}

declare dso_local %struct.reader_dev* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @xinb(i64) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @DEBUGP(i32, %struct.reader_dev*, i8*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
