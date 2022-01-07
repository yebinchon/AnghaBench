; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_event-read-fifo.c_fifo_read.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_event-read-fifo.c_fifo_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"fifo_read called with fd: %d, event: %d, arg: %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Connection closed\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"Read: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i16, i8*)* @fifo_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fifo_read(i64 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca [255 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.event*, align 8
  store i64 %0, i64* %4, align 8
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.event*
  store %struct.event* %11, %struct.event** %9, align 8
  %12 = load i32, i32* @stderr, align 4
  %13 = load i64, i64* %4, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i16, i16* %5, align 2
  %16 = sext i16 %15 to i32
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %16, i8* %17)
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 0
  %21 = call i32 @read(i64 %19, i8* %20, i32 254)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %36

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %29
  br label %36

36:                                               ; preds = %35, %27
  %37 = load %struct.event*, %struct.event** %9, align 8
  %38 = call i32 @event_del(%struct.event* %37)
  %39 = load %struct.event*, %struct.event** %9, align 8
  %40 = call i32 @event_get_base(%struct.event* %39)
  %41 = call i32 @event_base_loopbreak(i32 %40)
  br label %49

42:                                               ; preds = %3
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 %44
  store i8 0, i8* %45, align 1
  %46 = load i32, i32* @stdout, align 4
  %47 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 0
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %42, %36
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @read(i64, i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @event_del(%struct.event*) #1

declare dso_local i32 @event_base_loopbreak(i32) #1

declare dso_local i32 @event_get_base(%struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
