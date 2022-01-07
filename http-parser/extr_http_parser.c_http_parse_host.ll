; ModuleID = '/home/carl/AnghaBench/http-parser/extr_http_parser.c_http_parse_host.c'
source_filename = "/home/carl/AnghaBench/http-parser/extr_http_parser.c_http_parse_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_parser_url = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@UF_HOST = common dso_local global i64 0, align 8
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
  %27 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %28 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* @UF_HOST, align 8
  %31 = trunc i64 %30 to i32
  %32 = shl i32 1, %31
  %33 = and i32 %29, %32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %36 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i64, i64* @UF_HOST, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 128, i32 134
  store i32 %44, i32* %8, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %47 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i64, i64* @UF_HOST, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i8, i8* %45, i64 %52
  store i8* %53, i8** %9, align 8
  br label %54

54:                                               ; preds = %213, %3
  %55 = load i8*, i8** %9, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = icmp ult i8* %55, %58
  br i1 %59, label %60, label %216

60:                                               ; preds = %54
  %61 = load i32, i32* %8, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = load i8, i8* %62, align 1
  %64 = call i32 @http_parse_host_char(i32 %61, i8 signext %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @s_http_host_dead, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 1, i32* %4, align 4
  br label %221

69:                                               ; preds = %60
  %70 = load i32, i32* %11, align 4
  switch i32 %70, label %210 [
    i32 137, label %71
    i32 133, label %97
    i32 130, label %123
    i32 131, label %123
    i32 136, label %132
    i32 129, label %171
  ]

71:                                               ; preds = %69
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 137
  br i1 %73, label %74, label %88

74:                                               ; preds = %71
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = inttoptr i64 %79 to i8*
  %81 = ptrtoint i8* %80 to i64
  %82 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %83 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i64, i64* @UF_HOST, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i64 %81, i64* %87, align 8
  br label %88

88:                                               ; preds = %74, %71
  %89 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %90 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i64, i64* @UF_HOST, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %94, align 8
  br label %211

97:                                               ; preds = %69
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 133
  br i1 %99, label %100, label %114

100:                                              ; preds = %97
  %101 = load i8*, i8** %9, align 8
  %102 = load i8*, i8** %5, align 8
  %103 = ptrtoint i8* %101 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  %106 = inttoptr i64 %105 to i8*
  %107 = ptrtoint i8* %106 to i64
  %108 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %109 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i64, i64* @UF_HOST, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store i64 %107, i64* %113, align 8
  br label %114

114:                                              ; preds = %100, %97
  %115 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %116 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i64, i64* @UF_HOST, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %120, align 8
  br label %211

123:                                              ; preds = %69, %69
  %124 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %125 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %124, i32 0, i32 1
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = load i64, i64* @UF_HOST, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %129, align 8
  br label %211

132:                                              ; preds = %69
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 136
  br i1 %134, label %135, label %162

135:                                              ; preds = %132
  %136 = load i8*, i8** %9, align 8
  %137 = load i8*, i8** %5, align 8
  %138 = ptrtoint i8* %136 to i64
  %139 = ptrtoint i8* %137 to i64
  %140 = sub i64 %138, %139
  %141 = inttoptr i64 %140 to i8*
  %142 = ptrtoint i8* %141 to i64
  %143 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %144 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %143, i32 0, i32 1
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = load i64, i64* @UF_PORT, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  store i64 %142, i64* %148, align 8
  %149 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %150 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %149, i32 0, i32 1
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = load i64, i64* @UF_PORT, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  store i64 0, i64* %154, align 8
  %155 = load i64, i64* @UF_PORT, align 8
  %156 = trunc i64 %155 to i32
  %157 = shl i32 1, %156
  %158 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %159 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %135, %132
  %163 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %164 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %163, i32 0, i32 1
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = load i64, i64* @UF_PORT, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %168, align 8
  br label %211

171:                                              ; preds = %69
  %172 = load i32, i32* %8, align 4
  %173 = icmp ne i32 %172, 129
  br i1 %173, label %174, label %201

174:                                              ; preds = %171
  %175 = load i8*, i8** %9, align 8
  %176 = load i8*, i8** %5, align 8
  %177 = ptrtoint i8* %175 to i64
  %178 = ptrtoint i8* %176 to i64
  %179 = sub i64 %177, %178
  %180 = inttoptr i64 %179 to i8*
  %181 = ptrtoint i8* %180 to i64
  %182 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %183 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %182, i32 0, i32 1
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = load i64, i64* @UF_USERINFO, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  store i64 %181, i64* %187, align 8
  %188 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %189 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %188, i32 0, i32 1
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = load i64, i64* @UF_USERINFO, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 1
  store i64 0, i64* %193, align 8
  %194 = load i64, i64* @UF_USERINFO, align 8
  %195 = trunc i64 %194 to i32
  %196 = shl i32 1, %195
  %197 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %198 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 8
  br label %201

201:                                              ; preds = %174, %171
  %202 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %203 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %202, i32 0, i32 1
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** %203, align 8
  %205 = load i64, i64* @UF_USERINFO, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = add i64 %208, 1
  store i64 %209, i64* %207, align 8
  br label %211

210:                                              ; preds = %69
  br label %211

211:                                              ; preds = %210, %201, %162, %123, %114, %88
  %212 = load i32, i32* %11, align 4
  store i32 %212, i32* %8, align 4
  br label %213

213:                                              ; preds = %211
  %214 = load i8*, i8** %9, align 8
  %215 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %215, i8** %9, align 8
  br label %54

216:                                              ; preds = %54
  %217 = load i32, i32* %8, align 4
  switch i32 %217, label %219 [
    i32 134, label %218
    i32 132, label %218
    i32 133, label %218
    i32 130, label %218
    i32 131, label %218
    i32 135, label %218
    i32 129, label %218
    i32 128, label %218
  ]

218:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216
  store i32 1, i32* %4, align 4
  br label %221

219:                                              ; preds = %216
  br label %220

220:                                              ; preds = %219
  store i32 0, i32* %4, align 4
  br label %221

221:                                              ; preds = %220, %218, %68
  %222 = load i32, i32* %4, align 4
  ret i32 %222
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @http_parse_host_char(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
