; ModuleID = '/home/carl/AnghaBench/http-parser/extr_http_parser.c_http_parser_parse_url.c'
source_filename = "/home/carl/AnghaBench/http-parser/extr_http_parser.c_http_parser_parse_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_parser_url = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@s_req_spaces_before_url = common dso_local global i32 0, align 4
@UF_MAX = common dso_local global i32 0, align 4
@UF_SCHEMA = common dso_local global i32 0, align 4
@UF_HOST = common dso_local global i32 0, align 4
@UF_PATH = common dso_local global i32 0, align 4
@UF_QUERY = common dso_local global i32 0, align 4
@UF_FRAGMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Unexpected state\00", align 1
@UF_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Port number overflow\00", align 1

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
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.http_parser_url* %3, %struct.http_parser_url** %9, align 8
  store i32 0, i32* %14, align 4
  %20 = load i64, i64* %7, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %226

23:                                               ; preds = %4
  %24 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %25 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %24, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %27 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @s_req_spaces_before_url, align 4
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi i32 [ 129, %30 ], [ %32, %31 ]
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* @UF_MAX, align 4
  store i32 %35, i32* %13, align 4
  %36 = load i8*, i8** %6, align 8
  store i8* %36, i8** %11, align 8
  br label %37

37:                                               ; preds = %105, %33
  %38 = load i8*, i8** %11, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = icmp ult i8* %38, %41
  br i1 %42, label %43, label %108

43:                                               ; preds = %37
  %44 = load i32, i32* %10, align 4
  %45 = load i8*, i8** %11, align 8
  %46 = load i8, i8* %45, align 1
  %47 = call i32 @parse_url_char(i32 %44, i8 signext %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  switch i32 %48, label %62 [
    i32 139, label %49
    i32 132, label %50
    i32 131, label %50
    i32 129, label %50
    i32 134, label %50
    i32 137, label %50
    i32 133, label %51
    i32 128, label %53
    i32 130, label %54
    i32 136, label %56
    i32 135, label %58
    i32 138, label %60
  ]

49:                                               ; preds = %43
  store i32 1, i32* %5, align 4
  br label %226

50:                                               ; preds = %43, %43, %43, %43, %43
  br label %105

51:                                               ; preds = %43
  %52 = load i32, i32* @UF_SCHEMA, align 4
  store i32 %52, i32* %12, align 4
  br label %64

53:                                               ; preds = %43
  store i32 1, i32* %14, align 4
  br label %54

54:                                               ; preds = %43, %53
  %55 = load i32, i32* @UF_HOST, align 4
  store i32 %55, i32* %12, align 4
  br label %64

56:                                               ; preds = %43
  %57 = load i32, i32* @UF_PATH, align 4
  store i32 %57, i32* %12, align 4
  br label %64

58:                                               ; preds = %43
  %59 = load i32, i32* @UF_QUERY, align 4
  store i32 %59, i32* %12, align 4
  br label %64

60:                                               ; preds = %43
  %61 = load i32, i32* @UF_FRAGMENT, align 4
  store i32 %61, i32* %12, align 4
  br label %64

62:                                               ; preds = %43
  %63 = call i32 @assert(i32 0)
  store i32 1, i32* %5, align 4
  br label %226

64:                                               ; preds = %60, %58, %56, %54, %51
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %70 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  br label %105

78:                                               ; preds = %64
  %79 = load i8*, i8** %11, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %85 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i64 %83, i64* %90, align 8
  %91 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %92 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %91, i32 0, i32 2
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  %98 = load i32, i32* %12, align 4
  %99 = shl i32 1, %98
  %100 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %101 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %13, align 4
  br label %105

105:                                              ; preds = %78, %68, %50
  %106 = load i8*, i8** %11, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %11, align 8
  br label %37

108:                                              ; preds = %37
  %109 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %110 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @UF_SCHEMA, align 4
  %113 = shl i32 1, %112
  %114 = and i32 %111, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %108
  %117 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %118 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @UF_HOST, align 4
  %121 = shl i32 1, %120
  %122 = and i32 %119, %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  store i32 1, i32* %5, align 4
  br label %226

125:                                              ; preds = %116, %108
  %126 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %127 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @UF_HOST, align 4
  %130 = shl i32 1, %129
  %131 = and i32 %128, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %125
  %134 = load i8*, i8** %6, align 8
  %135 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %136 = load i32, i32* %14, align 4
  %137 = call i64 @http_parse_host(i8* %134, %struct.http_parser_url* %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  store i32 1, i32* %5, align 4
  br label %226

140:                                              ; preds = %133
  br label %141

141:                                              ; preds = %140, %125
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %141
  %145 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %146 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @UF_HOST, align 4
  %149 = shl i32 1, %148
  %150 = load i32, i32* @UF_PORT, align 4
  %151 = shl i32 1, %150
  %152 = or i32 %149, %151
  %153 = icmp ne i32 %147, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %144
  store i32 1, i32* %5, align 4
  br label %226

155:                                              ; preds = %144, %141
  %156 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %157 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @UF_PORT, align 4
  %160 = shl i32 1, %159
  %161 = and i32 %158, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %225

163:                                              ; preds = %155
  %164 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %165 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %164, i32 0, i32 2
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = load i32, i32* @UF_PORT, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  store i64 %171, i64* %15, align 8
  %172 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %173 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %172, i32 0, i32 2
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = load i32, i32* @UF_PORT, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  store i64 %180, i64* %16, align 8
  %181 = load i8*, i8** %6, align 8
  %182 = load i64, i64* %15, align 8
  %183 = getelementptr inbounds i8, i8* %181, i64 %182
  %184 = load i64, i64* %16, align 8
  %185 = getelementptr inbounds i8, i8* %183, i64 %184
  store i8* %185, i8** %18, align 8
  %186 = load i64, i64* %15, align 8
  %187 = load i64, i64* %16, align 8
  %188 = add i64 %186, %187
  %189 = load i64, i64* %7, align 8
  %190 = icmp ule i64 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %163
  br label %192

192:                                              ; preds = %191, %163
  %193 = phi i1 [ false, %163 ], [ true, %191 ]
  %194 = zext i1 %193 to i32
  %195 = call i32 @assert(i32 %194)
  store i64 0, i64* %19, align 8
  %196 = load i8*, i8** %6, align 8
  %197 = load i64, i64* %15, align 8
  %198 = getelementptr inbounds i8, i8* %196, i64 %197
  store i8* %198, i8** %17, align 8
  br label %199

199:                                              ; preds = %217, %192
  %200 = load i8*, i8** %17, align 8
  %201 = load i8*, i8** %18, align 8
  %202 = icmp ult i8* %200, %201
  br i1 %202, label %203, label %220

203:                                              ; preds = %199
  %204 = load i64, i64* %19, align 8
  %205 = mul i64 %204, 10
  store i64 %205, i64* %19, align 8
  %206 = load i8*, i8** %17, align 8
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = sub nsw i32 %208, 48
  %210 = sext i32 %209 to i64
  %211 = load i64, i64* %19, align 8
  %212 = add i64 %211, %210
  store i64 %212, i64* %19, align 8
  %213 = load i64, i64* %19, align 8
  %214 = icmp ugt i64 %213, 65535
  br i1 %214, label %215, label %216

215:                                              ; preds = %203
  store i32 1, i32* %5, align 4
  br label %226

216:                                              ; preds = %203
  br label %217

217:                                              ; preds = %216
  %218 = load i8*, i8** %17, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %17, align 8
  br label %199

220:                                              ; preds = %199
  %221 = load i64, i64* %19, align 8
  %222 = trunc i64 %221 to i32
  %223 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %224 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 8
  br label %225

225:                                              ; preds = %220, %155
  store i32 0, i32* %5, align 4
  br label %226

226:                                              ; preds = %225, %215, %154, %139, %124, %62, %49, %22
  %227 = load i32, i32* %5, align 4
  ret i32 %227
}

declare dso_local i32 @parse_url_char(i32, i8 signext) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @http_parse_host(i8*, %struct.http_parser_url*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
