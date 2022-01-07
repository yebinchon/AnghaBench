; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_net_kern.c_iter_addresses.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_net_kern.c_iter_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.in_device* }
%struct.in_device = type { %struct.in_ifaddr* }
%struct.in_ifaddr = type { %struct.in_ifaddr*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iter_addresses(i8* %0, void (i8*, i8*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca void (i8*, i8*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.in_device*, align 8
  %9 = alloca %struct.in_ifaddr*, align 8
  %10 = alloca [4 x i8], align 1
  %11 = alloca [4 x i8], align 1
  store i8* %0, i8** %4, align 8
  store void (i8*, i8*, i8*)* %1, void (i8*, i8*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.net_device*
  store %struct.net_device* %13, %struct.net_device** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load %struct.in_device*, %struct.in_device** %15, align 8
  store %struct.in_device* %16, %struct.in_device** %8, align 8
  %17 = load %struct.in_device*, %struct.in_device** %8, align 8
  %18 = icmp eq %struct.in_device* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %43

20:                                               ; preds = %3
  %21 = load %struct.in_device*, %struct.in_device** %8, align 8
  %22 = getelementptr inbounds %struct.in_device, %struct.in_device* %21, i32 0, i32 0
  %23 = load %struct.in_ifaddr*, %struct.in_ifaddr** %22, align 8
  store %struct.in_ifaddr* %23, %struct.in_ifaddr** %9, align 8
  br label %24

24:                                               ; preds = %27, %20
  %25 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %26 = icmp ne %struct.in_ifaddr* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %29 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %30 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %29, i32 0, i32 2
  %31 = call i32 @memcpy(i8* %28, i32* %30, i32 4)
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %33 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %34 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %33, i32 0, i32 1
  %35 = call i32 @memcpy(i8* %32, i32* %34, i32 4)
  %36 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %5, align 8
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %39 = load i8*, i8** %6, align 8
  call void %36(i8* %37, i8* %38, i8* %39)
  %40 = load %struct.in_ifaddr*, %struct.in_ifaddr** %9, align 8
  %41 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %40, i32 0, i32 0
  %42 = load %struct.in_ifaddr*, %struct.in_ifaddr** %41, align 8
  store %struct.in_ifaddr* %42, %struct.in_ifaddr** %9, align 8
  br label %24

43:                                               ; preds = %19, %24
  ret void
}

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
