; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/platforms/iss/extr_network.c_setup_etheraddr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/platforms/iss/extr_network.c_setup_etheraddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8*, i32 }

@.str = private unnamed_addr constant [49 x i8] c"%s: failed to parse '%s' as an ethernet address\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"%s: attempt to assign a multicast ethernet address\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"%s: attempt to assign an invalid ethernet address\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"%s: assigning a globally valid ethernet address\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"%s: choosing a random ethernet address\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i8*)* @setup_etheraddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_etheraddr(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %51

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @mac_pton(i8* %13, i8* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %20, i8* %21)
  br label %51

23:                                               ; preds = %12
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @is_multicast_ether_addr(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %51

32:                                               ; preds = %23
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @is_valid_ether_addr(i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  br label %51

41:                                               ; preds = %32
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @is_local_ether_addr(i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %45, %41
  br label %58

51:                                               ; preds = %36, %27, %17, %11
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = call i32 @eth_hw_addr_random(%struct.net_device* %56)
  br label %58

58:                                               ; preds = %51, %50
  ret void
}

declare dso_local i32 @mac_pton(i8*, i8*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i64 @is_multicast_ether_addr(i8*) #1

declare dso_local i32 @is_valid_ether_addr(i8*) #1

declare dso_local i32 @is_local_ether_addr(i8*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
