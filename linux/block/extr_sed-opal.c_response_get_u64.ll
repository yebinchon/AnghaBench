; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_response_get_u64.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_response_get_u64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_resp = type { i32 }
%struct.opal_resp_tok = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@OPAL_DTA_TOKENID_UINT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Token is not unsigned int: %d\0A\00", align 1
@OPAL_WIDTH_TINY = common dso_local global i64 0, align 8
@OPAL_WIDTH_SHORT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Atom is not short or tiny: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parsed_resp*, i32)* @response_get_u64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @response_get_u64(%struct.parsed_resp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.parsed_resp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.opal_resp_tok*, align 8
  store %struct.parsed_resp* %0, %struct.parsed_resp** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.parsed_resp*, %struct.parsed_resp** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.opal_resp_tok* @response_get_token(%struct.parsed_resp* %7, i32 %8)
  store %struct.opal_resp_tok* %9, %struct.opal_resp_tok** %6, align 8
  %10 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %6, align 8
  %11 = call i64 @IS_ERR(%struct.opal_resp_tok* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

14:                                               ; preds = %2
  %15 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %6, align 8
  %16 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @OPAL_DTA_TOKENID_UINT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %6, align 8
  %22 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %23)
  store i32 0, i32* %3, align 4
  br label %47

25:                                               ; preds = %14
  %26 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %6, align 8
  %27 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @OPAL_WIDTH_TINY, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %6, align 8
  %33 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @OPAL_WIDTH_SHORT, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %6, align 8
  %39 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  store i32 0, i32* %3, align 4
  br label %47

42:                                               ; preds = %31, %25
  %43 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %6, align 8
  %44 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %42, %37, %20, %13
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.opal_resp_tok* @response_get_token(%struct.parsed_resp*, i32) #1

declare dso_local i64 @IS_ERR(%struct.opal_resp_tok*) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
