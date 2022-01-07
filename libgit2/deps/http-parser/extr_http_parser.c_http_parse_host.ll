; ModuleID = '/home/carl/AnghaBench/libgit2/deps/http-parser/extr_http_parser.c_http_parse_host.c'
source_filename = "/home/carl/AnghaBench/libgit2/deps/http-parser/extr_http_parser.c_http_parse_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_parser_url = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@UF_HOST = common dso_local global i64 0, align 8
@UINT16_MAX = common dso_local global i64 0, align 8
@s_http_host_dead = common dso_local global i32 0, align 4
@UF_PORT = common dso_local global i64 0, align 8
@UF_USERINFO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.http_parser_url*, i32)* @http_parse_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_parse_host(i8* %0, %struct.http_parser_url* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.http_parser_url*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.http_parser_url* %1, %struct.http_parser_url** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %13 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i64, i64* @UF_HOST, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %20 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* @UF_HOST, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %18, %25
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @UINT16_MAX, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %209

31:                                               ; preds = %3
  %32 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %33 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i64, i64* @UF_HOST, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 128, i32 132
  store i32 %41, i32* %8, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %44 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i64, i64* @UF_HOST, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i8, i8* %42, i64 %49
  store i8* %50, i8** %9, align 8
  br label %51

51:                                               ; preds = %201, %31
  %52 = load i8*, i8** %9, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = icmp ult i8* %52, %55
  br i1 %56, label %57, label %204

57:                                               ; preds = %51
  %58 = load i32, i32* %8, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = load i8, i8* %59, align 1
  %61 = call i32 @http_parse_host_char(i32 %58, i8 signext %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @s_http_host_dead, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i32 1, i32* %4, align 4
  br label %209

66:                                               ; preds = %57
  %67 = load i32, i32* %11, align 4
  switch i32 %67, label %198 [
    i32 134, label %68
    i32 131, label %94
    i32 133, label %120
    i32 129, label %159
  ]

68:                                               ; preds = %66
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 134
  br i1 %70, label %71, label %85

71:                                               ; preds = %68
  %72 = load i8*, i8** %9, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = inttoptr i64 %76 to i8*
  %78 = ptrtoint i8* %77 to i64
  %79 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %80 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i64, i64* @UF_HOST, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i64 %78, i64* %84, align 8
  br label %85

85:                                               ; preds = %71, %68
  %86 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %87 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i64, i64* @UF_HOST, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %91, align 8
  br label %199

94:                                               ; preds = %66
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 131
  br i1 %96, label %97, label %111

97:                                               ; preds = %94
  %98 = load i8*, i8** %9, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = inttoptr i64 %102 to i8*
  %104 = ptrtoint i8* %103 to i64
  %105 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %106 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = load i64, i64* @UF_HOST, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i64 %104, i64* %110, align 8
  br label %111

111:                                              ; preds = %97, %94
  %112 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %113 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %112, i32 0, i32 1
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i64, i64* @UF_HOST, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %117, align 8
  br label %199

120:                                              ; preds = %66
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 133
  br i1 %122, label %123, label %150

123:                                              ; preds = %120
  %124 = load i8*, i8** %9, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = ptrtoint i8* %124 to i64
  %127 = ptrtoint i8* %125 to i64
  %128 = sub i64 %126, %127
  %129 = inttoptr i64 %128 to i8*
  %130 = ptrtoint i8* %129 to i64
  %131 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %132 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %131, i32 0, i32 1
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = load i64, i64* @UF_PORT, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  store i64 %130, i64* %136, align 8
  %137 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %138 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %137, i32 0, i32 1
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load i64, i64* @UF_PORT, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  store i64 0, i64* %142, align 8
  %143 = load i64, i64* @UF_PORT, align 8
  %144 = trunc i64 %143 to i32
  %145 = shl i32 1, %144
  %146 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %147 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %123, %120
  %151 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %152 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %151, i32 0, i32 1
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = load i64, i64* @UF_PORT, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %156, align 8
  br label %199

159:                                              ; preds = %66
  %160 = load i32, i32* %8, align 4
  %161 = icmp ne i32 %160, 129
  br i1 %161, label %162, label %189

162:                                              ; preds = %159
  %163 = load i8*, i8** %9, align 8
  %164 = load i8*, i8** %5, align 8
  %165 = ptrtoint i8* %163 to i64
  %166 = ptrtoint i8* %164 to i64
  %167 = sub i64 %165, %166
  %168 = inttoptr i64 %167 to i8*
  %169 = ptrtoint i8* %168 to i64
  %170 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %171 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %170, i32 0, i32 1
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = load i64, i64* @UF_USERINFO, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  store i64 %169, i64* %175, align 8
  %176 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %177 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %176, i32 0, i32 1
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = load i64, i64* @UF_USERINFO, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  store i64 0, i64* %181, align 8
  %182 = load i64, i64* @UF_USERINFO, align 8
  %183 = trunc i64 %182 to i32
  %184 = shl i32 1, %183
  %185 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %186 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 8
  br label %189

189:                                              ; preds = %162, %159
  %190 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %191 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %190, i32 0, i32 1
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** %191, align 8
  %193 = load i64, i64* @UF_USERINFO, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %195, align 8
  br label %199

198:                                              ; preds = %66
  br label %199

199:                                              ; preds = %198, %189, %150, %111, %85
  %200 = load i32, i32* %11, align 4
  store i32 %200, i32* %8, align 4
  br label %201

201:                                              ; preds = %199
  %202 = load i8*, i8** %9, align 8
  %203 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %203, i8** %9, align 8
  br label %51

204:                                              ; preds = %51
  %205 = load i32, i32* %8, align 4
  switch i32 %205, label %207 [
    i32 132, label %206
    i32 130, label %206
    i32 131, label %206
    i32 129, label %206
    i32 128, label %206
  ]

206:                                              ; preds = %204, %204, %204, %204, %204
  store i32 1, i32* %4, align 4
  br label %209

207:                                              ; preds = %204
  br label %208

208:                                              ; preds = %207
  store i32 0, i32* %4, align 4
  br label %209

209:                                              ; preds = %208, %206, %65, %30
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local i32 @http_parse_host_char(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
