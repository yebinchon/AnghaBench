; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_base_set_option_impl.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_base_set_option_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_base = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.timeval = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ndots:\00", align 1
@DNS_OPTION_SEARCH = common dso_local global i32 0, align 4
@EVDNS_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Setting ndots to %d\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"timeout:\00", align 1
@DNS_OPTION_MISC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Setting timeout to %s\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"getaddrinfo-allow-skew:\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Setting getaddrinfo-allow-skew to %s\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"max-timeouts:\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Setting maximum allowed timeouts to %d\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"max-inflight:\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Setting maximum inflight requests to %d\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"attempts:\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Setting retries to %d\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"randomize-case:\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"bind-to:\00", align 1
@DNS_OPTION_NAMESERVERS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [23 x i8] c"initial-probe-timeout:\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"Setting initial probe timeout to %s\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"so-rcvbuf:\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Setting SO_RCVBUF to %s\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"so-sndbuf:\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"Setting SO_SNDBUF to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evdns_base*, i8*, i8*, i32)* @evdns_base_set_option_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdns_base_set_option_impl(%struct.evdns_base* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.evdns_base*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.timeval, align 4
  %12 = alloca %struct.timeval, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.timeval, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.evdns_base* %0, %struct.evdns_base** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %22 = call i32 @ASSERT_LOCKED(%struct.evdns_base* %21)
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @str_matches_option(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %4
  %27 = load i8*, i8** %8, align 8
  %28 = call i8* @strtoint(i8* %27)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 -1, i32* %5, align 4
  br label %299

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @DNS_OPTION_SEARCH, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %299

39:                                               ; preds = %33
  %40 = load i32, i32* @EVDNS_LOG_DEBUG, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 (i32, i8*, ...) @log(i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %44 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %43, i32 0, i32 10
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = icmp ne %struct.TYPE_2__* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %39
  %48 = call %struct.TYPE_2__* (...) @search_state_new()
  %49 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %50 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %49, i32 0, i32 10
  store %struct.TYPE_2__* %48, %struct.TYPE_2__** %50, align 8
  br label %51

51:                                               ; preds = %47, %39
  %52 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %53 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %52, i32 0, i32 10
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = icmp ne %struct.TYPE_2__* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  store i32 -1, i32* %5, align 4
  br label %299

57:                                               ; preds = %51
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %60 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %59, i32 0, i32 10
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 4
  br label %298

63:                                               ; preds = %4
  %64 = load i8*, i8** %7, align 8
  %65 = call i64 @str_matches_option(i8* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %63
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @evdns_strtotimeval(i8* %68, %struct.timeval* %11)
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 -1, i32* %5, align 4
  br label %299

72:                                               ; preds = %67
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @DNS_OPTION_MISC, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %299

78:                                               ; preds = %72
  %79 = load i32, i32* @EVDNS_LOG_DEBUG, align 4
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 (i32, i8*, ...) @log(i32 %79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %80)
  %82 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %83 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %82, i32 0, i32 9
  %84 = call i32 @memcpy(i32* %83, %struct.timeval* %11, i32 4)
  br label %297

85:                                               ; preds = %63
  %86 = load i8*, i8** %7, align 8
  %87 = call i64 @str_matches_option(i8* %86, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %85
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @evdns_strtotimeval(i8* %90, %struct.timeval* %12)
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i32 -1, i32* %5, align 4
  br label %299

94:                                               ; preds = %89
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @DNS_OPTION_MISC, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  store i32 0, i32* %5, align 4
  br label %299

100:                                              ; preds = %94
  %101 = load i32, i32* @EVDNS_LOG_DEBUG, align 4
  %102 = load i8*, i8** %8, align 8
  %103 = call i32 (i32, i8*, ...) @log(i32 %101, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %102)
  %104 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %105 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %104, i32 0, i32 8
  %106 = call i32 @memcpy(i32* %105, %struct.timeval* %12, i32 4)
  br label %296

107:                                              ; preds = %85
  %108 = load i8*, i8** %7, align 8
  %109 = call i64 @str_matches_option(i8* %108, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %107
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @strtoint_clipped(i8* %112, i32 1, i32 255)
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  store i32 -1, i32* %5, align 4
  br label %299

117:                                              ; preds = %111
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @DNS_OPTION_MISC, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %117
  store i32 0, i32* %5, align 4
  br label %299

123:                                              ; preds = %117
  %124 = load i32, i32* @EVDNS_LOG_DEBUG, align 4
  %125 = load i32, i32* %13, align 4
  %126 = call i32 (i32, i8*, ...) @log(i32 %124, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %13, align 4
  %128 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %129 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  br label %295

130:                                              ; preds = %107
  %131 = load i8*, i8** %7, align 8
  %132 = call i64 @str_matches_option(i8* %131, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %153

134:                                              ; preds = %130
  %135 = load i8*, i8** %8, align 8
  %136 = call i32 @strtoint_clipped(i8* %135, i32 1, i32 65000)
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  store i32 -1, i32* %5, align 4
  br label %299

140:                                              ; preds = %134
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @DNS_OPTION_MISC, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %140
  store i32 0, i32* %5, align 4
  br label %299

146:                                              ; preds = %140
  %147 = load i32, i32* @EVDNS_LOG_DEBUG, align 4
  %148 = load i32, i32* %14, align 4
  %149 = call i32 (i32, i8*, ...) @log(i32 %147, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %148)
  %150 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %151 = load i32, i32* %14, align 4
  %152 = call i32 @evdns_base_set_max_requests_inflight(%struct.evdns_base* %150, i32 %151)
  br label %294

153:                                              ; preds = %130
  %154 = load i8*, i8** %7, align 8
  %155 = call i64 @str_matches_option(i8* %154, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %181

157:                                              ; preds = %153
  %158 = load i8*, i8** %8, align 8
  %159 = call i8* @strtoint(i8* %158)
  %160 = ptrtoint i8* %159 to i32
  store i32 %160, i32* %15, align 4
  %161 = load i32, i32* %15, align 4
  %162 = icmp eq i32 %161, -1
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  store i32 -1, i32* %5, align 4
  br label %299

164:                                              ; preds = %157
  %165 = load i32, i32* %15, align 4
  %166 = icmp sgt i32 %165, 255
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  store i32 255, i32* %15, align 4
  br label %168

168:                                              ; preds = %167, %164
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* @DNS_OPTION_MISC, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %168
  store i32 0, i32* %5, align 4
  br label %299

174:                                              ; preds = %168
  %175 = load i32, i32* @EVDNS_LOG_DEBUG, align 4
  %176 = load i32, i32* %15, align 4
  %177 = call i32 (i32, i8*, ...) @log(i32 %175, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* %15, align 4
  %179 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %180 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  br label %293

181:                                              ; preds = %153
  %182 = load i8*, i8** %7, align 8
  %183 = call i64 @str_matches_option(i8* %182, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %198

185:                                              ; preds = %181
  %186 = load i8*, i8** %8, align 8
  %187 = call i8* @strtoint(i8* %186)
  %188 = ptrtoint i8* %187 to i32
  store i32 %188, i32* %16, align 4
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* @DNS_OPTION_MISC, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %185
  store i32 0, i32* %5, align 4
  br label %299

194:                                              ; preds = %185
  %195 = load i32, i32* %16, align 4
  %196 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %197 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %196, i32 0, i32 2
  store i32 %195, i32* %197, align 8
  br label %292

198:                                              ; preds = %181
  %199 = load i8*, i8** %7, align 8
  %200 = call i64 @str_matches_option(i8* %199, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %220

202:                                              ; preds = %198
  store i32 4, i32* %17, align 4
  %203 = load i32, i32* %9, align 4
  %204 = load i32, i32* @DNS_OPTION_NAMESERVERS, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %202
  store i32 0, i32* %5, align 4
  br label %299

208:                                              ; preds = %202
  %209 = load i8*, i8** %8, align 8
  %210 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %211 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %210, i32 0, i32 7
  %212 = bitcast i32* %211 to %struct.sockaddr*
  %213 = call i64 @evutil_parse_sockaddr_port(i8* %209, %struct.sockaddr* %212, i32* %17)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %208
  store i32 -1, i32* %5, align 4
  br label %299

216:                                              ; preds = %208
  %217 = load i32, i32* %17, align 4
  %218 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %219 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %218, i32 0, i32 3
  store i32 %217, i32* %219, align 4
  br label %291

220:                                              ; preds = %198
  %221 = load i8*, i8** %7, align 8
  %222 = call i64 @str_matches_option(i8* %221, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %248

224:                                              ; preds = %220
  %225 = load i8*, i8** %8, align 8
  %226 = call i32 @evdns_strtotimeval(i8* %225, %struct.timeval* %18)
  %227 = icmp eq i32 %226, -1
  br i1 %227, label %228, label %229

228:                                              ; preds = %224
  store i32 -1, i32* %5, align 4
  br label %299

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = icmp sgt i32 %231, 3600
  br i1 %232, label %233, label %235

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  store i32 3600, i32* %234, align 4
  br label %235

235:                                              ; preds = %233, %229
  %236 = load i32, i32* %9, align 4
  %237 = load i32, i32* @DNS_OPTION_MISC, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %241, label %240

240:                                              ; preds = %235
  store i32 0, i32* %5, align 4
  br label %299

241:                                              ; preds = %235
  %242 = load i32, i32* @EVDNS_LOG_DEBUG, align 4
  %243 = load i8*, i8** %8, align 8
  %244 = call i32 (i32, i8*, ...) @log(i32 %242, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i8* %243)
  %245 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %246 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %245, i32 0, i32 6
  %247 = call i32 @memcpy(i32* %246, %struct.timeval* %18, i32 4)
  br label %290

248:                                              ; preds = %220
  %249 = load i8*, i8** %7, align 8
  %250 = call i64 @str_matches_option(i8* %249, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %268

252:                                              ; preds = %248
  %253 = load i8*, i8** %8, align 8
  %254 = call i8* @strtoint(i8* %253)
  %255 = ptrtoint i8* %254 to i32
  store i32 %255, i32* %19, align 4
  %256 = load i32, i32* %9, align 4
  %257 = load i32, i32* @DNS_OPTION_MISC, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %252
  store i32 0, i32* %5, align 4
  br label %299

261:                                              ; preds = %252
  %262 = load i32, i32* @EVDNS_LOG_DEBUG, align 4
  %263 = load i8*, i8** %8, align 8
  %264 = call i32 (i32, i8*, ...) @log(i32 %262, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i8* %263)
  %265 = load i32, i32* %19, align 4
  %266 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %267 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %266, i32 0, i32 4
  store i32 %265, i32* %267, align 8
  br label %289

268:                                              ; preds = %248
  %269 = load i8*, i8** %7, align 8
  %270 = call i64 @str_matches_option(i8* %269, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %288

272:                                              ; preds = %268
  %273 = load i8*, i8** %8, align 8
  %274 = call i8* @strtoint(i8* %273)
  %275 = ptrtoint i8* %274 to i32
  store i32 %275, i32* %20, align 4
  %276 = load i32, i32* %9, align 4
  %277 = load i32, i32* @DNS_OPTION_MISC, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %281, label %280

280:                                              ; preds = %272
  store i32 0, i32* %5, align 4
  br label %299

281:                                              ; preds = %272
  %282 = load i32, i32* @EVDNS_LOG_DEBUG, align 4
  %283 = load i8*, i8** %8, align 8
  %284 = call i32 (i32, i8*, ...) @log(i32 %282, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i8* %283)
  %285 = load i32, i32* %20, align 4
  %286 = load %struct.evdns_base*, %struct.evdns_base** %6, align 8
  %287 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %286, i32 0, i32 5
  store i32 %285, i32* %287, align 4
  br label %288

288:                                              ; preds = %281, %268
  br label %289

289:                                              ; preds = %288, %261
  br label %290

290:                                              ; preds = %289, %241
  br label %291

291:                                              ; preds = %290, %216
  br label %292

292:                                              ; preds = %291, %194
  br label %293

293:                                              ; preds = %292, %174
  br label %294

294:                                              ; preds = %293, %146
  br label %295

295:                                              ; preds = %294, %123
  br label %296

296:                                              ; preds = %295, %100
  br label %297

297:                                              ; preds = %296, %78
  br label %298

298:                                              ; preds = %297, %57
  store i32 0, i32* %5, align 4
  br label %299

299:                                              ; preds = %298, %280, %260, %240, %228, %215, %207, %193, %173, %163, %145, %139, %122, %116, %99, %93, %77, %71, %56, %38, %32
  %300 = load i32, i32* %5, align 4
  ret i32 %300
}

declare dso_local i32 @ASSERT_LOCKED(%struct.evdns_base*) #1

declare dso_local i64 @str_matches_option(i8*, i8*) #1

declare dso_local i8* @strtoint(i8*) #1

declare dso_local i32 @log(i32, i8*, ...) #1

declare dso_local %struct.TYPE_2__* @search_state_new(...) #1

declare dso_local i32 @evdns_strtotimeval(i8*, %struct.timeval*) #1

declare dso_local i32 @memcpy(i32*, %struct.timeval*, i32) #1

declare dso_local i32 @strtoint_clipped(i8*, i32, i32) #1

declare dso_local i32 @evdns_base_set_max_requests_inflight(%struct.evdns_base*, i32) #1

declare dso_local i64 @evutil_parse_sockaddr_port(i8*, %struct.sockaddr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
