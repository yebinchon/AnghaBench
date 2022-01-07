; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4040_cs.c_cm4040_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_cm4040_cs.c_cm4040_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.reader_dev* }
%struct.reader_dev = type { i32, i32 }

@BS_READABLE = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@BS_WRITABLE = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"<- cm4040_poll(%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @cm4040_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm4040_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.reader_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.reader_dev*, %struct.reader_dev** %8, align 8
  store %struct.reader_dev* %9, %struct.reader_dev** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = load %struct.reader_dev*, %struct.reader_dev** %5, align 8
  %12 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %11, i32 0, i32 1
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @poll_wait(%struct.file* %10, i32* %12, i32* %13)
  %15 = load i32, i32* @BS_READABLE, align 4
  %16 = load %struct.reader_dev*, %struct.reader_dev** %5, align 8
  %17 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %16, i32 0, i32 0
  %18 = call i64 @test_and_clear_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @EPOLLIN, align 4
  %22 = load i32, i32* @EPOLLRDNORM, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %20, %2
  %27 = load i32, i32* @BS_WRITABLE, align 4
  %28 = load %struct.reader_dev*, %struct.reader_dev** %5, align 8
  %29 = getelementptr inbounds %struct.reader_dev, %struct.reader_dev* %28, i32 0, i32 0
  %30 = call i64 @test_and_clear_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i32, i32* @EPOLLOUT, align 4
  %34 = load i32, i32* @EPOLLWRNORM, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %32, %26
  %39 = load %struct.reader_dev*, %struct.reader_dev** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @DEBUGP(i32 2, %struct.reader_dev* %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @DEBUGP(i32, %struct.reader_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
