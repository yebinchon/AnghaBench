; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_getaddrinfo.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_evdns_getaddrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_base = type { i32 }
%struct.evdns_getaddrinfo_request = type { %struct.TYPE_8__, %struct.TYPE_8__, i32, i32, %struct.evdns_base*, i8*, i32 (i32, %struct.evutil_addrinfo*, i8*)*, i32, %struct.evutil_addrinfo }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }
%struct.evutil_addrinfo = type { i32, i64 }

@current_base = common dso_local global %struct.evdns_base* null, align 8
@EVDNS_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Call to getaddrinfo_async with no evdns_base configured.\00", align 1
@EVUTIL_EAI_FAIL = common dso_local global i32 0, align 4
@EVUTIL_AI_NUMERICHOST = common dso_local global i32 0, align 4
@PF_UNSPEC = common dso_local global i64 0, align 8
@EVUTIL_EAI_NEED_RESOLVE = common dso_local global i32 0, align 4
@EVUTIL_EAI_MEMORY = common dso_local global i32 0, align 4
@DNS_IPv4_A = common dso_local global i32 0, align 4
@DNS_IPv6_AAAA = common dso_local global i32 0, align 4
@EVUTIL_AI_CANONNAME = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i64 0, align 8
@EVDNS_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Sending request for %s on ipv4 as %p\00", align 1
@evdns_getaddrinfo_gotresolve = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Sending request for %s on ipv6 as %p\00", align 1
@evdns_getaddrinfo_timeout_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evdns_getaddrinfo_request* @evdns_getaddrinfo(%struct.evdns_base* %0, i8* %1, i8* %2, %struct.evutil_addrinfo* %3, i32 (i32, %struct.evutil_addrinfo*, i8*)* %4, i8* %5) #0 {
  %7 = alloca %struct.evdns_getaddrinfo_request*, align 8
  %8 = alloca %struct.evdns_base*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.evutil_addrinfo*, align 8
  %12 = alloca i32 (i32, %struct.evutil_addrinfo*, i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.evdns_getaddrinfo_request*, align 8
  %15 = alloca %struct.evutil_addrinfo, align 8
  %16 = alloca %struct.evutil_addrinfo*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.evdns_base* %0, %struct.evdns_base** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.evutil_addrinfo* %3, %struct.evutil_addrinfo** %11, align 8
  store i32 (i32, %struct.evutil_addrinfo*, i8*)* %4, i32 (i32, %struct.evutil_addrinfo*, i8*)** %12, align 8
  store i8* %5, i8** %13, align 8
  store %struct.evutil_addrinfo* null, %struct.evutil_addrinfo** %16, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %21 = load %struct.evdns_base*, %struct.evdns_base** %8, align 8
  %22 = icmp ne %struct.evdns_base* %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %6
  %24 = load %struct.evdns_base*, %struct.evdns_base** @current_base, align 8
  store %struct.evdns_base* %24, %struct.evdns_base** %8, align 8
  %25 = load %struct.evdns_base*, %struct.evdns_base** %8, align 8
  %26 = icmp ne %struct.evdns_base* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @EVDNS_LOG_WARN, align 4
  %29 = call i32 (i32, i8*, ...) @log(i32 %28, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %30 = load i32 (i32, %struct.evutil_addrinfo*, i8*)*, i32 (i32, %struct.evutil_addrinfo*, i8*)** %12, align 8
  %31 = load i32, i32* @EVUTIL_EAI_FAIL, align 4
  %32 = load i8*, i8** %13, align 8
  %33 = call i32 %30(i32 %31, %struct.evutil_addrinfo* null, i8* %32)
  store %struct.evdns_getaddrinfo_request* null, %struct.evdns_getaddrinfo_request** %7, align 8
  br label %242

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %6
  %36 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %11, align 8
  %37 = icmp ne %struct.evutil_addrinfo* %36, null
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  %39 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %11, align 8
  %40 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @EVUTIL_AI_NUMERICHOST, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %38
  store %struct.evutil_addrinfo* null, %struct.evutil_addrinfo** %16, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %11, align 8
  %49 = call i32 @evutil_getaddrinfo(i8* %46, i8* %47, %struct.evutil_addrinfo* %48, %struct.evutil_addrinfo** %16)
  store i32 %49, i32* %17, align 4
  %50 = load i32 (i32, %struct.evutil_addrinfo*, i8*)*, i32 (i32, %struct.evutil_addrinfo*, i8*)** %12, align 8
  %51 = load i32, i32* %17, align 4
  %52 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %16, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = call i32 %50(i32 %51, %struct.evutil_addrinfo* %52, i8* %53)
  store %struct.evdns_getaddrinfo_request* null, %struct.evdns_getaddrinfo_request** %7, align 8
  br label %242

55:                                               ; preds = %38, %35
  %56 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %11, align 8
  %57 = icmp ne %struct.evutil_addrinfo* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %11, align 8
  %60 = call i32 @memcpy(%struct.evutil_addrinfo* %15, %struct.evutil_addrinfo* %59, i32 16)
  br label %65

61:                                               ; preds = %55
  %62 = call i32 @memset(%struct.evutil_addrinfo* %15, i32 0, i32 16)
  %63 = load i64, i64* @PF_UNSPEC, align 8
  %64 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %15, i32 0, i32 1
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %58
  %66 = call i32 @evutil_adjust_hints_for_addrconfig_(%struct.evutil_addrinfo* %15)
  %67 = load i8*, i8** %9, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @evutil_getaddrinfo_common_(i8* %67, i8* %68, %struct.evutil_addrinfo* %15, %struct.evutil_addrinfo** %16, i32* %18)
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* @EVUTIL_EAI_NEED_RESOLVE, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = load i32 (i32, %struct.evutil_addrinfo*, i8*)*, i32 (i32, %struct.evutil_addrinfo*, i8*)** %12, align 8
  %75 = load i32, i32* %17, align 4
  %76 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %16, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = call i32 %74(i32 %75, %struct.evutil_addrinfo* %76, i8* %77)
  store %struct.evdns_getaddrinfo_request* null, %struct.evdns_getaddrinfo_request** %7, align 8
  br label %242

79:                                               ; preds = %65
  %80 = load %struct.evdns_base*, %struct.evdns_base** %8, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load i32, i32* %18, align 4
  %83 = call i32 @evdns_getaddrinfo_fromhosts(%struct.evdns_base* %80, i8* %81, %struct.evutil_addrinfo* %15, i32 %82, %struct.evutil_addrinfo** %16)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %79
  %86 = load i32 (i32, %struct.evutil_addrinfo*, i8*)*, i32 (i32, %struct.evutil_addrinfo*, i8*)** %12, align 8
  %87 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %16, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = call i32 %86(i32 0, %struct.evutil_addrinfo* %87, i8* %88)
  store %struct.evdns_getaddrinfo_request* null, %struct.evdns_getaddrinfo_request** %7, align 8
  br label %242

90:                                               ; preds = %79
  %91 = call %struct.evdns_getaddrinfo_request* @mm_calloc(i32 1, i32 88)
  store %struct.evdns_getaddrinfo_request* %91, %struct.evdns_getaddrinfo_request** %14, align 8
  %92 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %93 = icmp ne %struct.evdns_getaddrinfo_request* %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %90
  %95 = load i32 (i32, %struct.evutil_addrinfo*, i8*)*, i32 (i32, %struct.evutil_addrinfo*, i8*)** %12, align 8
  %96 = load i32, i32* @EVUTIL_EAI_MEMORY, align 4
  %97 = load i8*, i8** %13, align 8
  %98 = call i32 %95(i32 %96, %struct.evutil_addrinfo* null, i8* %97)
  store %struct.evdns_getaddrinfo_request* null, %struct.evdns_getaddrinfo_request** %7, align 8
  br label %242

99:                                               ; preds = %90
  %100 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %101 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %100, i32 0, i32 8
  %102 = call i32 @memcpy(%struct.evutil_addrinfo* %101, %struct.evutil_addrinfo* %15, i32 16)
  %103 = load i32, i32* %18, align 4
  %104 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %105 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %104, i32 0, i32 7
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @DNS_IPv4_A, align 4
  %107 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %108 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 8
  %110 = load i32, i32* @DNS_IPv6_AAAA, align 4
  %111 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %112 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 8
  %114 = load i32 (i32, %struct.evutil_addrinfo*, i8*)*, i32 (i32, %struct.evutil_addrinfo*, i8*)** %12, align 8
  %115 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %116 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %115, i32 0, i32 6
  store i32 (i32, %struct.evutil_addrinfo*, i8*)* %114, i32 (i32, %struct.evutil_addrinfo*, i8*)** %116, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %119 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %118, i32 0, i32 5
  store i8* %117, i8** %119, align 8
  %120 = load %struct.evdns_base*, %struct.evdns_base** %8, align 8
  %121 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %122 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %121, i32 0, i32 4
  store %struct.evdns_base* %120, %struct.evdns_base** %122, align 8
  %123 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %15, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @EVUTIL_AI_CANONNAME, align 4
  %126 = and i32 %124, %125
  store i32 %126, i32* %19, align 4
  %127 = load %struct.evdns_base*, %struct.evdns_base** %8, align 8
  %128 = call i32 @EVDNS_LOCK(%struct.evdns_base* %127)
  %129 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %15, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @PF_INET6, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %167

133:                                              ; preds = %99
  %134 = load i32, i32* @EVDNS_LOG_DEBUG, align 4
  %135 = load i8*, i8** %9, align 8
  %136 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %137 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %136, i32 0, i32 1
  %138 = call i32 (i32, i8*, ...) @log(i32 %134, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %135, %struct.TYPE_8__* %137)
  %139 = load %struct.evdns_base*, %struct.evdns_base** %8, align 8
  %140 = load i8*, i8** %9, align 8
  %141 = load i32, i32* @evdns_getaddrinfo_gotresolve, align 4
  %142 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %143 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %142, i32 0, i32 1
  %144 = call %struct.TYPE_7__* @evdns_base_resolve_ipv4(%struct.evdns_base* %139, i8* %140, i32 0, i32 %141, %struct.TYPE_8__* %143)
  %145 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %146 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  store %struct.TYPE_7__* %144, %struct.TYPE_7__** %147, align 8
  %148 = load i32, i32* %19, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %166

150:                                              ; preds = %133
  %151 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %152 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = icmp ne %struct.TYPE_7__* %154, null
  br i1 %155, label %156, label %166

156:                                              ; preds = %150
  %157 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %158 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %157, i32 0, i32 3
  %159 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %160 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  store i32* %158, i32** %165, align 8
  br label %166

166:                                              ; preds = %156, %150, %133
  br label %167

167:                                              ; preds = %166, %99
  %168 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %15, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @PF_INET, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %206

172:                                              ; preds = %167
  %173 = load i32, i32* @EVDNS_LOG_DEBUG, align 4
  %174 = load i8*, i8** %9, align 8
  %175 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %176 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %175, i32 0, i32 0
  %177 = call i32 (i32, i8*, ...) @log(i32 %173, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %174, %struct.TYPE_8__* %176)
  %178 = load %struct.evdns_base*, %struct.evdns_base** %8, align 8
  %179 = load i8*, i8** %9, align 8
  %180 = load i32, i32* @evdns_getaddrinfo_gotresolve, align 4
  %181 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %182 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %181, i32 0, i32 0
  %183 = call %struct.TYPE_7__* @evdns_base_resolve_ipv6(%struct.evdns_base* %178, i8* %179, i32 0, i32 %180, %struct.TYPE_8__* %182)
  %184 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %185 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  store %struct.TYPE_7__* %183, %struct.TYPE_7__** %186, align 8
  %187 = load i32, i32* %19, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %205

189:                                              ; preds = %172
  %190 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %191 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %192, align 8
  %194 = icmp ne %struct.TYPE_7__* %193, null
  br i1 %194, label %195, label %205

195:                                              ; preds = %189
  %196 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %197 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %196, i32 0, i32 3
  %198 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %199 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  store i32* %197, i32** %204, align 8
  br label %205

205:                                              ; preds = %195, %189, %172
  br label %206

206:                                              ; preds = %205, %167
  %207 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %208 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %207, i32 0, i32 2
  %209 = load %struct.evdns_base*, %struct.evdns_base** %8, align 8
  %210 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @evdns_getaddrinfo_timeout_cb, align 4
  %213 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %214 = call i32 @evtimer_assign(i32* %208, i32 %211, i32 %212, %struct.evdns_getaddrinfo_request* %213)
  %215 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %216 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %217, align 8
  %219 = icmp ne %struct.TYPE_7__* %218, null
  br i1 %219, label %226, label %220

220:                                              ; preds = %206
  %221 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %222 = getelementptr inbounds %struct.evdns_getaddrinfo_request, %struct.evdns_getaddrinfo_request* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %223, align 8
  %225 = icmp ne %struct.TYPE_7__* %224, null
  br label %226

226:                                              ; preds = %220, %206
  %227 = phi i1 [ true, %206 ], [ %225, %220 ]
  %228 = zext i1 %227 to i32
  store i32 %228, i32* %20, align 4
  %229 = load %struct.evdns_base*, %struct.evdns_base** %8, align 8
  %230 = call i32 @EVDNS_UNLOCK(%struct.evdns_base* %229)
  %231 = load i32, i32* %20, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %226
  %234 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  store %struct.evdns_getaddrinfo_request* %234, %struct.evdns_getaddrinfo_request** %7, align 8
  br label %242

235:                                              ; preds = %226
  %236 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %14, align 8
  %237 = call i32 @mm_free(%struct.evdns_getaddrinfo_request* %236)
  %238 = load i32 (i32, %struct.evutil_addrinfo*, i8*)*, i32 (i32, %struct.evutil_addrinfo*, i8*)** %12, align 8
  %239 = load i32, i32* @EVUTIL_EAI_FAIL, align 4
  %240 = load i8*, i8** %13, align 8
  %241 = call i32 %238(i32 %239, %struct.evutil_addrinfo* null, i8* %240)
  store %struct.evdns_getaddrinfo_request* null, %struct.evdns_getaddrinfo_request** %7, align 8
  br label %242

242:                                              ; preds = %235, %233, %94, %85, %73, %45, %27
  %243 = load %struct.evdns_getaddrinfo_request*, %struct.evdns_getaddrinfo_request** %7, align 8
  ret %struct.evdns_getaddrinfo_request* %243
}

declare dso_local i32 @log(i32, i8*, ...) #1

declare dso_local i32 @evutil_getaddrinfo(i8*, i8*, %struct.evutil_addrinfo*, %struct.evutil_addrinfo**) #1

declare dso_local i32 @memcpy(%struct.evutil_addrinfo*, %struct.evutil_addrinfo*, i32) #1

declare dso_local i32 @memset(%struct.evutil_addrinfo*, i32, i32) #1

declare dso_local i32 @evutil_adjust_hints_for_addrconfig_(%struct.evutil_addrinfo*) #1

declare dso_local i32 @evutil_getaddrinfo_common_(i8*, i8*, %struct.evutil_addrinfo*, %struct.evutil_addrinfo**, i32*) #1

declare dso_local i32 @evdns_getaddrinfo_fromhosts(%struct.evdns_base*, i8*, %struct.evutil_addrinfo*, i32, %struct.evutil_addrinfo**) #1

declare dso_local %struct.evdns_getaddrinfo_request* @mm_calloc(i32, i32) #1

declare dso_local i32 @EVDNS_LOCK(%struct.evdns_base*) #1

declare dso_local %struct.TYPE_7__* @evdns_base_resolve_ipv4(%struct.evdns_base*, i8*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_7__* @evdns_base_resolve_ipv6(%struct.evdns_base*, i8*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @evtimer_assign(i32*, i32, i32, %struct.evdns_getaddrinfo_request*) #1

declare dso_local i32 @EVDNS_UNLOCK(%struct.evdns_base*) #1

declare dso_local i32 @mm_free(%struct.evdns_getaddrinfo_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
