; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_response_get_string.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_response_get_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_resp = type { i32 }
%struct.opal_resp_tok = type { i64, i32, i8*, i64 }

@OPAL_DTA_TOKENID_BYTESTRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Token is not a byte string!\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Token has invalid width!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.parsed_resp*, i32, i8**)* @response_get_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @response_get_string(%struct.parsed_resp* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.parsed_resp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.opal_resp_tok*, align 8
  store %struct.parsed_resp* %0, %struct.parsed_resp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = load i8**, i8*** %7, align 8
  store i8* null, i8** %10, align 8
  %11 = load %struct.parsed_resp*, %struct.parsed_resp** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.opal_resp_tok* @response_get_token(%struct.parsed_resp* %11, i32 %12)
  store %struct.opal_resp_tok* %13, %struct.opal_resp_tok** %9, align 8
  %14 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %9, align 8
  %15 = call i64 @IS_ERR(%struct.opal_resp_tok* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %49

18:                                               ; preds = %3
  %19 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %9, align 8
  %20 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @OPAL_DTA_TOKENID_BYTESTRING, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %49

26:                                               ; preds = %18
  %27 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %9, align 8
  %28 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %33 [
    i32 128, label %30
    i32 129, label %30
    i32 130, label %31
    i32 131, label %32
  ]

30:                                               ; preds = %26, %26
  store i32 1, i32* %8, align 4
  br label %35

31:                                               ; preds = %26
  store i32 2, i32* %8, align 4
  br label %35

32:                                               ; preds = %26
  store i32 4, i32* %8, align 4
  br label %35

33:                                               ; preds = %26
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %49

35:                                               ; preds = %32, %31, %30
  %36 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %9, align 8
  %37 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8**, i8*** %7, align 8
  store i8* %41, i8** %42, align 8
  %43 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %9, align 8
  %44 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = sub i64 %45, %47
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %35, %33, %24, %17
  %50 = load i64, i64* %4, align 8
  ret i64 %50
}

declare dso_local %struct.opal_resp_tok* @response_get_token(%struct.parsed_resp*, i32) #1

declare dso_local i64 @IS_ERR(%struct.opal_resp_tok*) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
