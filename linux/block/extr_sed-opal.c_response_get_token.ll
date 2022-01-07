; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_response_get_token.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_response_get_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_resp_tok = type { i64 }
%struct.parsed_resp = type { i32, %struct.opal_resp_tok* }

@.str = private unnamed_addr constant [18 x i8] c"Response is NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Token number doesn't exist: %d, resp: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Token length must be non-zero\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.opal_resp_tok* (%struct.parsed_resp*, i32)* @response_get_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.opal_resp_tok* @response_get_token(%struct.parsed_resp* %0, i32 %1) #0 {
  %3 = alloca %struct.opal_resp_tok*, align 8
  %4 = alloca %struct.parsed_resp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.opal_resp_tok*, align 8
  store %struct.parsed_resp* %0, %struct.parsed_resp** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.parsed_resp*, %struct.parsed_resp** %4, align 8
  %8 = icmp ne %struct.parsed_resp* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.opal_resp_tok* @ERR_PTR(i32 %12)
  store %struct.opal_resp_tok* %13, %struct.opal_resp_tok** %3, align 8
  br label %47

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.parsed_resp*, %struct.parsed_resp** %4, align 8
  %17 = getelementptr inbounds %struct.parsed_resp, %struct.parsed_resp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %15, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.parsed_resp*, %struct.parsed_resp** %4, align 8
  %23 = getelementptr inbounds %struct.parsed_resp, %struct.parsed_resp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.opal_resp_tok* @ERR_PTR(i32 %27)
  store %struct.opal_resp_tok* %28, %struct.opal_resp_tok** %3, align 8
  br label %47

29:                                               ; preds = %14
  %30 = load %struct.parsed_resp*, %struct.parsed_resp** %4, align 8
  %31 = getelementptr inbounds %struct.parsed_resp, %struct.parsed_resp* %30, i32 0, i32 1
  %32 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %32, i64 %34
  store %struct.opal_resp_tok* %35, %struct.opal_resp_tok** %6, align 8
  %36 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %6, align 8
  %37 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %29
  %41 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.opal_resp_tok* @ERR_PTR(i32 %43)
  store %struct.opal_resp_tok* %44, %struct.opal_resp_tok** %3, align 8
  br label %47

45:                                               ; preds = %29
  %46 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %6, align 8
  store %struct.opal_resp_tok* %46, %struct.opal_resp_tok** %3, align 8
  br label %47

47:                                               ; preds = %45, %40, %20, %9
  %48 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %3, align 8
  ret %struct.opal_resp_tok* %48
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.opal_resp_tok* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
