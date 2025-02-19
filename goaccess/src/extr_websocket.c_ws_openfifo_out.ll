; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_openfifo_out.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_websocket.c_ws_openfifo_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@wsconfig = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Unable to open fifo out: %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Unable to open fifo out: %s.\00", align 1
@max_file_fd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @ws_openfifo_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ws_openfifo_out(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @wsconfig, i32 0, i32 0), align 4
  %5 = call i32 @ws_setfifo(i32 %4)
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @wsconfig, i32 0, i32 0), align 4
  %7 = load i32, i32* @O_WRONLY, align 4
  %8 = load i32, i32* @O_NONBLOCK, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @open(i32 %6, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load i64, i64* @errno, align 8
  %15 = load i64, i64* @ENXIO, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i64, i64* @errno, align 8
  %19 = call i32 @strerror(i64 %18)
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @LOG(i8* %21)
  br label %31

23:                                               ; preds = %13, %1
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i64, i64* @errno, align 8
  %28 = call i32 @strerror(i64 %27)
  %29 = call i32 @FATAL(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %23
  br label %31

31:                                               ; preds = %30, %17
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @max_file_fd, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* %3, align 4
  store i32 %42, i32* @max_file_fd, align 4
  br label %43

43:                                               ; preds = %41, %37, %31
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @ws_setfifo(i32) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @LOG(i8*) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @FATAL(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
