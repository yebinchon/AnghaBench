; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_response_parse.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_response_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_resp = type { i32, %struct.opal_resp_tok* }
%struct.opal_resp_tok = type { i32 }
%struct.opal_header = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Response size: cp: %u, pkt: %u, subpkt: %u\0A\00", align 1
@IO_BUFFER_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Bad header length. cp: %u, pkt: %u, subpkt: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TINY_ATOM_BYTE = common dso_local global i64 0, align 8
@SHORT_ATOM_BYTE = common dso_local global i64 0, align 8
@MEDIUM_ATOM_BYTE = common dso_local global i64 0, align 8
@LONG_ATOM_BYTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, %struct.parsed_resp*)* @response_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @response_parse(i64* %0, i64 %1, %struct.parsed_resp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.parsed_resp*, align 8
  %8 = alloca %struct.opal_header*, align 8
  %9 = alloca %struct.opal_resp_tok*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.parsed_resp* %2, %struct.parsed_resp** %7, align 8
  store i32 0, i32* %10, align 4
  %17 = load i64*, i64** %5, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EFAULT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %167

22:                                               ; preds = %3
  %23 = load %struct.parsed_resp*, %struct.parsed_resp** %7, align 8
  %24 = icmp ne %struct.parsed_resp* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @EFAULT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %167

28:                                               ; preds = %22
  %29 = load i64*, i64** %5, align 8
  %30 = bitcast i64* %29 to %struct.opal_header*
  store %struct.opal_header* %30, %struct.opal_header** %8, align 8
  %31 = load i64*, i64** %5, align 8
  store i64* %31, i64** %13, align 8
  %32 = load i64*, i64** %13, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 12
  store i64* %33, i64** %13, align 8
  %34 = load %struct.opal_header*, %struct.opal_header** %8, align 8
  %35 = getelementptr inbounds %struct.opal_header, %struct.opal_header* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @be32_to_cpu(i32 %37)
  store i64 %38, i64* %14, align 8
  %39 = load %struct.opal_header*, %struct.opal_header** %8, align 8
  %40 = getelementptr inbounds %struct.opal_header, %struct.opal_header* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @be32_to_cpu(i32 %42)
  store i64 %43, i64* %15, align 8
  %44 = load %struct.opal_header*, %struct.opal_header** %8, align 8
  %45 = getelementptr inbounds %struct.opal_header, %struct.opal_header* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @be32_to_cpu(i32 %47)
  store i64 %48, i64* %16, align 8
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* %15, align 8
  %51 = load i64, i64* %16, align 8
  %52 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %49, i64 %50, i64 %51)
  %53 = load i64, i64* %14, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %28
  %56 = load i64, i64* %15, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* %16, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load i64, i64* %16, align 8
  %63 = load i32, i32* @IO_BUFFER_LENGTH, align 4
  %64 = sext i32 %63 to i64
  %65 = sub i64 %64, 12
  %66 = icmp ugt i64 %62, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %61, %58, %55, %28
  %68 = load i64, i64* %14, align 8
  %69 = load i64, i64* %15, align 8
  %70 = load i64, i64* %16, align 8
  %71 = call i32 @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %68, i64 %69, i64 %70)
  %72 = load i64*, i64** %13, align 8
  %73 = call i32 @print_buffer(i64* %72, i32 12)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %167

76:                                               ; preds = %61
  %77 = load i64*, i64** %13, align 8
  %78 = load i64*, i64** %5, align 8
  %79 = load i64, i64* %6, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = icmp ugt i64* %77, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* @EFAULT, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %167

85:                                               ; preds = %76
  %86 = load %struct.parsed_resp*, %struct.parsed_resp** %7, align 8
  %87 = getelementptr inbounds %struct.parsed_resp, %struct.parsed_resp* %86, i32 0, i32 1
  %88 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %87, align 8
  store %struct.opal_resp_tok* %88, %struct.opal_resp_tok** %9, align 8
  %89 = load i64, i64* %16, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %11, align 4
  %91 = load i64*, i64** %13, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @print_buffer(i64* %91, i32 %92)
  br label %94

94:                                               ; preds = %150, %85
  %95 = load i32, i32* %11, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %163

97:                                               ; preds = %94
  %98 = load i64*, i64** %13, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @TINY_ATOM_BYTE, align 8
  %102 = icmp sle i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %9, align 8
  %105 = load i64*, i64** %13, align 8
  %106 = call i64 @response_parse_tiny(%struct.opal_resp_tok* %104, i64* %105)
  store i64 %106, i64* %12, align 8
  br label %144

107:                                              ; preds = %97
  %108 = load i64*, i64** %13, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @SHORT_ATOM_BYTE, align 8
  %112 = icmp sle i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %9, align 8
  %115 = load i64*, i64** %13, align 8
  %116 = call i64 @response_parse_short(%struct.opal_resp_tok* %114, i64* %115)
  store i64 %116, i64* %12, align 8
  br label %143

117:                                              ; preds = %107
  %118 = load i64*, i64** %13, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @MEDIUM_ATOM_BYTE, align 8
  %122 = icmp sle i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %9, align 8
  %125 = load i64*, i64** %13, align 8
  %126 = call i64 @response_parse_medium(%struct.opal_resp_tok* %124, i64* %125)
  store i64 %126, i64* %12, align 8
  br label %142

127:                                              ; preds = %117
  %128 = load i64*, i64** %13, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @LONG_ATOM_BYTE, align 8
  %132 = icmp sle i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %9, align 8
  %135 = load i64*, i64** %13, align 8
  %136 = call i64 @response_parse_long(%struct.opal_resp_tok* %134, i64* %135)
  store i64 %136, i64* %12, align 8
  br label %141

137:                                              ; preds = %127
  %138 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %9, align 8
  %139 = load i64*, i64** %13, align 8
  %140 = call i64 @response_parse_token(%struct.opal_resp_tok* %138, i64* %139)
  store i64 %140, i64* %12, align 8
  br label %141

141:                                              ; preds = %137, %133
  br label %142

142:                                              ; preds = %141, %123
  br label %143

143:                                              ; preds = %142, %113
  br label %144

144:                                              ; preds = %143, %103
  %145 = load i64, i64* %12, align 8
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i64, i64* %12, align 8
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %4, align 4
  br label %167

150:                                              ; preds = %144
  %151 = load i64, i64* %12, align 8
  %152 = load i64*, i64** %13, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 %151
  store i64* %153, i64** %13, align 8
  %154 = load i64, i64* %12, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = sub nsw i64 %156, %154
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %11, align 4
  %159 = load %struct.opal_resp_tok*, %struct.opal_resp_tok** %9, align 8
  %160 = getelementptr inbounds %struct.opal_resp_tok, %struct.opal_resp_tok* %159, i32 1
  store %struct.opal_resp_tok* %160, %struct.opal_resp_tok** %9, align 8
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  br label %94

163:                                              ; preds = %94
  %164 = load i32, i32* %10, align 4
  %165 = load %struct.parsed_resp*, %struct.parsed_resp** %7, align 8
  %166 = getelementptr inbounds %struct.parsed_resp, %struct.parsed_resp* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %163, %147, %82, %67, %25, %19
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i64, i64) #1

declare dso_local i32 @print_buffer(i64*, i32) #1

declare dso_local i64 @response_parse_tiny(%struct.opal_resp_tok*, i64*) #1

declare dso_local i64 @response_parse_short(%struct.opal_resp_tok*, i64*) #1

declare dso_local i64 @response_parse_medium(%struct.opal_resp_tok*, i64*) #1

declare dso_local i64 @response_parse_long(%struct.opal_resp_tok*, i64*) #1

declare dso_local i64 @response_parse_token(%struct.opal_resp_tok*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
