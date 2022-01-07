; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_dns.c_dns_server_request_cb.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_dns.c_dns_server_request_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_server_request = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32, i8* }
%struct.in_addr = type { i32 }

@__const.dns_server_request_cb.TEST_ARPA = private unnamed_addr constant [27 x i8] c"11.11.168.192.in-addr.arpa\00", align 16
@__const.dns_server_request_cb.TEST_IN6 = private unnamed_addr constant [73 x i8] c"f.e.f.e.0.0.0.0.0.0.0.0.1.1.1.1.a.a.a.a.0.0.0.0.0.0.0.0.0.f.f.f.ip6.arpa\00", align 16
@EVDNS_TYPE_A = common dso_local global i32 0, align 4
@EVDNS_CLASS_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"zz.example.com\00", align 1
@dns_ok = common dso_local global i64 0, align 8
@EVDNS_TYPE_AAAA = common dso_local global i32 0, align 4
@__const.dns_server_request_cb.addr6 = private unnamed_addr constant [17 x i8] c"abcdefghijklmnop\00", align 16
@EVDNS_TYPE_PTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"ZZ.EXAMPLE.COM\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"ZZ-INET6.EXAMPLE.COM\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"drop.example.com\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Unexpected question %d %d \22%s\22 \00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Couldn't send reply. \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evdns_server_request*, i8*)* @dns_server_request_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dns_server_request_cb(%struct.evdns_server_request* %0, i8* %1) #0 {
  %3 = alloca %struct.evdns_server_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [27 x i8], align 16
  %8 = alloca [73 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.in_addr, align 4
  %13 = alloca [17 x i8], align 16
  store %struct.evdns_server_request* %0, %struct.evdns_server_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = bitcast [27 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 getelementptr inbounds ([27 x i8], [27 x i8]* @__const.dns_server_request_cb.TEST_ARPA, i32 0, i32 0), i64 27, i1 false)
  %15 = bitcast [73 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 getelementptr inbounds ([73 x i8], [73 x i8]* @__const.dns_server_request_cb.TEST_IN6, i32 0, i32 0), i64 73, i1 false)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %164, %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %19 = getelementptr inbounds %struct.evdns_server_request, %struct.evdns_server_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %167

22:                                               ; preds = %16
  %23 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %24 = getelementptr inbounds %struct.evdns_server_request, %struct.evdns_server_request* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %25, i64 %27
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %9, align 4
  %32 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %33 = getelementptr inbounds %struct.evdns_server_request, %struct.evdns_server_request* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %34, i64 %36
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %42 = getelementptr inbounds %struct.evdns_server_request, %struct.evdns_server_request* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %43, i64 %45
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %11, align 8
  %50 = call i32 @htonl(i32 -1062728949)
  %51 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @EVDNS_TYPE_A, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %22
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @EVDNS_CLASS_INET, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @evutil_ascii_strcasecmp(i8* %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %59
  %64 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  %67 = call i32 @evdns_server_request_add_a_reply(%struct.evdns_server_request* %64, i8* %65, i32 1, i32* %66, i32 12345)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i64 0, i64* @dns_ok, align 8
  br label %71

71:                                               ; preds = %70, %63
  br label %163

72:                                               ; preds = %59, %55, %22
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @EVDNS_TYPE_AAAA, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %72
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @EVDNS_CLASS_INET, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %76
  %81 = load i8*, i8** %11, align 8
  %82 = call i32 @evutil_ascii_strcasecmp(i8* %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %80
  %85 = bitcast [17 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %85, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @__const.dns_server_request_cb.addr6, i32 0, i32 0), i64 17, i1 false)
  %86 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = getelementptr inbounds [17 x i8], [17 x i8]* %13, i64 0, i64 0
  %89 = call i32 @evdns_server_request_add_aaaa_reply(%struct.evdns_server_request* %86, i8* %87, i32 1, i8* %88, i32 123)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  store i64 0, i64* @dns_ok, align 8
  br label %93

93:                                               ; preds = %92, %84
  br label %162

94:                                               ; preds = %80, %76, %72
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @EVDNS_TYPE_PTR, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %115

98:                                               ; preds = %94
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @EVDNS_CLASS_INET, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %98
  %103 = load i8*, i8** %11, align 8
  %104 = getelementptr inbounds [27 x i8], [27 x i8]* %7, i64 0, i64 0
  %105 = call i32 @evutil_ascii_strcasecmp(i8* %103, i8* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %102
  %108 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = call i32 @evdns_server_request_add_ptr_reply(%struct.evdns_server_request* %108, i32* null, i8* %109, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 54321)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  store i64 0, i64* @dns_ok, align 8
  br label %114

114:                                              ; preds = %113, %107
  br label %161

115:                                              ; preds = %102, %98, %94
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @EVDNS_TYPE_PTR, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %136

119:                                              ; preds = %115
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @EVDNS_CLASS_INET, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %136

123:                                              ; preds = %119
  %124 = load i8*, i8** %11, align 8
  %125 = getelementptr inbounds [73 x i8], [73 x i8]* %8, i64 0, i64 0
  %126 = call i32 @evutil_ascii_strcasecmp(i8* %124, i8* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %123
  %129 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %130 = load i8*, i8** %11, align 8
  %131 = call i32 @evdns_server_request_add_ptr_reply(%struct.evdns_server_request* %129, i32* null, i8* %130, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 54322)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  store i64 0, i64* @dns_ok, align 8
  br label %135

135:                                              ; preds = %134, %128
  br label %160

136:                                              ; preds = %123, %119, %115
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @EVDNS_TYPE_A, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %154

140:                                              ; preds = %136
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @EVDNS_CLASS_INET, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %140
  %145 = load i8*, i8** %11, align 8
  %146 = call i32 @evutil_ascii_strcasecmp(i8* %145, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %144
  %149 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %150 = call i64 @evdns_server_request_drop(%struct.evdns_server_request* %149)
  %151 = icmp slt i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  store i64 0, i64* @dns_ok, align 8
  br label %153

153:                                              ; preds = %152, %148
  br label %174

154:                                              ; preds = %144, %140, %136
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load i8*, i8** %11, align 8
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %155, i32 %156, i8* %157)
  store i64 0, i64* @dns_ok, align 8
  br label %159

159:                                              ; preds = %154
  br label %160

160:                                              ; preds = %159, %135
  br label %161

161:                                              ; preds = %160, %114
  br label %162

162:                                              ; preds = %161, %93
  br label %163

163:                                              ; preds = %162, %71
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %5, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %5, align 4
  br label %16

167:                                              ; preds = %16
  %168 = load %struct.evdns_server_request*, %struct.evdns_server_request** %3, align 8
  %169 = call i32 @evdns_server_request_respond(%struct.evdns_server_request* %168, i32 0)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* %6, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store i64 0, i64* @dns_ok, align 8
  br label %174

174:                                              ; preds = %153, %172, %167
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @htonl(i32) #2

declare dso_local i32 @evutil_ascii_strcasecmp(i8*, i8*) #2

declare dso_local i32 @evdns_server_request_add_a_reply(%struct.evdns_server_request*, i8*, i32, i32*, i32) #2

declare dso_local i32 @evdns_server_request_add_aaaa_reply(%struct.evdns_server_request*, i8*, i32, i8*, i32) #2

declare dso_local i32 @evdns_server_request_add_ptr_reply(%struct.evdns_server_request*, i32*, i8*, i8*, i32) #2

declare dso_local i64 @evdns_server_request_drop(%struct.evdns_server_request*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @evdns_server_request_respond(%struct.evdns_server_request*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
