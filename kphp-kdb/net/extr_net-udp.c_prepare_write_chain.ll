; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp.c_prepare_write_chain.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp.c_prepare_write_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.our_mmsghdr = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i32, i32, i64, %struct.sockaddr_in6* }
%struct.sockaddr_in6 = type { i32, i8*, i32, %struct.TYPE_5__, i8*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.udp_message = type { i32, %struct.udp_message*, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.sockaddr_in = type { i32, i8*, i32, %struct.TYPE_5__, i8*, i32 }

@udp_send_msgvec = common dso_local global %struct.our_mmsghdr* null, align 8
@udp_send_iovec = common dso_local global i64 0, align 8
@MAX_UDP_SEND_BUFFERS = common dso_local global i64 0, align 8
@MAX_UDP_SEND_DATAGRAM = common dso_local global i32 0, align 4
@udp_send_addr = common dso_local global %struct.sockaddr_in6* null, align 8
@AF_INET = common dso_local global i32 0, align 4
@udp_send_addr6 = common dso_local global %struct.sockaddr_in6* null, align 8
@AF_INET6 = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MAX_OUR_IPS = common dso_local global i32 0, align 4
@outbound_src_ip_hdr = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prepare_write_chain(%struct.udp_message* %0, i32 %1) #0 {
  %3 = alloca %struct.udp_message*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.our_mmsghdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca i32, align 4
  store %struct.udp_message* %0, %struct.udp_message** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.our_mmsghdr*, %struct.our_mmsghdr** @udp_send_msgvec, align 8
  store %struct.our_mmsghdr* %12, %struct.our_mmsghdr** %7, align 8
  br label %13

13:                                               ; preds = %163, %2
  %14 = load %struct.udp_message*, %struct.udp_message** %3, align 8
  %15 = icmp ne %struct.udp_message* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i1 [ false, %13 ], [ %19, %16 ]
  br i1 %21, label %22, label %174

22:                                               ; preds = %20
  %23 = load %struct.udp_message*, %struct.udp_message** %3, align 8
  %24 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %23, i32 0, i32 2
  %25 = load i64, i64* @udp_send_iovec, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = load i64, i64* @MAX_UDP_SEND_BUFFERS, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %29, %31
  %33 = load i32, i32* @MAX_UDP_SEND_DATAGRAM, align 4
  %34 = call i32 @rwm_prepare_iovec(%struct.TYPE_7__* %24, i64 %28, i64 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  br label %174

38:                                               ; preds = %22
  %39 = load %struct.udp_message*, %struct.udp_message** %3, align 8
  %40 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @is_4in6(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %38
  %45 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** @udp_send_addr, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %45, i64 %47
  %49 = load %struct.our_mmsghdr*, %struct.our_mmsghdr** %7, align 8
  %50 = getelementptr inbounds %struct.our_mmsghdr, %struct.our_mmsghdr* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 6
  store %struct.sockaddr_in6* %48, %struct.sockaddr_in6** %51, align 8
  %52 = bitcast %struct.sockaddr_in6* %48 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %52, %struct.sockaddr_in** %9, align 8
  %53 = load i32, i32* @AF_INET, align 4
  %54 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %55 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  %56 = load %struct.udp_message*, %struct.udp_message** %3, align 8
  %57 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i8* @htons(i32 %58)
  %60 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %61 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load %struct.udp_message*, %struct.udp_message** %3, align 8
  %63 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @extract_4in6(i32 %64)
  %66 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %67 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  %69 = load %struct.our_mmsghdr*, %struct.our_mmsghdr** %7, align 8
  %70 = getelementptr inbounds %struct.our_mmsghdr, %struct.our_mmsghdr* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 40, i32* %71, align 8
  br label %98

72:                                               ; preds = %38
  %73 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** @udp_send_addr6, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %73, i64 %75
  %77 = load %struct.our_mmsghdr*, %struct.our_mmsghdr** %7, align 8
  %78 = getelementptr inbounds %struct.our_mmsghdr, %struct.our_mmsghdr* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 6
  store %struct.sockaddr_in6* %76, %struct.sockaddr_in6** %79, align 8
  store %struct.sockaddr_in6* %76, %struct.sockaddr_in6** %10, align 8
  %80 = load i32, i32* @AF_INET6, align 4
  %81 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %82 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.udp_message*, %struct.udp_message** %3, align 8
  %84 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i8* @htons(i32 %85)
  %87 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %88 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %90 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %89, i32 0, i32 0
  %91 = load %struct.udp_message*, %struct.udp_message** %3, align 8
  %92 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @memcpy(i32* %90, i32 %93, i32 16)
  %95 = load %struct.our_mmsghdr*, %struct.our_mmsghdr** %7, align 8
  %96 = getelementptr inbounds %struct.our_mmsghdr, %struct.our_mmsghdr* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i32 40, i32* %97, align 8
  br label %98

98:                                               ; preds = %72, %44
  %99 = load i64, i64* @udp_send_iovec, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %99, %101
  %103 = load %struct.our_mmsghdr*, %struct.our_mmsghdr** %7, align 8
  %104 = getelementptr inbounds %struct.our_mmsghdr, %struct.our_mmsghdr* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 5
  store i64 %102, i64* %105, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.our_mmsghdr*, %struct.our_mmsghdr** %7, align 8
  %108 = getelementptr inbounds %struct.our_mmsghdr, %struct.our_mmsghdr* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 4
  %110 = load i32, i32* @MSG_DONTWAIT, align 4
  %111 = load %struct.our_mmsghdr*, %struct.our_mmsghdr** %7, align 8
  %112 = getelementptr inbounds %struct.our_mmsghdr, %struct.our_mmsghdr* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 4
  store i32 %110, i32* %113, align 4
  %114 = load %struct.udp_message*, %struct.udp_message** %3, align 8
  %115 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.our_mmsghdr*, %struct.our_mmsghdr** %7, align 8
  %119 = getelementptr inbounds %struct.our_mmsghdr, %struct.our_mmsghdr* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 8
  %120 = load %struct.udp_message*, %struct.udp_message** %3, align 8
  %121 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %156

125:                                              ; preds = %98
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @MAX_OUR_IPS, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %156

129:                                              ; preds = %125
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** @outbound_src_ip_hdr, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %156

137:                                              ; preds = %129
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** @outbound_src_ip_hdr, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.our_mmsghdr*, %struct.our_mmsghdr** %7, align 8
  %145 = getelementptr inbounds %struct.our_mmsghdr, %struct.our_mmsghdr* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 3
  store i32 %143, i32* %146, align 8
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** @outbound_src_ip_hdr, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.our_mmsghdr*, %struct.our_mmsghdr** %7, align 8
  %154 = getelementptr inbounds %struct.our_mmsghdr, %struct.our_mmsghdr* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 2
  store i64 %152, i64* %155, align 8
  br label %163

156:                                              ; preds = %129, %125, %98
  %157 = load %struct.our_mmsghdr*, %struct.our_mmsghdr** %7, align 8
  %158 = getelementptr inbounds %struct.our_mmsghdr, %struct.our_mmsghdr* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 3
  store i32 0, i32* %159, align 8
  %160 = load %struct.our_mmsghdr*, %struct.our_mmsghdr** %7, align 8
  %161 = getelementptr inbounds %struct.our_mmsghdr, %struct.our_mmsghdr* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 2
  store i64 0, i64* %162, align 8
  br label %163

163:                                              ; preds = %156, %137
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* %5, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %5, align 4
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  %169 = load %struct.our_mmsghdr*, %struct.our_mmsghdr** %7, align 8
  %170 = getelementptr inbounds %struct.our_mmsghdr, %struct.our_mmsghdr* %169, i32 1
  store %struct.our_mmsghdr* %170, %struct.our_mmsghdr** %7, align 8
  %171 = load %struct.udp_message*, %struct.udp_message** %3, align 8
  %172 = getelementptr inbounds %struct.udp_message, %struct.udp_message* %171, i32 0, i32 1
  %173 = load %struct.udp_message*, %struct.udp_message** %172, align 8
  store %struct.udp_message* %173, %struct.udp_message** %3, align 8
  br label %13

174:                                              ; preds = %37, %20
  %175 = load i32, i32* %6, align 4
  ret i32 %175
}

declare dso_local i32 @rwm_prepare_iovec(%struct.TYPE_7__*, i64, i64, i32) #1

declare dso_local i64 @is_4in6(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @extract_4in6(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
