; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp.c_our_sendmmsg.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp.c_our_sendmmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.our_mmsghdr = type { i32 }

@sendmmsg_supported = common dso_local global i32 0, align 4
@__NR_sendmmsg = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"warning: sendmmsg() not supported, falling back to sendmsg()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @our_sendmmsg(i32 %0, %struct.our_mmsghdr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.our_mmsghdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.our_mmsghdr* %1, %struct.our_mmsghdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @sendmmsg_supported, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %4
  %14 = load i32, i32* @__NR_sendmmsg, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.our_mmsghdr*, %struct.our_mmsghdr** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @syscall(i32 %14, i32 %15, %struct.our_mmsghdr* %16, i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  br label %50

20:                                               ; preds = %4
  %21 = load i32, i32* @sendmmsg_supported, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i64, i64* @ENOSYS, align 8
  store i64 %24, i64* @errno, align 8
  store i32 -1, i32* %5, align 4
  br label %50

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* @__NR_sendmmsg, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.our_mmsghdr*, %struct.our_mmsghdr** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @syscall(i32 %27, i32 %28, %struct.our_mmsghdr* %29, i32 %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %26
  %36 = load i64, i64* @errno, align 8
  %37 = load i64, i64* @ENOSYS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i64, i64* @verbosity, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 @fprintf(i32 %43, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %45 = load i64, i64* @ENOSYS, align 8
  store i64 %45, i64* @errno, align 8
  br label %46

46:                                               ; preds = %42, %39
  store i32 -1, i32* @sendmmsg_supported, align 4
  br label %48

47:                                               ; preds = %35, %26
  store i32 1, i32* @sendmmsg_supported, align 4
  br label %48

48:                                               ; preds = %47, %46
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %48, %23, %13
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @syscall(i32, i32, %struct.our_mmsghdr*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
