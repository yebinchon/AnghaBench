; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_net_timeout_reached.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_net_timeout_reached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_request = type { i32, i64, i64, %struct.drbd_device* }
%struct.drbd_device = type { i32 }
%struct.drbd_connection = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32 }

@RQ_NET_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"Remote failed to finish a request within %ums > ko-count (%u) * timeout (%u * 0.1s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [105 x i8] c"We did not send a P_BARRIER for %ums > ko-count (%u) * timeout (%u * 0.1s); drbd kernel thread blocked?\0A\00", align 1
@.str.2 = private unnamed_addr constant [118 x i8] c"Remote failed to answer a P_BARRIER (sent at %lu jif; now=%lu jif) within %ums > ko-count (%u) * timeout (%u * 0.1s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_request*, %struct.drbd_connection*, i64, i64, i32, i32)* @net_timeout_reached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_timeout_reached(%struct.drbd_request* %0, %struct.drbd_connection* %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drbd_request*, align 8
  %9 = alloca %struct.drbd_connection*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.drbd_device*, align 8
  store %struct.drbd_request* %0, %struct.drbd_request** %8, align 8
  store %struct.drbd_connection* %1, %struct.drbd_connection** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.drbd_request*, %struct.drbd_request** %8, align 8
  %16 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %15, i32 0, i32 3
  %17 = load %struct.drbd_device*, %struct.drbd_device** %16, align 8
  store %struct.drbd_device* %17, %struct.drbd_device** %14, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load %struct.drbd_request*, %struct.drbd_request** %8, align 8
  %20 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %11, align 8
  %23 = add i64 %21, %22
  %24 = call i64 @time_after(i64 %18, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %110

27:                                               ; preds = %6
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.drbd_connection*, %struct.drbd_connection** %9, align 8
  %30 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.drbd_connection*, %struct.drbd_connection** %9, align 8
  %33 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %11, align 8
  %36 = add i64 %34, %35
  %37 = call i64 @time_in_range(i64 %28, i64 %31, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %110

40:                                               ; preds = %27
  %41 = load %struct.drbd_request*, %struct.drbd_request** %8, align 8
  %42 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @RQ_NET_PENDING, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %40
  %48 = load %struct.drbd_device*, %struct.drbd_device** %14, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.drbd_request*, %struct.drbd_request** %8, align 8
  %51 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = sub i64 %49, %52
  %54 = call i32 @jiffies_to_msecs(i64 %53)
  %55 = load i32, i32* %12, align 4
  %56 = zext i32 %55 to i64
  %57 = load i32, i32* %13, align 4
  %58 = call i32 (%struct.drbd_device*, i8*, i32, i64, i32, ...) @drbd_warn(%struct.drbd_device* %48, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %54, i64 %56, i32 %57)
  store i32 1, i32* %7, align 4
  br label %110

59:                                               ; preds = %40
  %60 = load %struct.drbd_request*, %struct.drbd_request** %8, align 8
  %61 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.drbd_connection*, %struct.drbd_connection** %9, align 8
  %64 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %62, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %59
  %69 = load %struct.drbd_device*, %struct.drbd_device** %14, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.drbd_request*, %struct.drbd_request** %8, align 8
  %72 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = sub i64 %70, %73
  %75 = call i32 @jiffies_to_msecs(i64 %74)
  %76 = load i32, i32* %12, align 4
  %77 = zext i32 %76 to i64
  %78 = load i32, i32* %13, align 4
  %79 = call i32 (%struct.drbd_device*, i8*, i32, i64, i32, ...) @drbd_warn(%struct.drbd_device* %69, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.1, i64 0, i64 0), i32 %75, i64 %77, i32 %78)
  store i32 0, i32* %7, align 4
  br label %110

80:                                               ; preds = %59
  %81 = load i64, i64* %10, align 8
  %82 = load %struct.drbd_connection*, %struct.drbd_connection** %9, align 8
  %83 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %11, align 8
  %88 = add i64 %86, %87
  %89 = call i64 @time_after(i64 %81, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %109

91:                                               ; preds = %80
  %92 = load %struct.drbd_device*, %struct.drbd_device** %14, align 8
  %93 = load %struct.drbd_connection*, %struct.drbd_connection** %9, align 8
  %94 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load %struct.drbd_connection*, %struct.drbd_connection** %9, align 8
  %100 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = sub i64 %98, %103
  %105 = call i32 @jiffies_to_msecs(i64 %104)
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %13, align 4
  %108 = call i32 (%struct.drbd_device*, i8*, i32, i64, i32, ...) @drbd_warn(%struct.drbd_device* %92, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.2, i64 0, i64 0), i32 %96, i64 %97, i32 %105, i32 %106, i32 %107)
  store i32 1, i32* %7, align 4
  br label %110

109:                                              ; preds = %80
  store i32 0, i32* %7, align 4
  br label %110

110:                                              ; preds = %109, %91, %68, %47, %39, %26
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @time_in_range(i64, i64, i64) #1

declare dso_local i32 @drbd_warn(%struct.drbd_device*, i8*, i32, i64, i32, ...) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
