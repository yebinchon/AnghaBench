; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_response_status.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_response_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_resp = type { i32 }
%struct.opal_resp_tok = type { i32 }

@OPAL_ENDOFSESSION = common dso_local global i32 0, align 4
@DTAERROR_NO_METHOD_STATUS = common dso_local global i32 0, align 4
@OPAL_STARTLIST = common dso_local global i32 0, align 4
@OPAL_ENDLIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parsed_resp*)* @response_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @response_status(%struct.parsed_resp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.parsed_resp*, align 8
  %4 = alloca %struct.opal_resp_tok*, align 8
  store %struct.parsed_resp* %0, %struct.parsed_resp** %3, align 8
  %5 = load %struct.parsed_resp*, %struct.parsed_resp** %3, align 8
  %6 = call %struct.opal_resp_tok* @response_get_token(%struct.parsed_resp* %5, i32 0)
  store %struct.opal_resp_tok* %6, %struct.opal_resp_tok** %4, align 8
  %7 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %4, align 8
  %8 = load i32, i32* @OPAL_ENDOFSESSION, align 4
  %9 = call i64 @response_token_matches(%struct.opal_resp_tok* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

12:                                               ; preds = %1
  %13 = load %struct.parsed_resp*, %struct.parsed_resp** %3, align 8
  %14 = getelementptr inbounds %struct.parsed_resp, %struct.parsed_resp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 5
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @DTAERROR_NO_METHOD_STATUS, align 4
  store i32 %18, i32* %2, align 4
  br label %52

19:                                               ; preds = %12
  %20 = load %struct.parsed_resp*, %struct.parsed_resp** %3, align 8
  %21 = load %struct.parsed_resp*, %struct.parsed_resp** %3, align 8
  %22 = getelementptr inbounds %struct.parsed_resp, %struct.parsed_resp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 5
  %25 = call %struct.opal_resp_tok* @response_get_token(%struct.parsed_resp* %20, i32 %24)
  store %struct.opal_resp_tok* %25, %struct.opal_resp_tok** %4, align 8
  %26 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %4, align 8
  %27 = load i32, i32* @OPAL_STARTLIST, align 4
  %28 = call i64 @response_token_matches(%struct.opal_resp_tok* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* @DTAERROR_NO_METHOD_STATUS, align 4
  store i32 %31, i32* %2, align 4
  br label %52

32:                                               ; preds = %19
  %33 = load %struct.parsed_resp*, %struct.parsed_resp** %3, align 8
  %34 = load %struct.parsed_resp*, %struct.parsed_resp** %3, align 8
  %35 = getelementptr inbounds %struct.parsed_resp, %struct.parsed_resp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  %38 = call %struct.opal_resp_tok* @response_get_token(%struct.parsed_resp* %33, i32 %37)
  store %struct.opal_resp_tok* %38, %struct.opal_resp_tok** %4, align 8
  %39 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %4, align 8
  %40 = load i32, i32* @OPAL_ENDLIST, align 4
  %41 = call i64 @response_token_matches(%struct.opal_resp_tok* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* @DTAERROR_NO_METHOD_STATUS, align 4
  store i32 %44, i32* %2, align 4
  br label %52

45:                                               ; preds = %32
  %46 = load %struct.parsed_resp*, %struct.parsed_resp** %3, align 8
  %47 = load %struct.parsed_resp*, %struct.parsed_resp** %3, align 8
  %48 = getelementptr inbounds %struct.parsed_resp, %struct.parsed_resp* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 4
  %51 = call i32 @response_get_u64(%struct.parsed_resp* %46, i32 %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %45, %43, %30, %17, %11
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.opal_resp_tok* @response_get_token(%struct.parsed_resp*, i32) #1

declare dso_local i64 @response_token_matches(%struct.opal_resp_tok*, i32) #1

declare dso_local i32 @response_get_u64(%struct.parsed_resp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
