; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_work_resend_request_ext.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_work_resend_request_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_msg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"work_resend_request: len = %d\0A\00", align 1
@work_resend_request_ext.P = internal global [102 x i32] zeroinitializer, align 16
@TL_UDP_RESEND_REQUEST_EXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @work_resend_request_ext(%struct.udp_msg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.udp_msg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.udp_msg* %0, %struct.udp_msg** %3, align 8
  %6 = load %struct.udp_msg*, %struct.udp_msg** %3, align 8
  %7 = getelementptr inbounds %struct.udp_msg, %struct.udp_msg* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.udp_msg*, %struct.udp_msg** %3, align 8
  %12 = getelementptr inbounds %struct.udp_msg, %struct.udp_msg* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %14, 408
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %84

17:                                               ; preds = %1
  %18 = load %struct.udp_msg*, %struct.udp_msg** %3, align 8
  %19 = getelementptr inbounds %struct.udp_msg, %struct.udp_msg* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load %struct.udp_msg*, %struct.udp_msg** %3, align 8
  %23 = getelementptr inbounds %struct.udp_msg, %struct.udp_msg* %22, i32 0, i32 1
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @rwm_fetch_data(%struct.TYPE_2__* %23, i32* getelementptr inbounds ([102 x i32], [102 x i32]* @work_resend_request_ext.P, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32, i32* getelementptr inbounds ([102 x i32], [102 x i32]* @work_resend_request_ext.P, i64 0, i64 1), align 4
  %31 = add nsw i32 %30, 1
  %32 = mul nsw i32 %31, 8
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %84

36:                                               ; preds = %17
  %37 = load i32, i32* getelementptr inbounds ([102 x i32], [102 x i32]* @work_resend_request_ext.P, i64 0, i64 0), align 16
  %38 = load i32, i32* @TL_UDP_RESEND_REQUEST_EXT, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %80, %36
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* getelementptr inbounds ([102 x i32], [102 x i32]* @work_resend_request_ext.P, i64 0, i64 1), align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %83

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = mul nsw i32 2, %47
  %49 = add nsw i32 2, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [102 x i32], [102 x i32]* @work_resend_request_ext.P, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = mul nsw i32 2, %53
  %55 = add nsw i32 2, %54
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [102 x i32], [102 x i32]* @work_resend_request_ext.P, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp sle i32 %52, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %46
  %62 = load %struct.udp_msg*, %struct.udp_msg** %3, align 8
  %63 = getelementptr inbounds %struct.udp_msg, %struct.udp_msg* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %5, align 4
  %66 = mul nsw i32 2, %65
  %67 = add nsw i32 2, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [102 x i32], [102 x i32]* @work_resend_request_ext.P, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %5, align 4
  %72 = mul nsw i32 2, %71
  %73 = add nsw i32 2, %72
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [102 x i32], [102 x i32]* @work_resend_request_ext.P, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @resend_range(i32 %64, i32 %70, i32 %77, i32 1)
  br label %79

79:                                               ; preds = %61, %46
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %42

83:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %35, %16
  %85 = load i32, i32* %2, align 4
  ret i32 %85
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
