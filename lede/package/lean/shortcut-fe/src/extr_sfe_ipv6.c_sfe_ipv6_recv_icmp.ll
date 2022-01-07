; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_recv_icmp.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_recv_icmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv6 = type { i32, i32, i32* }
%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.sfe_ipv6_ip_hdr = type { i32, i32, %struct.sfe_ipv6_addr, %struct.sfe_ipv6_addr }
%struct.sfe_ipv6_addr = type { i32 }
%struct.icmp6hdr = type { i64 }
%struct.sfe_ipv6_udp_hdr = type { i32, i32 }
%struct.sfe_ipv6_tcp_hdr = type { i32, i32 }
%struct.sfe_ipv6_connection_match = type { %struct.sfe_ipv6_connection* }
%struct.sfe_ipv6_connection = type { i32 }
%struct.sfe_ipv6_ext_hdr = type { i32, i32 }
%struct.sfe_ipv6_frag_hdr = type { i32 }

@SFE_IPV6_EXCEPTION_EVENT_ICMP_HEADER_INCOMPLETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"packet too short for ICMP header\0A\00", align 1
@ICMPV6_DEST_UNREACH = common dso_local global i64 0, align 8
@ICMPV6_TIME_EXCEED = common dso_local global i64 0, align 8
@SFE_IPV6_EXCEPTION_EVENT_ICMP_UNHANDLED_TYPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"unhandled ICMP type: 0x%x\0A\00", align 1
@SFE_IPV6_EXCEPTION_EVENT_ICMP_IPV6_HEADER_INCOMPLETE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Embedded IP header not complete\0A\00", align 1
@SFE_IPV6_EXCEPTION_EVENT_ICMP_IPV6_NON_V6 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"IP version: %u\0A\00", align 1
@SFE_IPV6_EXT_HDR_FRAG = common dso_local global i32 0, align 4
@SFE_IPV6_FRAG_OFFSET = common dso_local global i32 0, align 4
@SFE_IPV6_EXCEPTION_EVENT_NON_INITIAL_FRAGMENT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"non-initial fragment\0A\00", align 1
@SFE_IPV6_EXCEPTION_EVENT_HEADER_INCOMPLETE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"extension header %d not completed\0A\00", align 1
@SFE_IPV6_EXCEPTION_EVENT_ICMP_IPV6_UNHANDLED_PROTOCOL = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"Unhandled embedded IP protocol: %u\0A\00", align 1
@SFE_IPV6_EXCEPTION_EVENT_ICMP_NO_CONNECTION = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"no connection found\0A\00", align 1
@SFE_IPV6_EXCEPTION_EVENT_ICMP_FLUSHED_CONNECTION = common dso_local global i64 0, align 8
@SFE_SYNC_REASON_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfe_ipv6*, %struct.sk_buff*, %struct.net_device*, i32, %struct.sfe_ipv6_ip_hdr*, i32)* @sfe_ipv6_recv_icmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfe_ipv6_recv_icmp(%struct.sfe_ipv6* %0, %struct.sk_buff* %1, %struct.net_device* %2, i32 %3, %struct.sfe_ipv6_ip_hdr* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sfe_ipv6*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sfe_ipv6_ip_hdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.icmp6hdr*, align 8
  %15 = alloca %struct.sfe_ipv6_ip_hdr*, align 8
  %16 = alloca %struct.sfe_ipv6_udp_hdr*, align 8
  %17 = alloca %struct.sfe_ipv6_tcp_hdr*, align 8
  %18 = alloca %struct.sfe_ipv6_addr*, align 8
  %19 = alloca %struct.sfe_ipv6_addr*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.sfe_ipv6_connection_match*, align 8
  %23 = alloca %struct.sfe_ipv6_connection*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.sfe_ipv6_ext_hdr*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.sfe_ipv6_frag_hdr*, align 8
  %28 = alloca i32, align 4
  store %struct.sfe_ipv6* %0, %struct.sfe_ipv6** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store %struct.net_device* %2, %struct.net_device** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.sfe_ipv6_ip_hdr* %4, %struct.sfe_ipv6_ip_hdr** %12, align 8
  store i32 %5, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %11, align 4
  %31 = sub i32 %30, %29
  store i32 %31, i32* %11, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %33 = load i32, i32* %13, align 4
  %34 = zext i32 %33 to i64
  %35 = add i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @pskb_may_pull(%struct.sk_buff* %32, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %6
  %40 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %41 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %40, i32 0, i32 0
  %42 = call i32 @spin_lock_bh(i32* %41)
  %43 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %44 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @SFE_IPV6_EXCEPTION_EVENT_ICMP_HEADER_INCOMPLETE, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %51 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %55 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock_bh(i32* %55)
  %57 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %389

58:                                               ; preds = %6
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = zext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = inttoptr i64 %64 to %struct.icmp6hdr*
  store %struct.icmp6hdr* %65, %struct.icmp6hdr** %14, align 8
  %66 = load %struct.icmp6hdr*, %struct.icmp6hdr** %14, align 8
  %67 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ICMPV6_DEST_UNREACH, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %99

71:                                               ; preds = %58
  %72 = load %struct.icmp6hdr*, %struct.icmp6hdr** %14, align 8
  %73 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ICMPV6_TIME_EXCEED, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %99

77:                                               ; preds = %71
  %78 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %79 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %78, i32 0, i32 0
  %80 = call i32 @spin_lock_bh(i32* %79)
  %81 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %82 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @SFE_IPV6_EXCEPTION_EVENT_ICMP_UNHANDLED_TYPE, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %89 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  %92 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %93 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %92, i32 0, i32 0
  %94 = call i32 @spin_unlock_bh(i32* %93)
  %95 = load %struct.icmp6hdr*, %struct.icmp6hdr** %14, align 8
  %96 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %97)
  store i32 0, i32* %7, align 4
  br label %389

99:                                               ; preds = %71, %58
  %100 = load i32, i32* %11, align 4
  %101 = zext i32 %100 to i64
  %102 = sub i64 %101, 8
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %13, align 4
  %105 = zext i32 %104 to i64
  %106 = add i64 %105, 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %13, align 4
  %108 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %109 = load i32, i32* %13, align 4
  %110 = zext i32 %109 to i64
  %111 = add i64 %110, 16
  %112 = add i64 %111, 8
  %113 = trunc i64 %112 to i32
  %114 = call i32 @pskb_may_pull(%struct.sk_buff* %108, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %135, label %116

116:                                              ; preds = %99
  %117 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %118 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %117, i32 0, i32 0
  %119 = call i32 @spin_lock_bh(i32* %118)
  %120 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %121 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* @SFE_IPV6_EXCEPTION_EVENT_ICMP_IPV6_HEADER_INCOMPLETE, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  %127 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %128 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  %131 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %132 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %131, i32 0, i32 0
  %133 = call i32 @spin_unlock_bh(i32* %132)
  %134 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %389

135:                                              ; preds = %99
  %136 = load %struct.icmp6hdr*, %struct.icmp6hdr** %14, align 8
  %137 = getelementptr inbounds %struct.icmp6hdr, %struct.icmp6hdr* %136, i64 1
  %138 = bitcast %struct.icmp6hdr* %137 to %struct.sfe_ipv6_ip_hdr*
  store %struct.sfe_ipv6_ip_hdr* %138, %struct.sfe_ipv6_ip_hdr** %15, align 8
  %139 = load %struct.sfe_ipv6_ip_hdr*, %struct.sfe_ipv6_ip_hdr** %15, align 8
  %140 = getelementptr inbounds %struct.sfe_ipv6_ip_hdr, %struct.sfe_ipv6_ip_hdr* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 6
  %143 = zext i1 %142 to i32
  %144 = call i64 @unlikely(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %168

146:                                              ; preds = %135
  %147 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %148 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %147, i32 0, i32 0
  %149 = call i32 @spin_lock_bh(i32* %148)
  %150 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %151 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* @SFE_IPV6_EXCEPTION_EVENT_ICMP_IPV6_NON_V6, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  %157 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %158 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 4
  %161 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %162 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %161, i32 0, i32 0
  %163 = call i32 @spin_unlock_bh(i32* %162)
  %164 = load %struct.sfe_ipv6_ip_hdr*, %struct.sfe_ipv6_ip_hdr** %15, align 8
  %165 = getelementptr inbounds %struct.sfe_ipv6_ip_hdr, %struct.sfe_ipv6_ip_hdr* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %166)
  store i32 0, i32* %7, align 4
  br label %389

168:                                              ; preds = %135
  %169 = load i32, i32* %11, align 4
  %170 = zext i32 %169 to i64
  %171 = sub i64 %170, 16
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %11, align 4
  %173 = load i32, i32* %13, align 4
  %174 = zext i32 %173 to i64
  %175 = add i64 %174, 16
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %13, align 4
  %177 = load %struct.sfe_ipv6_ip_hdr*, %struct.sfe_ipv6_ip_hdr** %15, align 8
  %178 = getelementptr inbounds %struct.sfe_ipv6_ip_hdr, %struct.sfe_ipv6_ip_hdr* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %24, align 4
  br label %180

180:                                              ; preds = %270, %168
  %181 = load i32, i32* %24, align 4
  %182 = call i32 @sfe_ipv6_is_ext_hdr(i32 %181)
  %183 = call i64 @unlikely(i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %274

185:                                              ; preds = %180
  %186 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %187 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i32, i32* %13, align 4
  %190 = zext i32 %189 to i64
  %191 = add nsw i64 %188, %190
  %192 = inttoptr i64 %191 to %struct.sfe_ipv6_ext_hdr*
  store %struct.sfe_ipv6_ext_hdr* %192, %struct.sfe_ipv6_ext_hdr** %25, align 8
  %193 = load i32, i32* %24, align 4
  %194 = load i32, i32* @SFE_IPV6_EXT_HDR_FRAG, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %227

196:                                              ; preds = %185
  %197 = load %struct.sfe_ipv6_ext_hdr*, %struct.sfe_ipv6_ext_hdr** %25, align 8
  %198 = bitcast %struct.sfe_ipv6_ext_hdr* %197 to %struct.sfe_ipv6_frag_hdr*
  store %struct.sfe_ipv6_frag_hdr* %198, %struct.sfe_ipv6_frag_hdr** %27, align 8
  %199 = load %struct.sfe_ipv6_frag_hdr*, %struct.sfe_ipv6_frag_hdr** %27, align 8
  %200 = getelementptr inbounds %struct.sfe_ipv6_frag_hdr, %struct.sfe_ipv6_frag_hdr* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @ntohs(i32 %201)
  store i32 %202, i32* %28, align 4
  %203 = load i32, i32* %28, align 4
  %204 = load i32, i32* @SFE_IPV6_FRAG_OFFSET, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %226

207:                                              ; preds = %196
  %208 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %209 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %208, i32 0, i32 0
  %210 = call i32 @spin_lock_bh(i32* %209)
  %211 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %212 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = load i64, i64* @SFE_IPV6_EXCEPTION_EVENT_NON_INITIAL_FRAGMENT, align 8
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %215, align 4
  %218 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %219 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %219, align 4
  %222 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %223 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %222, i32 0, i32 0
  %224 = call i32 @spin_unlock_bh(i32* %223)
  %225 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %389

226:                                              ; preds = %196
  br label %227

227:                                              ; preds = %226, %185
  %228 = load %struct.sfe_ipv6_ext_hdr*, %struct.sfe_ipv6_ext_hdr** %25, align 8
  %229 = getelementptr inbounds %struct.sfe_ipv6_ext_hdr, %struct.sfe_ipv6_ext_hdr* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  store i32 %230, i32* %26, align 4
  %231 = load i32, i32* %26, align 4
  %232 = shl i32 %231, 3
  store i32 %232, i32* %26, align 4
  %233 = load i32, i32* %26, align 4
  %234 = zext i32 %233 to i64
  %235 = add i64 %234, 8
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %26, align 4
  %237 = load i32, i32* %26, align 4
  %238 = load i32, i32* %11, align 4
  %239 = sub i32 %238, %237
  store i32 %239, i32* %11, align 4
  %240 = load i32, i32* %26, align 4
  %241 = load i32, i32* %13, align 4
  %242 = add i32 %241, %240
  store i32 %242, i32* %13, align 4
  %243 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %244 = load i32, i32* %13, align 4
  %245 = zext i32 %244 to i64
  %246 = add i64 %245, 8
  %247 = trunc i64 %246 to i32
  %248 = call i32 @pskb_may_pull(%struct.sk_buff* %243, i32 %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %270, label %250

250:                                              ; preds = %227
  %251 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %252 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %251, i32 0, i32 0
  %253 = call i32 @spin_lock_bh(i32* %252)
  %254 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %255 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %254, i32 0, i32 2
  %256 = load i32*, i32** %255, align 8
  %257 = load i64, i64* @SFE_IPV6_EXCEPTION_EVENT_HEADER_INCOMPLETE, align 8
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %258, align 4
  %261 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %262 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %262, align 4
  %265 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %266 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %265, i32 0, i32 0
  %267 = call i32 @spin_unlock_bh(i32* %266)
  %268 = load i32, i32* %24, align 4
  %269 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %268)
  store i32 0, i32* %7, align 4
  br label %389

270:                                              ; preds = %227
  %271 = load %struct.sfe_ipv6_ext_hdr*, %struct.sfe_ipv6_ext_hdr** %25, align 8
  %272 = getelementptr inbounds %struct.sfe_ipv6_ext_hdr, %struct.sfe_ipv6_ext_hdr* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  store i32 %273, i32* %24, align 4
  br label %180

274:                                              ; preds = %180
  %275 = load i32, i32* %24, align 4
  switch i32 %275, label %304 [
    i32 128, label %276
    i32 129, label %290
  ]

276:                                              ; preds = %274
  %277 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %278 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i32, i32* %13, align 4
  %281 = zext i32 %280 to i64
  %282 = add nsw i64 %279, %281
  %283 = inttoptr i64 %282 to %struct.sfe_ipv6_udp_hdr*
  store %struct.sfe_ipv6_udp_hdr* %283, %struct.sfe_ipv6_udp_hdr** %16, align 8
  %284 = load %struct.sfe_ipv6_udp_hdr*, %struct.sfe_ipv6_udp_hdr** %16, align 8
  %285 = getelementptr inbounds %struct.sfe_ipv6_udp_hdr, %struct.sfe_ipv6_udp_hdr* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  store i32 %286, i32* %20, align 4
  %287 = load %struct.sfe_ipv6_udp_hdr*, %struct.sfe_ipv6_udp_hdr** %16, align 8
  %288 = getelementptr inbounds %struct.sfe_ipv6_udp_hdr, %struct.sfe_ipv6_udp_hdr* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  store i32 %289, i32* %21, align 4
  br label %324

290:                                              ; preds = %274
  %291 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %292 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i32, i32* %13, align 4
  %295 = zext i32 %294 to i64
  %296 = add nsw i64 %293, %295
  %297 = inttoptr i64 %296 to %struct.sfe_ipv6_tcp_hdr*
  store %struct.sfe_ipv6_tcp_hdr* %297, %struct.sfe_ipv6_tcp_hdr** %17, align 8
  %298 = load %struct.sfe_ipv6_tcp_hdr*, %struct.sfe_ipv6_tcp_hdr** %17, align 8
  %299 = getelementptr inbounds %struct.sfe_ipv6_tcp_hdr, %struct.sfe_ipv6_tcp_hdr* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  store i32 %300, i32* %20, align 4
  %301 = load %struct.sfe_ipv6_tcp_hdr*, %struct.sfe_ipv6_tcp_hdr** %17, align 8
  %302 = getelementptr inbounds %struct.sfe_ipv6_tcp_hdr, %struct.sfe_ipv6_tcp_hdr* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  store i32 %303, i32* %21, align 4
  br label %324

304:                                              ; preds = %274
  %305 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %306 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %305, i32 0, i32 0
  %307 = call i32 @spin_lock_bh(i32* %306)
  %308 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %309 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %308, i32 0, i32 2
  %310 = load i32*, i32** %309, align 8
  %311 = load i64, i64* @SFE_IPV6_EXCEPTION_EVENT_ICMP_IPV6_UNHANDLED_PROTOCOL, align 8
  %312 = getelementptr inbounds i32, i32* %310, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %312, align 4
  %315 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %316 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %316, align 4
  %319 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %320 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %319, i32 0, i32 0
  %321 = call i32 @spin_unlock_bh(i32* %320)
  %322 = load i32, i32* %24, align 4
  %323 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %322)
  store i32 0, i32* %7, align 4
  br label %389

324:                                              ; preds = %290, %276
  %325 = load %struct.sfe_ipv6_ip_hdr*, %struct.sfe_ipv6_ip_hdr** %15, align 8
  %326 = getelementptr inbounds %struct.sfe_ipv6_ip_hdr, %struct.sfe_ipv6_ip_hdr* %325, i32 0, i32 3
  store %struct.sfe_ipv6_addr* %326, %struct.sfe_ipv6_addr** %18, align 8
  %327 = load %struct.sfe_ipv6_ip_hdr*, %struct.sfe_ipv6_ip_hdr** %15, align 8
  %328 = getelementptr inbounds %struct.sfe_ipv6_ip_hdr, %struct.sfe_ipv6_ip_hdr* %327, i32 0, i32 2
  store %struct.sfe_ipv6_addr* %328, %struct.sfe_ipv6_addr** %19, align 8
  %329 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %330 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %329, i32 0, i32 0
  %331 = call i32 @spin_lock_bh(i32* %330)
  %332 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %333 = load %struct.net_device*, %struct.net_device** %10, align 8
  %334 = load %struct.sfe_ipv6_ip_hdr*, %struct.sfe_ipv6_ip_hdr** %15, align 8
  %335 = getelementptr inbounds %struct.sfe_ipv6_ip_hdr, %struct.sfe_ipv6_ip_hdr* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.sfe_ipv6_addr*, %struct.sfe_ipv6_addr** %19, align 8
  %338 = load i32, i32* %21, align 4
  %339 = load %struct.sfe_ipv6_addr*, %struct.sfe_ipv6_addr** %18, align 8
  %340 = load i32, i32* %20, align 4
  %341 = call %struct.sfe_ipv6_connection_match* @sfe_ipv6_find_connection_match(%struct.sfe_ipv6* %332, %struct.net_device* %333, i32 %336, %struct.sfe_ipv6_addr* %337, i32 %338, %struct.sfe_ipv6_addr* %339, i32 %340)
  store %struct.sfe_ipv6_connection_match* %341, %struct.sfe_ipv6_connection_match** %22, align 8
  %342 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %22, align 8
  %343 = icmp ne %struct.sfe_ipv6_connection_match* %342, null
  %344 = xor i1 %343, true
  %345 = zext i1 %344 to i32
  %346 = call i64 @unlikely(i32 %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %364

348:                                              ; preds = %324
  %349 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %350 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %349, i32 0, i32 2
  %351 = load i32*, i32** %350, align 8
  %352 = load i64, i64* @SFE_IPV6_EXCEPTION_EVENT_ICMP_NO_CONNECTION, align 8
  %353 = getelementptr inbounds i32, i32* %351, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %353, align 4
  %356 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %357 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %357, align 4
  %360 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %361 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %360, i32 0, i32 0
  %362 = call i32 @spin_unlock_bh(i32* %361)
  %363 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %389

364:                                              ; preds = %324
  %365 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %22, align 8
  %366 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %365, i32 0, i32 0
  %367 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %366, align 8
  store %struct.sfe_ipv6_connection* %367, %struct.sfe_ipv6_connection** %23, align 8
  %368 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %369 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %23, align 8
  %370 = call i32 @sfe_ipv6_remove_connection(%struct.sfe_ipv6* %368, %struct.sfe_ipv6_connection* %369)
  %371 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %372 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %371, i32 0, i32 2
  %373 = load i32*, i32** %372, align 8
  %374 = load i64, i64* @SFE_IPV6_EXCEPTION_EVENT_ICMP_FLUSHED_CONNECTION, align 8
  %375 = getelementptr inbounds i32, i32* %373, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %375, align 4
  %378 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %379 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %379, align 4
  %382 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %383 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %382, i32 0, i32 0
  %384 = call i32 @spin_unlock_bh(i32* %383)
  %385 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %386 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %23, align 8
  %387 = load i32, i32* @SFE_SYNC_REASON_FLUSH, align 4
  %388 = call i32 @sfe_ipv6_flush_connection(%struct.sfe_ipv6* %385, %struct.sfe_ipv6_connection* %386, i32 %387)
  store i32 0, i32* %7, align 4
  br label %389

389:                                              ; preds = %364, %348, %304, %250, %207, %146, %116, %77, %39
  %390 = load i32, i32* %7, align 4
  ret i32 %390
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @DEBUG_TRACE(i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sfe_ipv6_is_ext_hdr(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.sfe_ipv6_connection_match* @sfe_ipv6_find_connection_match(%struct.sfe_ipv6*, %struct.net_device*, i32, %struct.sfe_ipv6_addr*, i32, %struct.sfe_ipv6_addr*, i32) #1

declare dso_local i32 @sfe_ipv6_remove_connection(%struct.sfe_ipv6*, %struct.sfe_ipv6_connection*) #1

declare dso_local i32 @sfe_ipv6_flush_connection(%struct.sfe_ipv6*, %struct.sfe_ipv6_connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
