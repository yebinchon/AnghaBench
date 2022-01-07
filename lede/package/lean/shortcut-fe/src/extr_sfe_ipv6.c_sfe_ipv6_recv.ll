; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_recv.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv6 = type { i32, i32, i32* }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.sfe_ipv6_ip_hdr = type { i32, i32, i32 }
%struct.sfe_ipv6_ext_hdr = type { i32, i32 }
%struct.sfe_ipv6_frag_hdr = type { i32 }

@__si6 = common dso_local global %struct.sfe_ipv6 zeroinitializer, align 8
@SFE_IPV6_EXCEPTION_EVENT_HEADER_INCOMPLETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"len: %u is too short\0A\00", align 1
@SFE_IPV6_EXCEPTION_EVENT_NON_V6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"IP version: %u\0A\00", align 1
@SFE_IPV6_EXCEPTION_EVENT_DATAGRAM_INCOMPLETE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"payload_len: %u, exceeds len: %u\0A\00", align 1
@SFE_IPV6_EXT_HDR_FRAG = common dso_local global i32 0, align 4
@SFE_IPV6_FRAG_OFFSET = common dso_local global i32 0, align 4
@SFE_IPV6_EXCEPTION_EVENT_NON_INITIAL_FRAGMENT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"non-initial fragment\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"extension header %d not completed\0A\00", align 1
@IPPROTO_UDP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i32 0, align 4
@SFE_IPV6_EXCEPTION_EVENT_UNHANDLED_PROTOCOL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"not UDP, TCP or ICMP: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sfe_ipv6_recv(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sfe_ipv6*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sfe_ipv6_ip_hdr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sfe_ipv6_ext_hdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sfe_ipv6_frag_hdr*, align 8
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.sfe_ipv6* @__si6, %struct.sfe_ipv6** %6, align 8
  store i32 12, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = zext i32 %21 to i64
  %23 = add i64 %22, 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @pskb_may_pull(%struct.sk_buff* %20, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %2
  %28 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %6, align 8
  %29 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %28, i32 0, i32 0
  %30 = call i32 @spin_lock_bh(i32* %29)
  %31 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %6, align 8
  %32 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @SFE_IPV6_EXCEPTION_EVENT_HEADER_INCOMPLETE, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %6, align 8
  %39 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %6, align 8
  %43 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock_bh(i32* %43)
  %45 = load i32, i32* %7, align 4
  %46 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %45)
  store i32 0, i32* %3, align 4
  br label %270

47:                                               ; preds = %2
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.sfe_ipv6_ip_hdr*
  store %struct.sfe_ipv6_ip_hdr* %51, %struct.sfe_ipv6_ip_hdr** %11, align 8
  %52 = load %struct.sfe_ipv6_ip_hdr*, %struct.sfe_ipv6_ip_hdr** %11, align 8
  %53 = getelementptr inbounds %struct.sfe_ipv6_ip_hdr, %struct.sfe_ipv6_ip_hdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 6
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %47
  %60 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %6, align 8
  %61 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %60, i32 0, i32 0
  %62 = call i32 @spin_lock_bh(i32* %61)
  %63 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %6, align 8
  %64 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @SFE_IPV6_EXCEPTION_EVENT_NON_V6, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %6, align 8
  %71 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %6, align 8
  %75 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock_bh(i32* %75)
  %77 = load %struct.sfe_ipv6_ip_hdr*, %struct.sfe_ipv6_ip_hdr** %11, align 8
  %78 = getelementptr inbounds %struct.sfe_ipv6_ip_hdr, %struct.sfe_ipv6_ip_hdr* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  store i32 0, i32* %3, align 4
  br label %270

81:                                               ; preds = %47
  %82 = load %struct.sfe_ipv6_ip_hdr*, %struct.sfe_ipv6_ip_hdr** %11, align 8
  %83 = getelementptr inbounds %struct.sfe_ipv6_ip_hdr, %struct.sfe_ipv6_ip_hdr* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ntohs(i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %9, align 4
  %89 = sub i32 %87, %88
  %90 = icmp ugt i32 %86, %89
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %117

94:                                               ; preds = %81
  %95 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %6, align 8
  %96 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %95, i32 0, i32 0
  %97 = call i32 @spin_lock_bh(i32* %96)
  %98 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %6, align 8
  %99 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @SFE_IPV6_EXCEPTION_EVENT_DATAGRAM_INCOMPLETE, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  %105 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %6, align 8
  %106 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  %109 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %6, align 8
  %110 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %109, i32 0, i32 0
  %111 = call i32 @spin_unlock_bh(i32* %110)
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %7, align 4
  %114 = zext i32 %113 to i64
  %115 = sub i64 %114, 12
  %116 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %112, i64 %115)
  store i32 0, i32* %3, align 4
  br label %270

117:                                              ; preds = %81
  %118 = load %struct.sfe_ipv6_ip_hdr*, %struct.sfe_ipv6_ip_hdr** %11, align 8
  %119 = getelementptr inbounds %struct.sfe_ipv6_ip_hdr, %struct.sfe_ipv6_ip_hdr* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %12, align 4
  br label %121

121:                                              ; preds = %208, %117
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @sfe_ipv6_is_ext_hdr(i32 %122)
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %212

126:                                              ; preds = %121
  %127 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %128 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = zext i32 %130 to i64
  %132 = add nsw i64 %129, %131
  %133 = inttoptr i64 %132 to %struct.sfe_ipv6_ext_hdr*
  store %struct.sfe_ipv6_ext_hdr* %133, %struct.sfe_ipv6_ext_hdr** %13, align 8
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* @SFE_IPV6_EXT_HDR_FRAG, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %168

137:                                              ; preds = %126
  %138 = load %struct.sfe_ipv6_ext_hdr*, %struct.sfe_ipv6_ext_hdr** %13, align 8
  %139 = bitcast %struct.sfe_ipv6_ext_hdr* %138 to %struct.sfe_ipv6_frag_hdr*
  store %struct.sfe_ipv6_frag_hdr* %139, %struct.sfe_ipv6_frag_hdr** %15, align 8
  %140 = load %struct.sfe_ipv6_frag_hdr*, %struct.sfe_ipv6_frag_hdr** %15, align 8
  %141 = getelementptr inbounds %struct.sfe_ipv6_frag_hdr, %struct.sfe_ipv6_frag_hdr* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ntohs(i32 %142)
  store i32 %143, i32* %16, align 4
  %144 = load i32, i32* %16, align 4
  %145 = load i32, i32* @SFE_IPV6_FRAG_OFFSET, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %167

148:                                              ; preds = %137
  %149 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %6, align 8
  %150 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %149, i32 0, i32 0
  %151 = call i32 @spin_lock_bh(i32* %150)
  %152 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %6, align 8
  %153 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* @SFE_IPV6_EXCEPTION_EVENT_NON_INITIAL_FRAGMENT, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  %159 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %6, align 8
  %160 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 4
  %163 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %6, align 8
  %164 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %163, i32 0, i32 0
  %165 = call i32 @spin_unlock_bh(i32* %164)
  %166 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %270

167:                                              ; preds = %137
  br label %168

168:                                              ; preds = %167, %126
  %169 = load %struct.sfe_ipv6_ext_hdr*, %struct.sfe_ipv6_ext_hdr** %13, align 8
  %170 = getelementptr inbounds %struct.sfe_ipv6_ext_hdr, %struct.sfe_ipv6_ext_hdr* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %14, align 4
  %172 = load i32, i32* %14, align 4
  %173 = shl i32 %172, 3
  store i32 %173, i32* %14, align 4
  %174 = load i32, i32* %14, align 4
  %175 = zext i32 %174 to i64
  %176 = add i64 %175, 8
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %14, align 4
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* %9, align 4
  %180 = add i32 %179, %178
  store i32 %180, i32* %9, align 4
  %181 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %182 = load i32, i32* %9, align 4
  %183 = zext i32 %182 to i64
  %184 = add i64 %183, 8
  %185 = trunc i64 %184 to i32
  %186 = call i32 @pskb_may_pull(%struct.sk_buff* %181, i32 %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %208, label %188

188:                                              ; preds = %168
  %189 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %6, align 8
  %190 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %189, i32 0, i32 0
  %191 = call i32 @spin_lock_bh(i32* %190)
  %192 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %6, align 8
  %193 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = load i64, i64* @SFE_IPV6_EXCEPTION_EVENT_HEADER_INCOMPLETE, align 8
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 4
  %199 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %6, align 8
  %200 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %200, align 4
  %203 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %6, align 8
  %204 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %203, i32 0, i32 0
  %205 = call i32 @spin_unlock_bh(i32* %204)
  %206 = load i32, i32* %12, align 4
  %207 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %206)
  store i32 0, i32* %3, align 4
  br label %270

208:                                              ; preds = %168
  store i32 1, i32* %10, align 4
  %209 = load %struct.sfe_ipv6_ext_hdr*, %struct.sfe_ipv6_ext_hdr** %13, align 8
  %210 = getelementptr inbounds %struct.sfe_ipv6_ext_hdr, %struct.sfe_ipv6_ext_hdr* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %12, align 4
  br label %121

212:                                              ; preds = %121
  %213 = load i32, i32* @IPPROTO_UDP, align 4
  %214 = load i32, i32* %12, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %225

216:                                              ; preds = %212
  %217 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %6, align 8
  %218 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %219 = load %struct.net_device*, %struct.net_device** %4, align 8
  %220 = load i32, i32* %7, align 4
  %221 = load %struct.sfe_ipv6_ip_hdr*, %struct.sfe_ipv6_ip_hdr** %11, align 8
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* %10, align 4
  %224 = call i32 @sfe_ipv6_recv_udp(%struct.sfe_ipv6* %217, %struct.sk_buff* %218, %struct.net_device* %219, i32 %220, %struct.sfe_ipv6_ip_hdr* %221, i32 %222, i32 %223)
  store i32 %224, i32* %3, align 4
  br label %270

225:                                              ; preds = %212
  %226 = load i32, i32* @IPPROTO_TCP, align 4
  %227 = load i32, i32* %12, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %238

229:                                              ; preds = %225
  %230 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %6, align 8
  %231 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %232 = load %struct.net_device*, %struct.net_device** %4, align 8
  %233 = load i32, i32* %7, align 4
  %234 = load %struct.sfe_ipv6_ip_hdr*, %struct.sfe_ipv6_ip_hdr** %11, align 8
  %235 = load i32, i32* %9, align 4
  %236 = load i32, i32* %10, align 4
  %237 = call i32 @sfe_ipv6_recv_tcp(%struct.sfe_ipv6* %230, %struct.sk_buff* %231, %struct.net_device* %232, i32 %233, %struct.sfe_ipv6_ip_hdr* %234, i32 %235, i32 %236)
  store i32 %237, i32* %3, align 4
  br label %270

238:                                              ; preds = %225
  %239 = load i32, i32* @IPPROTO_ICMPV6, align 4
  %240 = load i32, i32* %12, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %250

242:                                              ; preds = %238
  %243 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %6, align 8
  %244 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %245 = load %struct.net_device*, %struct.net_device** %4, align 8
  %246 = load i32, i32* %7, align 4
  %247 = load %struct.sfe_ipv6_ip_hdr*, %struct.sfe_ipv6_ip_hdr** %11, align 8
  %248 = load i32, i32* %9, align 4
  %249 = call i32 @sfe_ipv6_recv_icmp(%struct.sfe_ipv6* %243, %struct.sk_buff* %244, %struct.net_device* %245, i32 %246, %struct.sfe_ipv6_ip_hdr* %247, i32 %248)
  store i32 %249, i32* %3, align 4
  br label %270

250:                                              ; preds = %238
  %251 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %6, align 8
  %252 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %251, i32 0, i32 0
  %253 = call i32 @spin_lock_bh(i32* %252)
  %254 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %6, align 8
  %255 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %254, i32 0, i32 2
  %256 = load i32*, i32** %255, align 8
  %257 = load i64, i64* @SFE_IPV6_EXCEPTION_EVENT_UNHANDLED_PROTOCOL, align 8
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %258, align 4
  %261 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %6, align 8
  %262 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %262, align 4
  %265 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %6, align 8
  %266 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %265, i32 0, i32 0
  %267 = call i32 @spin_unlock_bh(i32* %266)
  %268 = load i32, i32* %12, align 4
  %269 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %268)
  store i32 0, i32* %3, align 4
  br label %270

270:                                              ; preds = %250, %242, %229, %216, %188, %148, %94, %59, %27
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @DEBUG_TRACE(i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @sfe_ipv6_is_ext_hdr(i32) #1

declare dso_local i32 @sfe_ipv6_recv_udp(%struct.sfe_ipv6*, %struct.sk_buff*, %struct.net_device*, i32, %struct.sfe_ipv6_ip_hdr*, i32, i32) #1

declare dso_local i32 @sfe_ipv6_recv_tcp(%struct.sfe_ipv6*, %struct.sk_buff*, %struct.net_device*, i32, %struct.sfe_ipv6_ip_hdr*, i32, i32) #1

declare dso_local i32 @sfe_ipv6_recv_icmp(%struct.sfe_ipv6*, %struct.sk_buff*, %struct.net_device*, i32, %struct.sfe_ipv6_ip_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
