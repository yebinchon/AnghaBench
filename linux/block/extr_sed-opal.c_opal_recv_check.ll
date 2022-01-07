; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_opal_recv_check.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_opal_recv_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i8* }
%struct.opal_header = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@IO_BUFFER_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Sent OPAL command: outstanding=%d, minTransfer=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*)* @opal_recv_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_recv_check(%struct.opal_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.opal_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.opal_header*, align 8
  %7 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %3, align 8
  %8 = load i64, i64* @IO_BUFFER_LENGTH, align 8
  store i64 %8, i64* %4, align 8
  %9 = load %struct.opal_dev*, %struct.opal_dev** %3, align 8
  %10 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.opal_header*
  store %struct.opal_header* %13, %struct.opal_header** %6, align 8
  br label %14

14:                                               ; preds = %42, %1
  %15 = load %struct.opal_header*, %struct.opal_header** %6, align 8
  %16 = getelementptr inbounds %struct.opal_header, %struct.opal_header* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.opal_header*, %struct.opal_header** %6, align 8
  %20 = getelementptr inbounds %struct.opal_header, %struct.opal_header* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %18, i64 %22)
  %24 = load %struct.opal_header*, %struct.opal_header** %6, align 8
  %25 = getelementptr inbounds %struct.opal_header, %struct.opal_header* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %14
  %30 = load %struct.opal_header*, %struct.opal_header** %6, align 8
  %31 = getelementptr inbounds %struct.opal_header, %struct.opal_header* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %14
  store i32 0, i32* %2, align 4
  br label %48

36:                                               ; preds = %29
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @memset(i8* %37, i32 0, i64 %38)
  %40 = load %struct.opal_dev*, %struct.opal_dev** %3, align 8
  %41 = call i32 @opal_recv_cmd(%struct.opal_dev* %40)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br i1 %45, label %14, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %35
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @opal_recv_cmd(%struct.opal_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
