; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_response_parse_long.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_response_parse_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_resp_tok = type { i32*, i32, i32, i32 }

@OPAL_WIDTH_LONG = common dso_local global i32 0, align 4
@LONG_ATOM_BYTESTRING = common dso_local global i32 0, align 4
@OPAL_DTA_TOKENID_BYTESTRING = common dso_local global i32 0, align 4
@LONG_ATOM_SIGNED = common dso_local global i32 0, align 4
@OPAL_DTA_TOKENID_SINT = common dso_local global i32 0, align 4
@OPAL_DTA_TOKENID_UINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_resp_tok*, i32*)* @response_parse_long to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @response_parse_long(%struct.opal_resp_tok* %0, i32* %1) #0 {
  %3 = alloca %struct.opal_resp_tok*, align 8
  %4 = alloca i32*, align 8
  store %struct.opal_resp_tok* %0, %struct.opal_resp_tok** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %3, align 8
  %7 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %6, i32 0, i32 0
  store i32* %5, i32** %7, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 %10, 16
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 8
  %16 = or i32 %11, %15
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 3
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %16, %19
  %21 = add nsw i32 %20, 4
  %22 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %3, align 8
  %23 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @OPAL_WIDTH_LONG, align 4
  %25 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %3, align 8
  %26 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @LONG_ATOM_BYTESTRING, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load i32, i32* @OPAL_DTA_TOKENID_BYTESTRING, align 4
  %35 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %3, align 8
  %36 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  br label %53

37:                                               ; preds = %2
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @LONG_ATOM_SIGNED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* @OPAL_DTA_TOKENID_SINT, align 4
  %46 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %3, align 8
  %47 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  br label %52

48:                                               ; preds = %37
  %49 = load i32, i32* @OPAL_DTA_TOKENID_UINT, align 4
  %50 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %3, align 8
  %51 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %44
  br label %53

53:                                               ; preds = %52, %33
  %54 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %3, align 8
  %55 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
