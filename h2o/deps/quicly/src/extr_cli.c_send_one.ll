; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/src/extr_cli.c_send_one.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/src/extr_cli.c_send_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.msghdr = type { i32, %struct.iovec*, i32, i32* }
%struct.iovec = type { i32, i32 }

@verbosity = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"sendmsg\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_7__*)* @send_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_one(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msghdr, align 8
  %7 = alloca %struct.iovec, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %8 = call i32 @memset(%struct.msghdr* %6, i32 0, i32 32)
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 3
  store i32* %11, i32** %12, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = call i32 @quicly_get_socklen(i32* %15)
  %17 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 2
  store i32 %16, i32* %17, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 1
  store %struct.iovec* %7, %struct.iovec** %28, align 8
  %29 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load i32, i32* @verbosity, align 4
  %31 = icmp sge i32 %30, 2
  br i1 %31, label %32, label %38

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.iovec, %struct.iovec* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @hexdump(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %36)
  br label %38

38:                                               ; preds = %32, %2
  br label %39

39:                                               ; preds = %50, %38
  %40 = load i32, i32* %3, align 4
  %41 = call i64 @sendmsg(i32 %40, %struct.msghdr* %6, i32 0)
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %5, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i64, i64* @errno, align 8
  %46 = load i64, i64* @EINTR, align 8
  %47 = icmp eq i64 %45, %46
  br label %48

48:                                               ; preds = %44, %39
  %49 = phi i1 [ false, %39 ], [ %47, %44 ]
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  br label %39

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @memset(%struct.msghdr*, i32, i32) #1

declare dso_local i32 @quicly_get_socklen(i32*) #1

declare dso_local i32 @hexdump(i8*, i32, i32) #1

declare dso_local i64 @sendmsg(i32, %struct.msghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
