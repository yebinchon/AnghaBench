; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_recv_icmp.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_recv_icmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv4 = type { i32, i32, i32* }
%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.sfe_ipv4_ip_hdr = type { i32, i32, i32, i32, i32 }
%struct.icmphdr = type { i64 }
%struct.sfe_ipv4_udp_hdr = type { i32, i32 }
%struct.sfe_ipv4_tcp_hdr = type { i32, i32 }
%struct.sfe_ipv4_connection_match = type { %struct.sfe_ipv4_connection* }
%struct.sfe_ipv4_connection = type { i32 }

@SFE_IPV4_EXCEPTION_EVENT_ICMP_HEADER_INCOMPLETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"packet too short for ICMP header\0A\00", align 1
@ICMP_DEST_UNREACH = common dso_local global i64 0, align 8
@ICMP_TIME_EXCEEDED = common dso_local global i64 0, align 8
@SFE_IPV4_EXCEPTION_EVENT_ICMP_UNHANDLED_TYPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"unhandled ICMP type: 0x%x\0A\00", align 1
@SFE_IPV4_EXCEPTION_EVENT_ICMP_IPV4_HEADER_INCOMPLETE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Embedded IP header not complete\0A\00", align 1
@SFE_IPV4_EXCEPTION_EVENT_ICMP_IPV4_NON_V4 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"IP version: %u\0A\00", align 1
@SFE_IPV4_EXCEPTION_EVENT_ICMP_IPV4_IP_OPTIONS_INCOMPLETE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [49 x i8] c"Embedded header not large enough for IP options\0A\00", align 1
@SFE_IPV4_EXCEPTION_EVENT_ICMP_IPV4_UDP_HEADER_INCOMPLETE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"Incomplete embedded UDP header\0A\00", align 1
@SFE_IPV4_EXCEPTION_EVENT_ICMP_IPV4_TCP_HEADER_INCOMPLETE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"Incomplete embedded TCP header\0A\00", align 1
@SFE_IPV4_EXCEPTION_EVENT_ICMP_IPV4_UNHANDLED_PROTOCOL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [36 x i8] c"Unhandled embedded IP protocol: %u\0A\00", align 1
@SFE_IPV4_EXCEPTION_EVENT_ICMP_NO_CONNECTION = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"no connection found\0A\00", align 1
@SFE_IPV4_EXCEPTION_EVENT_ICMP_FLUSHED_CONNECTION = common dso_local global i64 0, align 8
@SFE_SYNC_REASON_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfe_ipv4*, %struct.sk_buff*, %struct.net_device*, i32, %struct.sfe_ipv4_ip_hdr*, i32)* @sfe_ipv4_recv_icmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfe_ipv4_recv_icmp(%struct.sfe_ipv4* %0, %struct.sk_buff* %1, %struct.net_device* %2, i32 %3, %struct.sfe_ipv4_ip_hdr* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sfe_ipv4*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sfe_ipv4_ip_hdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.icmphdr*, align 8
  %15 = alloca %struct.sfe_ipv4_ip_hdr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.sfe_ipv4_udp_hdr*, align 8
  %20 = alloca %struct.sfe_ipv4_tcp_hdr*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.sfe_ipv4_connection_match*, align 8
  %26 = alloca %struct.sfe_ipv4_connection*, align 8
  %27 = alloca i32, align 4
  store %struct.sfe_ipv4* %0, %struct.sfe_ipv4** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store %struct.net_device* %2, %struct.net_device** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.sfe_ipv4_ip_hdr* %4, %struct.sfe_ipv4_ip_hdr** %12, align 8
  store i32 %5, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = zext i32 %28 to i64
  %30 = add i64 8, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %11, align 4
  %34 = sub i32 %33, %32
  store i32 %34, i32* %11, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %36 = load i32, i32* %27, align 4
  %37 = call i32 @pskb_may_pull(%struct.sk_buff* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %6
  %40 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %41 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %40, i32 0, i32 0
  %42 = call i32 @spin_lock_bh(i32* %41)
  %43 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %44 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @SFE_IPV4_EXCEPTION_EVENT_ICMP_HEADER_INCOMPLETE, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %51 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %55 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock_bh(i32* %55)
  %57 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %371

58:                                               ; preds = %6
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = zext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = inttoptr i64 %64 to %struct.icmphdr*
  store %struct.icmphdr* %65, %struct.icmphdr** %14, align 8
  %66 = load %struct.icmphdr*, %struct.icmphdr** %14, align 8
  %67 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ICMP_DEST_UNREACH, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %99

71:                                               ; preds = %58
  %72 = load %struct.icmphdr*, %struct.icmphdr** %14, align 8
  %73 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ICMP_TIME_EXCEEDED, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %99

77:                                               ; preds = %71
  %78 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %79 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %78, i32 0, i32 0
  %80 = call i32 @spin_lock_bh(i32* %79)
  %81 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %82 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @SFE_IPV4_EXCEPTION_EVENT_ICMP_UNHANDLED_TYPE, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %89 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  %92 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %93 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %92, i32 0, i32 0
  %94 = call i32 @spin_unlock_bh(i32* %93)
  %95 = load %struct.icmphdr*, %struct.icmphdr** %14, align 8
  %96 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %97)
  store i32 0, i32* %7, align 4
  br label %371

99:                                               ; preds = %71, %58
  %100 = load i32, i32* %11, align 4
  %101 = zext i32 %100 to i64
  %102 = sub i64 %101, 8
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %27, align 4
  %105 = sext i32 %104 to i64
  %106 = add i64 %105, 20
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %27, align 4
  %108 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %109 = load i32, i32* %27, align 4
  %110 = call i32 @pskb_may_pull(%struct.sk_buff* %108, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %131, label %112

112:                                              ; preds = %99
  %113 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %114 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %113, i32 0, i32 0
  %115 = call i32 @spin_lock_bh(i32* %114)
  %116 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %117 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* @SFE_IPV4_EXCEPTION_EVENT_ICMP_IPV4_HEADER_INCOMPLETE, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %124 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  %127 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %128 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %127, i32 0, i32 0
  %129 = call i32 @spin_unlock_bh(i32* %128)
  %130 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %371

131:                                              ; preds = %99
  %132 = load %struct.icmphdr*, %struct.icmphdr** %14, align 8
  %133 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %132, i64 1
  %134 = bitcast %struct.icmphdr* %133 to %struct.sfe_ipv4_ip_hdr*
  store %struct.sfe_ipv4_ip_hdr* %134, %struct.sfe_ipv4_ip_hdr** %15, align 8
  %135 = load %struct.sfe_ipv4_ip_hdr*, %struct.sfe_ipv4_ip_hdr** %15, align 8
  %136 = getelementptr inbounds %struct.sfe_ipv4_ip_hdr, %struct.sfe_ipv4_ip_hdr* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 4
  %139 = zext i1 %138 to i32
  %140 = call i64 @unlikely(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %164

142:                                              ; preds = %131
  %143 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %144 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %143, i32 0, i32 0
  %145 = call i32 @spin_lock_bh(i32* %144)
  %146 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %147 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = load i64, i64* @SFE_IPV4_EXCEPTION_EVENT_ICMP_IPV4_NON_V4, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  %153 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %154 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  %157 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %158 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %157, i32 0, i32 0
  %159 = call i32 @spin_unlock_bh(i32* %158)
  %160 = load %struct.sfe_ipv4_ip_hdr*, %struct.sfe_ipv4_ip_hdr** %15, align 8
  %161 = getelementptr inbounds %struct.sfe_ipv4_ip_hdr, %struct.sfe_ipv4_ip_hdr* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %162)
  store i32 0, i32* %7, align 4
  br label %371

164:                                              ; preds = %131
  %165 = load %struct.sfe_ipv4_ip_hdr*, %struct.sfe_ipv4_ip_hdr** %15, align 8
  %166 = getelementptr inbounds %struct.sfe_ipv4_ip_hdr, %struct.sfe_ipv4_ip_hdr* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %16, align 4
  %168 = load i32, i32* %16, align 4
  %169 = shl i32 %168, 2
  store i32 %169, i32* %17, align 4
  %170 = load i32, i32* %17, align 4
  %171 = zext i32 %170 to i64
  %172 = sub i64 %171, 20
  %173 = load i32, i32* %27, align 4
  %174 = sext i32 %173 to i64
  %175 = add i64 %174, %172
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %27, align 4
  %177 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %178 = load i32, i32* %27, align 4
  %179 = call i32 @pskb_may_pull(%struct.sk_buff* %177, i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %200, label %181

181:                                              ; preds = %164
  %182 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %183 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %182, i32 0, i32 0
  %184 = call i32 @spin_lock_bh(i32* %183)
  %185 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %186 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* @SFE_IPV4_EXCEPTION_EVENT_ICMP_IPV4_IP_OPTIONS_INCOMPLETE, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %189, align 4
  %192 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %193 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 4
  %196 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %197 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %196, i32 0, i32 0
  %198 = call i32 @spin_unlock_bh(i32* %197)
  %199 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %371

200:                                              ; preds = %164
  %201 = load i32, i32* %17, align 4
  %202 = load i32, i32* %11, align 4
  %203 = sub i32 %202, %201
  store i32 %203, i32* %11, align 4
  %204 = load %struct.sfe_ipv4_ip_hdr*, %struct.sfe_ipv4_ip_hdr** %15, align 8
  %205 = bitcast %struct.sfe_ipv4_ip_hdr* %204 to i32*
  %206 = load i32, i32* %16, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32* %208, i32** %18, align 8
  %209 = load %struct.sfe_ipv4_ip_hdr*, %struct.sfe_ipv4_ip_hdr** %15, align 8
  %210 = getelementptr inbounds %struct.sfe_ipv4_ip_hdr, %struct.sfe_ipv4_ip_hdr* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  switch i32 %211, label %282 [
    i32 128, label %212
    i32 129, label %247
  ]

212:                                              ; preds = %200
  %213 = load i32, i32* %27, align 4
  %214 = add nsw i32 %213, 8
  store i32 %214, i32* %27, align 4
  %215 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %216 = load i32, i32* %27, align 4
  %217 = call i32 @pskb_may_pull(%struct.sk_buff* %215, i32 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %238, label %219

219:                                              ; preds = %212
  %220 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %221 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %220, i32 0, i32 0
  %222 = call i32 @spin_lock_bh(i32* %221)
  %223 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %224 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %223, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = load i64, i64* @SFE_IPV4_EXCEPTION_EVENT_ICMP_IPV4_UDP_HEADER_INCOMPLETE, align 8
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %227, align 4
  %230 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %231 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %231, align 4
  %234 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %235 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %234, i32 0, i32 0
  %236 = call i32 @spin_unlock_bh(i32* %235)
  %237 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %371

238:                                              ; preds = %212
  %239 = load i32*, i32** %18, align 8
  %240 = bitcast i32* %239 to %struct.sfe_ipv4_udp_hdr*
  store %struct.sfe_ipv4_udp_hdr* %240, %struct.sfe_ipv4_udp_hdr** %19, align 8
  %241 = load %struct.sfe_ipv4_udp_hdr*, %struct.sfe_ipv4_udp_hdr** %19, align 8
  %242 = getelementptr inbounds %struct.sfe_ipv4_udp_hdr, %struct.sfe_ipv4_udp_hdr* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  store i32 %243, i32* %23, align 4
  %244 = load %struct.sfe_ipv4_udp_hdr*, %struct.sfe_ipv4_udp_hdr** %19, align 8
  %245 = getelementptr inbounds %struct.sfe_ipv4_udp_hdr, %struct.sfe_ipv4_udp_hdr* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  store i32 %246, i32* %24, align 4
  br label %304

247:                                              ; preds = %200
  %248 = load i32, i32* %27, align 4
  %249 = add nsw i32 %248, 8
  store i32 %249, i32* %27, align 4
  %250 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %251 = load i32, i32* %27, align 4
  %252 = call i32 @pskb_may_pull(%struct.sk_buff* %250, i32 %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %273, label %254

254:                                              ; preds = %247
  %255 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %256 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %255, i32 0, i32 0
  %257 = call i32 @spin_lock_bh(i32* %256)
  %258 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %259 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %258, i32 0, i32 2
  %260 = load i32*, i32** %259, align 8
  %261 = load i64, i64* @SFE_IPV4_EXCEPTION_EVENT_ICMP_IPV4_TCP_HEADER_INCOMPLETE, align 8
  %262 = getelementptr inbounds i32, i32* %260, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %262, align 4
  %265 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %266 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %266, align 4
  %269 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %270 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %269, i32 0, i32 0
  %271 = call i32 @spin_unlock_bh(i32* %270)
  %272 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %371

273:                                              ; preds = %247
  %274 = load i32*, i32** %18, align 8
  %275 = bitcast i32* %274 to %struct.sfe_ipv4_tcp_hdr*
  store %struct.sfe_ipv4_tcp_hdr* %275, %struct.sfe_ipv4_tcp_hdr** %20, align 8
  %276 = load %struct.sfe_ipv4_tcp_hdr*, %struct.sfe_ipv4_tcp_hdr** %20, align 8
  %277 = getelementptr inbounds %struct.sfe_ipv4_tcp_hdr, %struct.sfe_ipv4_tcp_hdr* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  store i32 %278, i32* %23, align 4
  %279 = load %struct.sfe_ipv4_tcp_hdr*, %struct.sfe_ipv4_tcp_hdr** %20, align 8
  %280 = getelementptr inbounds %struct.sfe_ipv4_tcp_hdr, %struct.sfe_ipv4_tcp_hdr* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  store i32 %281, i32* %24, align 4
  br label %304

282:                                              ; preds = %200
  %283 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %284 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %283, i32 0, i32 0
  %285 = call i32 @spin_lock_bh(i32* %284)
  %286 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %287 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %286, i32 0, i32 2
  %288 = load i32*, i32** %287, align 8
  %289 = load i64, i64* @SFE_IPV4_EXCEPTION_EVENT_ICMP_IPV4_UNHANDLED_PROTOCOL, align 8
  %290 = getelementptr inbounds i32, i32* %288, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %290, align 4
  %293 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %294 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %294, align 4
  %297 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %298 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %297, i32 0, i32 0
  %299 = call i32 @spin_unlock_bh(i32* %298)
  %300 = load %struct.sfe_ipv4_ip_hdr*, %struct.sfe_ipv4_ip_hdr** %15, align 8
  %301 = getelementptr inbounds %struct.sfe_ipv4_ip_hdr, %struct.sfe_ipv4_ip_hdr* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 4
  %303 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %302)
  store i32 0, i32* %7, align 4
  br label %371

304:                                              ; preds = %273, %238
  %305 = load %struct.sfe_ipv4_ip_hdr*, %struct.sfe_ipv4_ip_hdr** %15, align 8
  %306 = getelementptr inbounds %struct.sfe_ipv4_ip_hdr, %struct.sfe_ipv4_ip_hdr* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 4
  store i32 %307, i32* %21, align 4
  %308 = load %struct.sfe_ipv4_ip_hdr*, %struct.sfe_ipv4_ip_hdr** %15, align 8
  %309 = getelementptr inbounds %struct.sfe_ipv4_ip_hdr, %struct.sfe_ipv4_ip_hdr* %308, i32 0, i32 3
  %310 = load i32, i32* %309, align 4
  store i32 %310, i32* %22, align 4
  %311 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %312 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %311, i32 0, i32 0
  %313 = call i32 @spin_lock_bh(i32* %312)
  %314 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %315 = load %struct.net_device*, %struct.net_device** %10, align 8
  %316 = load %struct.sfe_ipv4_ip_hdr*, %struct.sfe_ipv4_ip_hdr** %15, align 8
  %317 = getelementptr inbounds %struct.sfe_ipv4_ip_hdr, %struct.sfe_ipv4_ip_hdr* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %22, align 4
  %320 = load i32, i32* %24, align 4
  %321 = load i32, i32* %21, align 4
  %322 = load i32, i32* %23, align 4
  %323 = call %struct.sfe_ipv4_connection_match* @sfe_ipv4_find_sfe_ipv4_connection_match(%struct.sfe_ipv4* %314, %struct.net_device* %315, i32 %318, i32 %319, i32 %320, i32 %321, i32 %322)
  store %struct.sfe_ipv4_connection_match* %323, %struct.sfe_ipv4_connection_match** %25, align 8
  %324 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %25, align 8
  %325 = icmp ne %struct.sfe_ipv4_connection_match* %324, null
  %326 = xor i1 %325, true
  %327 = zext i1 %326 to i32
  %328 = call i64 @unlikely(i32 %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %346

330:                                              ; preds = %304
  %331 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %332 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %331, i32 0, i32 2
  %333 = load i32*, i32** %332, align 8
  %334 = load i64, i64* @SFE_IPV4_EXCEPTION_EVENT_ICMP_NO_CONNECTION, align 8
  %335 = getelementptr inbounds i32, i32* %333, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %335, align 4
  %338 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %339 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %339, align 4
  %342 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %343 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %342, i32 0, i32 0
  %344 = call i32 @spin_unlock_bh(i32* %343)
  %345 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %371

346:                                              ; preds = %304
  %347 = load %struct.sfe_ipv4_connection_match*, %struct.sfe_ipv4_connection_match** %25, align 8
  %348 = getelementptr inbounds %struct.sfe_ipv4_connection_match, %struct.sfe_ipv4_connection_match* %347, i32 0, i32 0
  %349 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %348, align 8
  store %struct.sfe_ipv4_connection* %349, %struct.sfe_ipv4_connection** %26, align 8
  %350 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %351 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %26, align 8
  %352 = call i32 @sfe_ipv4_remove_sfe_ipv4_connection(%struct.sfe_ipv4* %350, %struct.sfe_ipv4_connection* %351)
  %353 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %354 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %353, i32 0, i32 2
  %355 = load i32*, i32** %354, align 8
  %356 = load i64, i64* @SFE_IPV4_EXCEPTION_EVENT_ICMP_FLUSHED_CONNECTION, align 8
  %357 = getelementptr inbounds i32, i32* %355, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %357, align 4
  %360 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %361 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %361, align 4
  %364 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %365 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %364, i32 0, i32 0
  %366 = call i32 @spin_unlock_bh(i32* %365)
  %367 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %368 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %26, align 8
  %369 = load i32, i32* @SFE_SYNC_REASON_FLUSH, align 4
  %370 = call i32 @sfe_ipv4_flush_sfe_ipv4_connection(%struct.sfe_ipv4* %367, %struct.sfe_ipv4_connection* %368, i32 %369)
  store i32 0, i32* %7, align 4
  br label %371

371:                                              ; preds = %346, %330, %282, %254, %219, %181, %142, %112, %77, %39
  %372 = load i32, i32* %7, align 4
  ret i32 %372
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @DEBUG_TRACE(i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sfe_ipv4_connection_match* @sfe_ipv4_find_sfe_ipv4_connection_match(%struct.sfe_ipv4*, %struct.net_device*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sfe_ipv4_remove_sfe_ipv4_connection(%struct.sfe_ipv4*, %struct.sfe_ipv4_connection*) #1

declare dso_local i32 @sfe_ipv4_flush_sfe_ipv4_connection(%struct.sfe_ipv4*, %struct.sfe_ipv4_connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
