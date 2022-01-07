; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_recv.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv4 = type { i32, i32, i32* }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.sfe_ipv4_ip_hdr = type { i32, i32, i32, i32, i32 }

@__si = common dso_local global %struct.sfe_ipv4 zeroinitializer, align 8
@SFE_IPV4_EXCEPTION_EVENT_HEADER_INCOMPLETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"len: %u is too short\0A\00", align 1
@SFE_IPV4_EXCEPTION_EVENT_BAD_TOTAL_LENGTH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"tot_len: %u is too short\0A\00", align 1
@SFE_IPV4_EXCEPTION_EVENT_NON_V4 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"IP version: %u\0A\00", align 1
@SFE_IPV4_EXCEPTION_EVENT_DATAGRAM_INCOMPLETE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"tot_len: %u, exceeds len: %u\0A\00", align 1
@IP_OFFSET = common dso_local global i32 0, align 4
@SFE_IPV4_EXCEPTION_EVENT_NON_INITIAL_FRAGMENT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"non-initial fragment\0A\00", align 1
@IP_MF = common dso_local global i32 0, align 4
@SFE_IPV4_EXCEPTION_EVENT_IP_OPTIONS_INCOMPLETE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [45 x i8] c"len: %u is too short for header of size: %u\0A\00", align 1
@SFE_IPV4_EXCEPTION_EVENT_CSUM_ERROR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"checksum of ipv4 header is invalid\0A\00", align 1
@IPPROTO_UDP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_ICMP = common dso_local global i32 0, align 4
@SFE_IPV4_EXCEPTION_EVENT_UNHANDLED_PROTOCOL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"not UDP, TCP or ICMP: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sfe_ipv4_recv(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sfe_ipv4*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sfe_ipv4_ip_hdr*, align 8
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.sfe_ipv4* @__si, %struct.sfe_ipv4** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call i32 @pskb_may_pull(%struct.sk_buff* %18, i32 20)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %2
  %26 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %27 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %26, i32 0, i32 0
  %28 = call i32 @spin_lock_bh(i32* %27)
  %29 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %30 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @SFE_IPV4_EXCEPTION_EVENT_HEADER_INCOMPLETE, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %37 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %41 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock_bh(i32* %41)
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %43)
  store i32 0, i32* %3, align 4
  br label %308

45:                                               ; preds = %2
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.sfe_ipv4_ip_hdr*
  store %struct.sfe_ipv4_ip_hdr* %49, %struct.sfe_ipv4_ip_hdr** %13, align 8
  %50 = load %struct.sfe_ipv4_ip_hdr*, %struct.sfe_ipv4_ip_hdr** %13, align 8
  %51 = getelementptr inbounds %struct.sfe_ipv4_ip_hdr, %struct.sfe_ipv4_ip_hdr* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ntohs(i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %55, 20
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %45
  %61 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %62 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %61, i32 0, i32 0
  %63 = call i32 @spin_lock_bh(i32* %62)
  %64 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %65 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @SFE_IPV4_EXCEPTION_EVENT_BAD_TOTAL_LENGTH, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %72 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %76 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %75, i32 0, i32 0
  %77 = call i32 @spin_unlock_bh(i32* %76)
  %78 = load i32, i32* %8, align 4
  %79 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  store i32 0, i32* %3, align 4
  br label %308

80:                                               ; preds = %45
  %81 = load %struct.sfe_ipv4_ip_hdr*, %struct.sfe_ipv4_ip_hdr** %13, align 8
  %82 = getelementptr inbounds %struct.sfe_ipv4_ip_hdr, %struct.sfe_ipv4_ip_hdr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 4
  %85 = zext i1 %84 to i32
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %110

88:                                               ; preds = %80
  %89 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %90 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %89, i32 0, i32 0
  %91 = call i32 @spin_lock_bh(i32* %90)
  %92 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %93 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @SFE_IPV4_EXCEPTION_EVENT_NON_V4, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %100 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %104 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %103, i32 0, i32 0
  %105 = call i32 @spin_unlock_bh(i32* %104)
  %106 = load %struct.sfe_ipv4_ip_hdr*, %struct.sfe_ipv4_ip_hdr** %13, align 8
  %107 = getelementptr inbounds %struct.sfe_ipv4_ip_hdr, %struct.sfe_ipv4_ip_hdr* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  store i32 0, i32* %3, align 4
  br label %308

110:                                              ; preds = %80
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ugt i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %138

117:                                              ; preds = %110
  %118 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %119 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %118, i32 0, i32 0
  %120 = call i32 @spin_lock_bh(i32* %119)
  %121 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %122 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @SFE_IPV4_EXCEPTION_EVENT_DATAGRAM_INCOMPLETE, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  %128 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %129 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  %132 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %133 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %132, i32 0, i32 0
  %134 = call i32 @spin_unlock_bh(i32* %133)
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %7, align 4
  %137 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %135, i32 %136)
  store i32 0, i32* %3, align 4
  br label %308

138:                                              ; preds = %110
  %139 = load %struct.sfe_ipv4_ip_hdr*, %struct.sfe_ipv4_ip_hdr** %13, align 8
  %140 = getelementptr inbounds %struct.sfe_ipv4_ip_hdr, %struct.sfe_ipv4_ip_hdr* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @ntohs(i32 %141)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @IP_OFFSET, align 4
  %145 = and i32 %143, %144
  %146 = call i64 @unlikely(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %167

148:                                              ; preds = %138
  %149 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %150 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %149, i32 0, i32 0
  %151 = call i32 @spin_lock_bh(i32* %150)
  %152 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %153 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* @SFE_IPV4_EXCEPTION_EVENT_NON_INITIAL_FRAGMENT, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  %159 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %160 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 4
  %163 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %164 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %163, i32 0, i32 0
  %165 = call i32 @spin_unlock_bh(i32* %164)
  %166 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %308

167:                                              ; preds = %138
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* @IP_MF, align 4
  %170 = and i32 %168, %169
  %171 = call i64 @unlikely(i32 %170)
  %172 = icmp ne i64 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i32 1, i32 0
  store i32 %174, i32* %11, align 4
  %175 = load %struct.sfe_ipv4_ip_hdr*, %struct.sfe_ipv4_ip_hdr** %13, align 8
  %176 = getelementptr inbounds %struct.sfe_ipv4_ip_hdr, %struct.sfe_ipv4_ip_hdr* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = shl i32 %177, 2
  store i32 %178, i32* %10, align 4
  %179 = load i32, i32* %10, align 4
  %180 = zext i32 %179 to i64
  %181 = icmp ne i64 %180, 20
  %182 = zext i1 %181 to i32
  %183 = call i64 @unlikely(i32 %182)
  %184 = icmp ne i64 %183, 0
  %185 = zext i1 %184 to i64
  %186 = select i1 %184, i32 1, i32 0
  store i32 %186, i32* %12, align 4
  %187 = load i32, i32* %12, align 4
  %188 = call i64 @unlikely(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %219

190:                                              ; preds = %167
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* %10, align 4
  %193 = icmp ult i32 %191, %192
  %194 = zext i1 %193 to i32
  %195 = call i64 @unlikely(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %218

197:                                              ; preds = %190
  %198 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %199 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %198, i32 0, i32 0
  %200 = call i32 @spin_lock_bh(i32* %199)
  %201 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %202 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = load i64, i64* @SFE_IPV4_EXCEPTION_EVENT_IP_OPTIONS_INCOMPLETE, align 8
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %205, align 4
  %208 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %209 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 4
  %212 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %213 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %212, i32 0, i32 0
  %214 = call i32 @spin_unlock_bh(i32* %213)
  %215 = load i32, i32* %7, align 4
  %216 = load i32, i32* %10, align 4
  %217 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %215, i32 %216)
  store i32 0, i32* %3, align 4
  br label %308

218:                                              ; preds = %190
  store i32 1, i32* %11, align 4
  br label %219

219:                                              ; preds = %218, %167
  %220 = load %struct.sfe_ipv4_ip_hdr*, %struct.sfe_ipv4_ip_hdr** %13, align 8
  %221 = bitcast %struct.sfe_ipv4_ip_hdr* %220 to i32*
  %222 = load %struct.sfe_ipv4_ip_hdr*, %struct.sfe_ipv4_ip_hdr** %13, align 8
  %223 = getelementptr inbounds %struct.sfe_ipv4_ip_hdr, %struct.sfe_ipv4_ip_hdr* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @ip_fast_csum(i32* %221, i32 %224)
  %226 = call i64 @unlikely(i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %247

228:                                              ; preds = %219
  %229 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %230 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %229, i32 0, i32 0
  %231 = call i32 @spin_lock_bh(i32* %230)
  %232 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %233 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %232, i32 0, i32 2
  %234 = load i32*, i32** %233, align 8
  %235 = load i64, i64* @SFE_IPV4_EXCEPTION_EVENT_CSUM_ERROR, align 8
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %236, align 4
  %239 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %240 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %240, align 4
  %243 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %244 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %243, i32 0, i32 0
  %245 = call i32 @spin_unlock_bh(i32* %244)
  %246 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %308

247:                                              ; preds = %219
  %248 = load %struct.sfe_ipv4_ip_hdr*, %struct.sfe_ipv4_ip_hdr** %13, align 8
  %249 = getelementptr inbounds %struct.sfe_ipv4_ip_hdr, %struct.sfe_ipv4_ip_hdr* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  store i32 %250, i32* %14, align 4
  %251 = load i32, i32* @IPPROTO_UDP, align 4
  %252 = load i32, i32* %14, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %263

254:                                              ; preds = %247
  %255 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %256 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %257 = load %struct.net_device*, %struct.net_device** %4, align 8
  %258 = load i32, i32* %7, align 4
  %259 = load %struct.sfe_ipv4_ip_hdr*, %struct.sfe_ipv4_ip_hdr** %13, align 8
  %260 = load i32, i32* %10, align 4
  %261 = load i32, i32* %11, align 4
  %262 = call i32 @sfe_ipv4_recv_udp(%struct.sfe_ipv4* %255, %struct.sk_buff* %256, %struct.net_device* %257, i32 %258, %struct.sfe_ipv4_ip_hdr* %259, i32 %260, i32 %261)
  store i32 %262, i32* %3, align 4
  br label %308

263:                                              ; preds = %247
  %264 = load i32, i32* @IPPROTO_TCP, align 4
  %265 = load i32, i32* %14, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %276

267:                                              ; preds = %263
  %268 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %269 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %270 = load %struct.net_device*, %struct.net_device** %4, align 8
  %271 = load i32, i32* %7, align 4
  %272 = load %struct.sfe_ipv4_ip_hdr*, %struct.sfe_ipv4_ip_hdr** %13, align 8
  %273 = load i32, i32* %10, align 4
  %274 = load i32, i32* %11, align 4
  %275 = call i32 @sfe_ipv4_recv_tcp(%struct.sfe_ipv4* %268, %struct.sk_buff* %269, %struct.net_device* %270, i32 %271, %struct.sfe_ipv4_ip_hdr* %272, i32 %273, i32 %274)
  store i32 %275, i32* %3, align 4
  br label %308

276:                                              ; preds = %263
  %277 = load i32, i32* @IPPROTO_ICMP, align 4
  %278 = load i32, i32* %14, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %288

280:                                              ; preds = %276
  %281 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %282 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %283 = load %struct.net_device*, %struct.net_device** %4, align 8
  %284 = load i32, i32* %7, align 4
  %285 = load %struct.sfe_ipv4_ip_hdr*, %struct.sfe_ipv4_ip_hdr** %13, align 8
  %286 = load i32, i32* %10, align 4
  %287 = call i32 @sfe_ipv4_recv_icmp(%struct.sfe_ipv4* %281, %struct.sk_buff* %282, %struct.net_device* %283, i32 %284, %struct.sfe_ipv4_ip_hdr* %285, i32 %286)
  store i32 %287, i32* %3, align 4
  br label %308

288:                                              ; preds = %276
  %289 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %290 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %289, i32 0, i32 0
  %291 = call i32 @spin_lock_bh(i32* %290)
  %292 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %293 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %292, i32 0, i32 2
  %294 = load i32*, i32** %293, align 8
  %295 = load i64, i64* @SFE_IPV4_EXCEPTION_EVENT_UNHANDLED_PROTOCOL, align 8
  %296 = getelementptr inbounds i32, i32* %294, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %296, align 4
  %299 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %300 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %300, align 4
  %303 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %6, align 8
  %304 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %303, i32 0, i32 0
  %305 = call i32 @spin_unlock_bh(i32* %304)
  %306 = load i32, i32* %14, align 4
  %307 = call i32 (i8*, ...) @DEBUG_TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %306)
  store i32 0, i32* %3, align 4
  br label %308

308:                                              ; preds = %288, %280, %267, %254, %228, %197, %148, %117, %88, %60, %25
  %309 = load i32, i32* %3, align 4
  ret i32 %309
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @DEBUG_TRACE(i8*, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ip_fast_csum(i32*, i32) #1

declare dso_local i32 @sfe_ipv4_recv_udp(%struct.sfe_ipv4*, %struct.sk_buff*, %struct.net_device*, i32, %struct.sfe_ipv4_ip_hdr*, i32, i32) #1

declare dso_local i32 @sfe_ipv4_recv_tcp(%struct.sfe_ipv4*, %struct.sk_buff*, %struct.net_device*, i32, %struct.sfe_ipv4_ip_hdr*, i32, i32) #1

declare dso_local i32 @sfe_ipv4_recv_icmp(%struct.sfe_ipv4*, %struct.sk_buff*, %struct.net_device*, i32, %struct.sfe_ipv4_ip_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
