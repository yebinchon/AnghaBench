; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-events.c_maximize_rcvbuf.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-events.c_maximize_rcvbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_UDP_RCVBUF_SIZE = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"getsockopt (SO_RCVBUF)\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c">%d receive buffer was %d, now %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @maximize_rcvbuf(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 4, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @MAX_UDP_RCVBUF_SIZE, align 4
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @SOL_SOCKET, align 4
  %17 = load i32, i32* @SO_RCVBUF, align 4
  %18 = call i64 @getsockopt(i32 %15, i32 %16, i32 %17, i32* %9, i32* %5)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load i64, i64* @verbosity, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  br label %57

26:                                               ; preds = %14
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %6, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @MAX_UDP_RCVBUF_SIZE, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %51, %26
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %4, align 4
  %36 = add i32 %34, %35
  %37 = udiv i32 %36, 2
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @SOL_SOCKET, align 4
  %40 = load i32, i32* @SO_RCVBUF, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @setsockopt(i32 %38, i32 %39, i32 %40, i32* %8, i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %51

48:                                               ; preds = %33
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %44
  br label %29

52:                                               ; preds = %29
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %25
  ret void
}

declare dso_local i64 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
