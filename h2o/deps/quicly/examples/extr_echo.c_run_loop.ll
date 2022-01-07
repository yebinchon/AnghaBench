; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/examples/extr_echo.c_run_loop.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/examples/extr_echo.c_run_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32*)* }
%struct.TYPE_5__ = type { i64 (%struct.TYPE_5__*)* }
%struct.timeval = type { i32, i64 }
%struct.sockaddr_storage = type { i32 }
%struct.iovec = type { i32, i32* }
%struct.msghdr = type { i32, i32, %struct.iovec*, %struct.sockaddr_storage* }

@INT64_MAX = common dso_local global i64 0, align 8
@ctx = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"quicly_send returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @run_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_loop(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca [256 x i32*], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.timeval, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca [4096 x i32], align 16
  %16 = alloca %struct.sockaddr_storage, align 4
  %17 = alloca %struct.iovec, align 8
  %18 = alloca %struct.msghdr, align 8
  %19 = alloca i32, align 4
  %20 = alloca [16 x i32*], align 16
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %24 = bitcast [256 x i32*]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 2048, i1 false)
  %25 = getelementptr inbounds [256 x i32*], [256 x i32*]* %6, i64 0, i64 0
  %26 = load i32*, i32** %5, align 8
  store i32* %26, i32** %25, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = icmp ne i32* %27, null
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %2, %216
  br label %31

31:                                               ; preds = %98, %30
  %32 = load i64, i64* @INT64_MAX, align 8
  store i64 %32, i64* %11, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctx, i32 0, i32 1), align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64 (%struct.TYPE_5__*)*, i64 (%struct.TYPE_5__*)** %34, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctx, i32 0, i32 1), align 8
  %37 = call i64 %35(%struct.TYPE_5__* %36)
  store i64 %37, i64* %12, align 8
  store i64 0, i64* %7, align 8
  br label %38

38:                                               ; preds = %54, %31
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds [256 x i32*], [256 x i32*]* %6, i64 0, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds [256 x i32*], [256 x i32*]* %6, i64 0, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @quicly_get_first_timeout(i32* %46)
  store i64 %47, i64* %13, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i64, i64* %13, align 8
  store i64 %52, i64* %11, align 8
  br label %53

53:                                               ; preds = %51, %43
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %7, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %7, align 8
  br label %38

57:                                               ; preds = %38
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* %11, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %12, align 8
  %64 = sub nsw i64 %62, %63
  store i64 %64, i64* %14, align 8
  %65 = load i64, i64* %14, align 8
  %66 = icmp sgt i64 %65, 1000000
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i64 1000000, i64* %14, align 8
  br label %68

68:                                               ; preds = %67, %61
  %69 = load i64, i64* %14, align 8
  %70 = sdiv i64 %69, 1000
  %71 = trunc i64 %70 to i32
  %72 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i32 %71, i32* %72, align 8
  %73 = load i64, i64* %14, align 8
  %74 = srem i64 %73, 1000
  %75 = mul nsw i64 %74, 1000
  %76 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i64 %75, i64* %76, align 8
  br label %80

77:                                               ; preds = %57
  %78 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i32 1000, i32* %78, align 8
  %79 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %77, %68
  %81 = call i32 @FD_ZERO(i32* %9)
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @FD_SET(i32 %82, i32* %9)
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = call i32 @FD_SET(i32 0, i32* %9)
  br label %88

88:                                               ; preds = %86, %80
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  %92 = call i32 @select(i32 %91, i32* %9, i32* null, i32* null, %struct.timeval* %10)
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i64, i64* @errno, align 8
  %96 = load i64, i64* @EINTR, align 8
  %97 = icmp eq i64 %95, %96
  br label %98

98:                                               ; preds = %94, %89
  %99 = phi i1 [ false, %89 ], [ %97, %94 ]
  br i1 %99, label %31, label %100

100:                                              ; preds = %98
  %101 = load i32, i32* %4, align 4
  %102 = call i64 @FD_ISSET(i32 %101, i32* %9)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %134

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.iovec, %struct.iovec* %17, i32 0, i32 0
  store i32 16384, i32* %105, align 8
  %106 = getelementptr inbounds %struct.iovec, %struct.iovec* %17, i32 0, i32 1
  %107 = getelementptr inbounds [4096 x i32], [4096 x i32]* %15, i64 0, i64 0
  store i32* %107, i32** %106, align 8
  %108 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %18, i32 0, i32 0
  store i32 4, i32* %108, align 8
  %109 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %18, i32 0, i32 1
  store i32 1, i32* %109, align 4
  %110 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %18, i32 0, i32 2
  store %struct.iovec* %17, %struct.iovec** %110, align 8
  %111 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %18, i32 0, i32 3
  store %struct.sockaddr_storage* %16, %struct.sockaddr_storage** %111, align 8
  br label %112

112:                                              ; preds = %122, %104
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @recvmsg(i32 %113, %struct.msghdr* %18, i32 0)
  store i32 %114, i32* %19, align 4
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i64, i64* @errno, align 8
  %118 = load i64, i64* @EINTR, align 8
  %119 = icmp eq i64 %117, %118
  br label %120

120:                                              ; preds = %116, %112
  %121 = phi i1 [ false, %112 ], [ %119, %116 ]
  br i1 %121, label %122, label %123

122:                                              ; preds = %120
  br label %112

123:                                              ; preds = %120
  %124 = load i32, i32* %19, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = load i32*, i32** %5, align 8
  %128 = icmp ne i32* %127, null
  %129 = zext i1 %128 to i32
  %130 = getelementptr inbounds [256 x i32*], [256 x i32*]* %6, i64 0, i64 0
  %131 = load i32, i32* %19, align 4
  %132 = call i32 @process_msg(i32 %129, i32** %130, %struct.msghdr* %18, i32 %131)
  br label %133

133:                                              ; preds = %126, %123
  br label %134

134:                                              ; preds = %133, %100
  %135 = call i64 @FD_ISSET(i32 0, i32* %9)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %134
  %138 = load i32*, i32** %5, align 8
  %139 = icmp ne i32* %138, null
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  %142 = load i32*, i32** %5, align 8
  %143 = call i32 @forward_stdin(i32* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %137
  store i32 0, i32* %8, align 4
  br label %146

146:                                              ; preds = %145, %137
  br label %147

147:                                              ; preds = %146, %134
  store i64 0, i64* %7, align 8
  br label %148

148:                                              ; preds = %213, %147
  %149 = load i64, i64* %7, align 8
  %150 = getelementptr inbounds [256 x i32*], [256 x i32*]* %6, i64 0, i64 %149
  %151 = load i32*, i32** %150, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %216

153:                                              ; preds = %148
  store i64 16, i64* %21, align 8
  %154 = load i64, i64* %7, align 8
  %155 = getelementptr inbounds [256 x i32*], [256 x i32*]* %6, i64 0, i64 %154
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds [16 x i32*], [16 x i32*]* %20, i64 0, i64 0
  %158 = call i32 @quicly_send(i32* %156, i32** %157, i64* %21)
  store i32 %158, i32* %22, align 4
  %159 = load i32, i32* %22, align 4
  switch i32 %159, label %208 [
    i32 0, label %160
    i32 128, label %183
  ]

160:                                              ; preds = %153
  store i64 0, i64* %23, align 8
  br label %161

161:                                              ; preds = %179, %160
  %162 = load i64, i64* %23, align 8
  %163 = load i64, i64* %21, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %182

165:                                              ; preds = %161
  %166 = load i32, i32* %4, align 4
  %167 = load i64, i64* %23, align 8
  %168 = getelementptr inbounds [16 x i32*], [16 x i32*]* %20, i64 0, i64 %167
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @send_one(i32 %166, i32* %169)
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctx, i32 0, i32 0), align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %172, align 8
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ctx, i32 0, i32 0), align 8
  %175 = load i64, i64* %23, align 8
  %176 = getelementptr inbounds [16 x i32*], [16 x i32*]* %20, i64 0, i64 %175
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 %173(%struct.TYPE_4__* %174, i32* %177)
  br label %179

179:                                              ; preds = %165
  %180 = load i64, i64* %23, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %23, align 8
  br label %161

182:                                              ; preds = %161
  br label %212

183:                                              ; preds = %153
  %184 = load i64, i64* %7, align 8
  %185 = getelementptr inbounds [256 x i32*], [256 x i32*]* %6, i64 0, i64 %184
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @quicly_free(i32* %186)
  %188 = getelementptr inbounds [256 x i32*], [256 x i32*]* %6, i64 0, i64 0
  %189 = load i64, i64* %7, align 8
  %190 = getelementptr inbounds i32*, i32** %188, i64 %189
  %191 = getelementptr inbounds [256 x i32*], [256 x i32*]* %6, i64 0, i64 0
  %192 = load i64, i64* %7, align 8
  %193 = getelementptr inbounds i32*, i32** %191, i64 %192
  %194 = getelementptr inbounds i32*, i32** %193, i64 1
  %195 = ptrtoint i32** %194 to i32
  %196 = load i64, i64* %7, align 8
  %197 = add i64 %196, 1
  %198 = mul i64 8, %197
  %199 = sub i64 2048, %198
  %200 = trunc i64 %199 to i32
  %201 = call i32 @memmove(i32** %190, i32 %195, i32 %200)
  %202 = load i64, i64* %7, align 8
  %203 = add i64 %202, -1
  store i64 %203, i64* %7, align 8
  %204 = call i32 (...) @is_server()
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %183
  store i32 0, i32* %3, align 4
  br label %217

207:                                              ; preds = %183
  br label %212

208:                                              ; preds = %153
  %209 = load i32, i32* @stderr, align 4
  %210 = load i32, i32* %22, align 4
  %211 = call i32 @fprintf(i32 %209, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %210)
  store i32 1, i32* %3, align 4
  br label %217

212:                                              ; preds = %207, %182
  br label %213

213:                                              ; preds = %212
  %214 = load i64, i64* %7, align 8
  %215 = add i64 %214, 1
  store i64 %215, i64* %7, align 8
  br label %148

216:                                              ; preds = %148
  br label %30

217:                                              ; preds = %208, %206
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @quicly_get_first_timeout(i32*) #2

declare dso_local i32 @FD_ZERO(i32*) #2

declare dso_local i32 @FD_SET(i32, i32*) #2

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #2

declare dso_local i64 @FD_ISSET(i32, i32*) #2

declare dso_local i32 @recvmsg(i32, %struct.msghdr*, i32) #2

declare dso_local i32 @process_msg(i32, i32**, %struct.msghdr*, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @forward_stdin(i32*) #2

declare dso_local i32 @quicly_send(i32*, i32**, i64*) #2

declare dso_local i32 @send_one(i32, i32*) #2

declare dso_local i32 @quicly_free(i32*) #2

declare dso_local i32 @memmove(i32**, i32, i32) #2

declare dso_local i32 @is_server(...) #2

declare dso_local i32 @fprintf(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
