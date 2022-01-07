; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_buffer.c_addfile_test_readcb.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_buffer.c_addfile_test_readcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }

@addfile_test_total_read = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Read %d/%d bytes\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@addfile_test_event_base = common dso_local global i32 0, align 4
@addfile_test_done_writing = common dso_local global i64 0, align 8
@addfile_test_total_written = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @addfile_test_readcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addfile_test_readcb(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.evbuffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.evbuffer*
  store %struct.evbuffer* %11, %struct.evbuffer** %7, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %28, %3
  %13 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @evbuffer_read(%struct.evbuffer* %13, i32 %14, i32 1024)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @addfile_test_total_read, align 8
  %22 = add nsw i64 %21, %20
  store i64 %22, i64* @addfile_test_total_read, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i64, i64* @addfile_test_total_read, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @TT_BLATHER(i8* %25)
  br label %27

27:                                               ; preds = %18, %12
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %9, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %12, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @evutil_socket_geterror(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @EVUTIL_ERR_RW_RETRIABLE(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = call i32 @tt_fail_perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @addfile_test_event_base, align 4
  %43 = call i32 @event_base_loopexit(i32 %42, i32* null)
  br label %44

44:                                               ; preds = %40, %34
  br label %45

45:                                               ; preds = %44, %31
  %46 = load i64, i64* @addfile_test_done_writing, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i64, i64* @addfile_test_total_read, align 8
  %50 = load i64, i64* @addfile_test_total_written, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @addfile_test_event_base, align 4
  %54 = call i32 @event_base_loopexit(i32 %53, i32* null)
  br label %55

55:                                               ; preds = %52, %48, %45
  ret void
}

declare dso_local i32 @evbuffer_read(%struct.evbuffer*, i32, i32) #1

declare dso_local i32 @TT_BLATHER(i8*) #1

declare dso_local i32 @evutil_socket_geterror(i32) #1

declare dso_local i32 @EVUTIL_ERR_RW_RETRIABLE(i32) #1

declare dso_local i32 @tt_fail_perror(i8*) #1

declare dso_local i32 @event_base_loopexit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
