; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/platforms/iss/extr_network.c_tuntap_open.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/platforms/iss/extr_network.c_tuntap_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_net_private = type { %struct.TYPE_8__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ifreq = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"/dev/net/tun\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"%s: failed to open /dev/net/tun, returned %d (errno = %d)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@IFF_TAP = common dso_local global i32 0, align 4
@IFF_NO_PI = common dso_local global i32 0, align 4
@TUNSETIFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"%s: failed to set interface %s, returned %d (errno = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iss_net_private*)* @tuntap_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuntap_open(%struct.iss_net_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iss_net_private*, align 8
  %4 = alloca %struct.ifreq, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iss_net_private* %0, %struct.iss_net_private** %3, align 8
  %8 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %9 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %5, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %6, align 4
  %16 = call i32 @simc_open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 2, i32 0)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %21 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %65

29:                                               ; preds = %1
  %30 = call i32 @memset(%struct.ifreq* %4, i32 0, i32 8)
  %31 = load i32, i32* @IFF_TAP, align 4
  %32 = load i32, i32* @IFF_NO_PI, align 4
  %33 = or i32 %31, %32
  %34 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %4, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @strlcpy(i32 %36, i8* %37, i32 4)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @TUNSETIFF, align 4
  %41 = call i32 @simc_ioctl(i32 %39, i32 %40, %struct.ifreq* %4)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %29
  %45 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %46 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @errno, align 4
  %53 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %49, i8* %50, i32 %51, i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @simc_close(i32 %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %65

57:                                               ; preds = %29
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.iss_net_private*, %struct.iss_net_private** %3, align 8
  %60 = getelementptr inbounds %struct.iss_net_private, %struct.iss_net_private* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32 %58, i32* %63, align 8
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %57, %44, %19
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @simc_open(i8*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @simc_ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @simc_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
