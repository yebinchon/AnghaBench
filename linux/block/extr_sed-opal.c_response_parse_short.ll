; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_response_parse_short.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_response_parse_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_resp_tok = type { i32*, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SHORT_ATOM_LEN_MASK = common dso_local global i32 0, align 4
@OPAL_WIDTH_SHORT = common dso_local global i32 0, align 4
@SHORT_ATOM_BYTESTRING = common dso_local global i32 0, align 4
@OPAL_DTA_TOKENID_BYTESTRING = common dso_local global i32 0, align 4
@SHORT_ATOM_SIGNED = common dso_local global i32 0, align 4
@OPAL_DTA_TOKENID_SINT = common dso_local global i32 0, align 4
@OPAL_DTA_TOKENID_UINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"uint64 with more than 8 bytes\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.opal_resp_tok*, i32*)* @response_parse_short to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @response_parse_short(%struct.opal_resp_tok* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.opal_resp_tok*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.opal_resp_tok* %0, %struct.opal_resp_tok** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %4, align 8
  %11 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %10, i32 0, i32 0
  store i32* %9, i32** %11, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SHORT_ATOM_LEN_MASK, align 4
  %16 = and i32 %14, %15
  %17 = add nsw i32 %16, 1
  %18 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %4, align 8
  %19 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @OPAL_WIDTH_SHORT, align 4
  %21 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %4, align 8
  %22 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SHORT_ATOM_BYTESTRING, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i32, i32* @OPAL_DTA_TOKENID_BYTESTRING, align 4
  %31 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %4, align 8
  %32 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  br label %87

33:                                               ; preds = %2
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SHORT_ATOM_SIGNED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* @OPAL_DTA_TOKENID_SINT, align 4
  %42 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %4, align 8
  %43 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  br label %86

44:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %45 = load i32, i32* @OPAL_DTA_TOKENID_UINT, align 4
  %46 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %4, align 8
  %47 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %4, align 8
  %49 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %50, 9
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %54 = load i64, i64* @EINVAL, align 8
  %55 = sub i64 0, %54
  store i64 %55, i64* %3, align 8
  br label %92

56:                                               ; preds = %44
  %57 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %4, align 8
  %58 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %7, align 8
  br label %62

62:                                               ; preds = %78, %56
  %63 = load i64, i64* %7, align 8
  %64 = icmp ugt i64 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = load i32*, i32** %5, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* %8, align 8
  %71 = mul i64 8, %70
  %72 = trunc i64 %71 to i32
  %73 = shl i32 %69, %72
  %74 = load i32, i32* %6, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %6, align 4
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %8, align 8
  br label %78

78:                                               ; preds = %65
  %79 = load i64, i64* %7, align 8
  %80 = add i64 %79, -1
  store i64 %80, i64* %7, align 8
  br label %62

81:                                               ; preds = %62
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %4, align 8
  %84 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 4
  br label %86

86:                                               ; preds = %81, %40
  br label %87

87:                                               ; preds = %86, %29
  %88 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %4, align 8
  %89 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %3, align 8
  br label %92

92:                                               ; preds = %87, %52
  %93 = load i64, i64* %3, align 8
  ret i64 %93
}

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
