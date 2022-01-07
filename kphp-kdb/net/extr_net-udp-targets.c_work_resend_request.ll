; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_work_resend_request.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_work_resend_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_msg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"work_resend_request: len = %d\0A\00", align 1
@TL_UDP_RESEND_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @work_resend_request(%struct.udp_msg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.udp_msg*, align 8
  %4 = alloca [3 x i32], align 4
  store %struct.udp_msg* %0, %struct.udp_msg** %3, align 8
  %5 = load %struct.udp_msg*, %struct.udp_msg** %3, align 8
  %6 = getelementptr inbounds %struct.udp_msg, %struct.udp_msg* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.udp_msg*, %struct.udp_msg** %3, align 8
  %11 = getelementptr inbounds %struct.udp_msg, %struct.udp_msg* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 12
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

16:                                               ; preds = %1
  %17 = load %struct.udp_msg*, %struct.udp_msg** %3, align 8
  %18 = getelementptr inbounds %struct.udp_msg, %struct.udp_msg* %17, i32 0, i32 1
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %20 = call i32 @rwm_fetch_data(%struct.TYPE_2__* %18, i32* %19, i32 12)
  %21 = icmp eq i32 %20, 12
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @TL_UDP_RESEND_REQUEST, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %45

36:                                               ; preds = %16
  %37 = load %struct.udp_msg*, %struct.udp_msg** %3, align 8
  %38 = getelementptr inbounds %struct.udp_msg, %struct.udp_msg* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @resend_range(i32 %39, i32 %41, i32 %43, i32 1)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %36, %35, %15
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rwm_fetch_data(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @resend_range(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
