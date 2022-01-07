; ModuleID = '/home/carl/AnghaBench/libgit2/deps/http-parser/extr_http_parser.c_http_parser_parse_url.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/http-parser/extr_http_parser.c_http_parser_parse_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_parser_url = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@UINT16_MAX = common dso_local global i64 0, align 8
@s_req_spaces_before_url = common dso_local global i32 0, align 4
@UF_MAX = common dso_local global i32 0, align 4
@UF_SCHEMA = common dso_local global i32 0, align 4
@UF_HOST = common dso_local global i32 0, align 4
@UF_PATH = common dso_local global i32 0, align 4
@UF_QUERY = common dso_local global i32 0, align 4
@UF_FRAGMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Unexpected state\00", align 1
@UF_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @http_parser_parse_url(i8* %0, i64 %1, i32 %2, %struct.http_parser_url* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.http_parser_url*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.http_parser_url* %3, %struct.http_parser_url** %9, align 8
  store i32 0, i32* %14, align 4
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @UINT16_MAX, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %171

20:                                               ; preds = %4
  %21 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %22 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %24 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @s_req_spaces_before_url, align 4
  br label %30

30:                                               ; preds = %28, %27
  %31 = phi i32 [ 129, %27 ], [ %29, %28 ]
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @UF_MAX, align 4
  store i32 %32, i32* %13, align 4
  store i32 %32, i32* %12, align 4
  %33 = load i8*, i8** %6, align 8
  store i8* %33, i8** %11, align 8
  br label %34

34:                                               ; preds = %104, %30
  %35 = load i8*, i8** %11, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = icmp ult i8* %35, %38
  br i1 %39, label %40, label %107

40:                                               ; preds = %34
  %41 = load i32, i32* %10, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = load i8, i8* %42, align 1
  %44 = call i32 @parse_url_char(i32 %41, i8 signext %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  switch i32 %45, label %59 [
    i32 139, label %46
    i32 132, label %47
    i32 131, label %47
    i32 129, label %47
    i32 134, label %47
    i32 137, label %47
    i32 133, label %48
    i32 128, label %50
    i32 130, label %51
    i32 136, label %53
    i32 135, label %55
    i32 138, label %57
  ]

46:                                               ; preds = %40
  store i32 1, i32* %5, align 4
  br label %171

47:                                               ; preds = %40, %40, %40, %40, %40
  br label %104

48:                                               ; preds = %40
  %49 = load i32, i32* @UF_SCHEMA, align 4
  store i32 %49, i32* %12, align 4
  br label %61

50:                                               ; preds = %40
  store i32 1, i32* %14, align 4
  br label %51

51:                                               ; preds = %40, %50
  %52 = load i32, i32* @UF_HOST, align 4
  store i32 %52, i32* %12, align 4
  br label %61

53:                                               ; preds = %40
  %54 = load i32, i32* @UF_PATH, align 4
  store i32 %54, i32* %12, align 4
  br label %61

55:                                               ; preds = %40
  %56 = load i32, i32* @UF_QUERY, align 4
  store i32 %56, i32* %12, align 4
  br label %61

57:                                               ; preds = %40
  %58 = load i32, i32* @UF_FRAGMENT, align 4
  store i32 %58, i32* %12, align 4
  br label %61

59:                                               ; preds = %40
  %60 = call i32 @assert(i32 0)
  store i32 1, i32* %5, align 4
  br label %171

61:                                               ; preds = %57, %55, %53, %51, %48
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %67 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %104

75:                                               ; preds = %61
  %76 = load i8*, i8** %11, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = inttoptr i64 %80 to i8*
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %84 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  store i32 %82, i32* %89, align 4
  %90 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %91 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %12, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 4
  %97 = load i32, i32* %12, align 4
  %98 = shl i32 1, %97
  %99 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %100 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %75, %65, %47
  %105 = load i8*, i8** %11, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %11, align 8
  br label %34

107:                                              ; preds = %34
  %108 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %109 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @UF_SCHEMA, align 4
  %112 = shl i32 1, %111
  %113 = load i32, i32* @UF_HOST, align 4
  %114 = shl i32 1, %113
  %115 = or i32 %112, %114
  %116 = and i32 %110, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %107
  %119 = load i8*, i8** %6, align 8
  %120 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %121 = load i32, i32* %14, align 4
  %122 = call i64 @http_parse_host(i8* %119, %struct.http_parser_url* %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  store i32 1, i32* %5, align 4
  br label %171

125:                                              ; preds = %118
  br label %126

126:                                              ; preds = %125, %107
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %126
  %130 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %131 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @UF_HOST, align 4
  %134 = shl i32 1, %133
  %135 = load i32, i32* @UF_PORT, align 4
  %136 = shl i32 1, %135
  %137 = or i32 %134, %136
  %138 = icmp ne i32 %132, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %129
  store i32 1, i32* %5, align 4
  br label %171

140:                                              ; preds = %129, %126
  %141 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %142 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @UF_PORT, align 4
  %145 = shl i32 1, %144
  %146 = and i32 %143, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %170

148:                                              ; preds = %140
  %149 = load i8*, i8** %6, align 8
  %150 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %151 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %150, i32 0, i32 2
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = load i32, i32* @UF_PORT, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %149, i64 %158
  %160 = call i64 @strtoul(i8* %159, i32* null, i32 10)
  store i64 %160, i64* %15, align 8
  %161 = load i64, i64* %15, align 8
  %162 = icmp ugt i64 %161, 65535
  br i1 %162, label %163, label %164

163:                                              ; preds = %148
  store i32 1, i32* %5, align 4
  br label %171

164:                                              ; preds = %148
  %165 = load i64, i64* %15, align 8
  %166 = inttoptr i64 %165 to i8*
  %167 = ptrtoint i8* %166 to i32
  %168 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %169 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  br label %170

170:                                              ; preds = %164, %140
  store i32 0, i32* %5, align 4
  br label %171

171:                                              ; preds = %170, %163, %139, %124, %59, %46, %19
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i32 @parse_url_char(i32, i8 signext) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @http_parse_host(i8*, %struct.http_parser_url*, i32) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
