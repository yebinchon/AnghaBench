; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_poll.c_uv__fast_poll_process_poll_req.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_poll.c_uv__fast_poll_process_poll_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i8, i32, i8, i64, i32, i32 (%struct.TYPE_11__*, i32, i8)*, %struct.TYPE_12__, i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@WSAEINTR = common dso_local global i64 0, align 8
@AFD_POLL_RECEIVE = common dso_local global i32 0, align 4
@AFD_POLL_DISCONNECT = common dso_local global i32 0, align 4
@AFD_POLL_ACCEPT = common dso_local global i32 0, align 4
@AFD_POLL_ABORT = common dso_local global i32 0, align 4
@UV_READABLE = common dso_local global i8 0, align 1
@UV_DISCONNECT = common dso_local global i8 0, align 1
@AFD_POLL_SEND = common dso_local global i32 0, align 4
@AFD_POLL_CONNECT_FAIL = common dso_local global i32 0, align 4
@UV_WRITABLE = common dso_local global i8 0, align 1
@AFD_POLL_LOCAL_CLOSE = common dso_local global i32 0, align 4
@UV_HANDLE_CLOSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_11__*, i32*)* @uv__fast_poll_process_poll_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv__fast_poll_process_poll_req(i32* %0, %struct.TYPE_11__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 10
  %14 = icmp eq i32* %11, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 9
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %8, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load i8, i8* %21, align 4
  store i8 %22, i8* %7, align 1
  br label %39

23:                                               ; preds = %3
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 8
  %27 = icmp eq i32* %24, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 7
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %8, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  store i32 0, i32* %32, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 3
  %35 = load i8, i8* %34, align 4
  store i8 %35, i8* %7, align 1
  br label %38

36:                                               ; preds = %23
  %37 = call i32 @assert(i32 0)
  br label %216

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %15
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @REQ_SUCCESS(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %65, label %43

43:                                               ; preds = %39
  %44 = load i32*, i32** %6, align 8
  %45 = call i64 @GET_REQ_SOCK_ERROR(i32* %44)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @WSAEINTR, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 4
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 6
  %59 = load i32 (%struct.TYPE_11__*, i32, i8)*, i32 (%struct.TYPE_11__*, i32, i8)** %58, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = load i64, i64* %9, align 8
  %62 = call i32 @uv_translate_sys_error(i64 %61)
  %63 = call i32 %59(%struct.TYPE_11__* %60, i32 %62, i8 zeroext 0)
  br label %64

64:                                               ; preds = %54, %49, %43
  br label %174

65:                                               ; preds = %39
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sge i32 %68, 1
  br i1 %69, label %70, label %173

70:                                               ; preds = %65
  store i8 0, i8* %10, align 1
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @AFD_POLL_RECEIVE, align 4
  %78 = load i32, i32* @AFD_POLL_DISCONNECT, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @AFD_POLL_ACCEPT, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @AFD_POLL_ABORT, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %76, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %110

86:                                               ; preds = %70
  %87 = load i8, i8* @UV_READABLE, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8, i8* %10, align 1
  %90 = zext i8 %89 to i32
  %91 = or i32 %90, %88
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %10, align 1
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @AFD_POLL_DISCONNECT, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %86
  %103 = load i8, i8* @UV_DISCONNECT, align 1
  %104 = zext i8 %103 to i32
  %105 = load i8, i8* %10, align 1
  %106 = zext i8 %105 to i32
  %107 = or i32 %106, %104
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %10, align 1
  br label %109

109:                                              ; preds = %102, %86
  br label %110

110:                                              ; preds = %109, %70
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @AFD_POLL_SEND, align 4
  %118 = load i32, i32* @AFD_POLL_CONNECT_FAIL, align 4
  %119 = or i32 %117, %118
  %120 = and i32 %116, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %110
  %123 = load i8, i8* @UV_WRITABLE, align 1
  %124 = zext i8 %123 to i32
  %125 = load i8, i8* %10, align 1
  %126 = zext i8 %125 to i32
  %127 = or i32 %126, %124
  %128 = trunc i32 %127 to i8
  store i8 %128, i8* %10, align 1
  br label %129

129:                                              ; preds = %122, %110
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = load i8, i8* %7, align 1
  %134 = zext i8 %133 to i32
  %135 = xor i32 %134, -1
  %136 = sext i32 %135 to i64
  %137 = and i64 %132, %136
  %138 = load i8, i8* %10, align 1
  %139 = zext i8 %138 to i64
  %140 = and i64 %139, %137
  %141 = trunc i64 %140 to i8
  store i8 %141, i8* %10, align 1
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i64 0
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @AFD_POLL_LOCAL_CLOSE, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %161

151:                                              ; preds = %129
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 4
  store i64 0, i64* %153, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %155 = call i64 @uv__is_active(%struct.TYPE_11__* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %159 = call i32 @uv__handle_stop(%struct.TYPE_11__* %158)
  br label %160

160:                                              ; preds = %157, %151
  br label %161

161:                                              ; preds = %160, %129
  %162 = load i8, i8* %10, align 1
  %163 = zext i8 %162 to i32
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %161
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 6
  %168 = load i32 (%struct.TYPE_11__*, i32, i8)*, i32 (%struct.TYPE_11__*, i32, i8)** %167, align 8
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %170 = load i8, i8* %10, align 1
  %171 = call i32 %168(%struct.TYPE_11__* %169, i32 0, i8 zeroext %170)
  br label %172

172:                                              ; preds = %165, %161
  br label %173

173:                                              ; preds = %172, %65
  br label %174

174:                                              ; preds = %173, %64
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %180, %183
  %185 = xor i32 %184, -1
  %186 = sext i32 %185 to i64
  %187 = and i64 %177, %186
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %174
  %190 = load i32*, i32** %4, align 8
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %192 = call i32 @uv__fast_poll_submit_poll_req(i32* %190, %struct.TYPE_11__* %191)
  br label %216

193:                                              ; preds = %174
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @UV_HANDLE_CLOSING, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %215

200:                                              ; preds = %193
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %215

205:                                              ; preds = %200
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %205
  %211 = load i32*, i32** %4, align 8
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %213 = bitcast %struct.TYPE_11__* %212 to i32*
  %214 = call i32 @uv_want_endgame(i32* %211, i32* %213)
  br label %215

215:                                              ; preds = %210, %205, %200, %193
  br label %216

216:                                              ; preds = %36, %215, %189
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @REQ_SUCCESS(i32*) #1

declare dso_local i64 @GET_REQ_SOCK_ERROR(i32*) #1

declare dso_local i32 @uv_translate_sys_error(i64) #1

declare dso_local i64 @uv__is_active(%struct.TYPE_11__*) #1

declare dso_local i32 @uv__handle_stop(%struct.TYPE_11__*) #1

declare dso_local i32 @uv__fast_poll_submit_poll_req(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @uv_want_endgame(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
