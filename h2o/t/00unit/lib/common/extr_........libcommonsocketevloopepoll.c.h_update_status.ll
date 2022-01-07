; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocketevloopepoll.c.h_update_status.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocketevloopepoll.c.h_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_evloop_epoll_t = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** }
%struct.st_h2o_evloop_socket_t = type { i32, i32, i32, %struct.st_h2o_evloop_socket_t* }
%struct.epoll_event = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.st_h2o_evloop_socket_t* }

@H2O_SOCKET_FLAG_IS_DISPOSED = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@H2O_SOCKET_FLAG_IS_POLLED_FOR_READ = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@H2O_SOCKET_FLAG_IS_POLLED_FOR_WRITE = common dso_local global i32 0, align 4
@H2O_SOCKET_FLAG__EPOLL_IS_REGISTERED = common dso_local global i32 0, align 4
@EPOLL_CTL_MOD = common dso_local global i32 0, align 4
@EPOLL_CTL_DEL = common dso_local global i32 0, align 4
@EPOLL_CTL_ADD = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_h2o_evloop_epoll_t*)* @update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_status(%struct.st_h2o_evloop_epoll_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st_h2o_evloop_epoll_t*, align 8
  %4 = alloca %struct.st_h2o_evloop_socket_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.epoll_event, align 8
  store %struct.st_h2o_evloop_epoll_t* %0, %struct.st_h2o_evloop_epoll_t** %3, align 8
  br label %9

9:                                                ; preds = %188, %1
  %10 = load %struct.st_h2o_evloop_epoll_t*, %struct.st_h2o_evloop_epoll_t** %3, align 8
  %11 = getelementptr inbounds %struct.st_h2o_evloop_epoll_t, %struct.st_h2o_evloop_epoll_t* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %13, align 8
  %15 = icmp ne %struct.st_h2o_evloop_socket_t* %14, null
  br i1 %15, label %16, label %189

16:                                               ; preds = %9
  %17 = load %struct.st_h2o_evloop_epoll_t*, %struct.st_h2o_evloop_epoll_t** %3, align 8
  %18 = getelementptr inbounds %struct.st_h2o_evloop_epoll_t, %struct.st_h2o_evloop_epoll_t* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %20, align 8
  store %struct.st_h2o_evloop_socket_t* %21, %struct.st_h2o_evloop_socket_t** %4, align 8
  %22 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %4, align 8
  %23 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %22, i32 0, i32 3
  %24 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %23, align 8
  %25 = load %struct.st_h2o_evloop_epoll_t*, %struct.st_h2o_evloop_epoll_t** %3, align 8
  %26 = getelementptr inbounds %struct.st_h2o_evloop_epoll_t, %struct.st_h2o_evloop_epoll_t* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store %struct.st_h2o_evloop_socket_t* %24, %struct.st_h2o_evloop_socket_t** %28, align 8
  %29 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %4, align 8
  %30 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %4, align 8
  %31 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %30, i32 0, i32 3
  store %struct.st_h2o_evloop_socket_t* %29, %struct.st_h2o_evloop_socket_t** %31, align 8
  %32 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %4, align 8
  %33 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @H2O_SOCKET_FLAG_IS_DISPOSED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %16
  %39 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %4, align 8
  %40 = call i32 @free(%struct.st_h2o_evloop_socket_t* %39)
  br label %188

41:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  %42 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %8, i32 0, i32 1
  store i32 0, i32* %42, align 8
  %43 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %4, align 8
  %44 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %43, i32 0, i32 2
  %45 = call i64 @h2o_socket_is_reading(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %41
  %48 = load i32, i32* @EPOLLIN, align 4
  %49 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %8, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 8
  %52 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %4, align 8
  %53 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @H2O_SOCKET_FLAG_IS_POLLED_FOR_READ, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %47
  %59 = load i32, i32* @H2O_SOCKET_FLAG_IS_POLLED_FOR_READ, align 4
  %60 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %4, align 8
  %61 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  store i32 1, i32* %5, align 4
  br label %64

64:                                               ; preds = %58, %47
  br label %80

65:                                               ; preds = %41
  %66 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %4, align 8
  %67 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @H2O_SOCKET_FLAG_IS_POLLED_FOR_READ, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %65
  %73 = load i32, i32* @H2O_SOCKET_FLAG_IS_POLLED_FOR_READ, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %4, align 8
  %76 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 8
  store i32 1, i32* %5, align 4
  br label %79

79:                                               ; preds = %72, %65
  br label %80

80:                                               ; preds = %79, %64
  %81 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %4, align 8
  %82 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %81, i32 0, i32 2
  %83 = call i64 @h2o_socket_is_writing(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %80
  %86 = load i32, i32* @EPOLLOUT, align 4
  %87 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %8, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %86
  store i32 %89, i32* %87, align 8
  %90 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %4, align 8
  %91 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @H2O_SOCKET_FLAG_IS_POLLED_FOR_WRITE, align 4
  %94 = and i32 %92, %93
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %85
  %97 = load i32, i32* @H2O_SOCKET_FLAG_IS_POLLED_FOR_WRITE, align 4
  %98 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %4, align 8
  %99 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  store i32 1, i32* %5, align 4
  br label %102

102:                                              ; preds = %96, %85
  br label %118

103:                                              ; preds = %80
  %104 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %4, align 8
  %105 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @H2O_SOCKET_FLAG_IS_POLLED_FOR_WRITE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %103
  %111 = load i32, i32* @H2O_SOCKET_FLAG_IS_POLLED_FOR_WRITE, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %4, align 8
  %114 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 8
  store i32 1, i32* %5, align 4
  br label %117

117:                                              ; preds = %110, %103
  br label %118

118:                                              ; preds = %117, %102
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %187

121:                                              ; preds = %118
  %122 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %4, align 8
  %123 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @H2O_SOCKET_FLAG__EPOLL_IS_REGISTERED, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %8, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32, i32* @EPOLL_CTL_MOD, align 4
  store i32 %133, i32* %6, align 4
  br label %136

134:                                              ; preds = %128
  %135 = load i32, i32* @EPOLL_CTL_DEL, align 4
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %134, %132
  br label %144

137:                                              ; preds = %121
  %138 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %8, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  %143 = load i32, i32* @EPOLL_CTL_ADD, align 4
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %137, %136
  %145 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %4, align 8
  %146 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %8, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  store %struct.st_h2o_evloop_socket_t* %145, %struct.st_h2o_evloop_socket_t** %147, align 8
  br label %148

148:                                              ; preds = %164, %144
  %149 = load %struct.st_h2o_evloop_epoll_t*, %struct.st_h2o_evloop_epoll_t** %3, align 8
  %150 = getelementptr inbounds %struct.st_h2o_evloop_epoll_t, %struct.st_h2o_evloop_epoll_t* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %6, align 4
  %153 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %4, align 8
  %154 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @epoll_ctl(i32 %151, i32 %152, i32 %155, %struct.epoll_event* %8)
  store i32 %156, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %148
  %159 = load i64, i64* @errno, align 8
  %160 = load i64, i64* @EINTR, align 8
  %161 = icmp eq i64 %159, %160
  br label %162

162:                                              ; preds = %158, %148
  %163 = phi i1 [ false, %148 ], [ %161, %158 ]
  br i1 %163, label %164, label %165

164:                                              ; preds = %162
  br label %148

165:                                              ; preds = %162
  %166 = load i32, i32* %7, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  store i32 -1, i32* %2, align 4
  br label %198

169:                                              ; preds = %165
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* @EPOLL_CTL_DEL, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %169
  %174 = load i32, i32* @H2O_SOCKET_FLAG__EPOLL_IS_REGISTERED, align 4
  %175 = xor i32 %174, -1
  %176 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %4, align 8
  %177 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = and i32 %178, %175
  store i32 %179, i32* %177, align 8
  br label %186

180:                                              ; preds = %169
  %181 = load i32, i32* @H2O_SOCKET_FLAG__EPOLL_IS_REGISTERED, align 4
  %182 = load %struct.st_h2o_evloop_socket_t*, %struct.st_h2o_evloop_socket_t** %4, align 8
  %183 = getelementptr inbounds %struct.st_h2o_evloop_socket_t, %struct.st_h2o_evloop_socket_t* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 8
  br label %186

186:                                              ; preds = %180, %173
  br label %187

187:                                              ; preds = %186, %118
  br label %188

188:                                              ; preds = %187, %38
  br label %9

189:                                              ; preds = %9
  %190 = load %struct.st_h2o_evloop_epoll_t*, %struct.st_h2o_evloop_epoll_t** %3, align 8
  %191 = getelementptr inbounds %struct.st_h2o_evloop_epoll_t, %struct.st_h2o_evloop_epoll_t* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load %struct.st_h2o_evloop_epoll_t*, %struct.st_h2o_evloop_epoll_t** %3, align 8
  %195 = getelementptr inbounds %struct.st_h2o_evloop_epoll_t, %struct.st_h2o_evloop_epoll_t* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 1
  store %struct.st_h2o_evloop_socket_t** %193, %struct.st_h2o_evloop_socket_t*** %197, align 8
  store i32 0, i32* %2, align 4
  br label %198

198:                                              ; preds = %189, %168
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local i32 @free(%struct.st_h2o_evloop_socket_t*) #1

declare dso_local i64 @h2o_socket_is_reading(i32*) #1

declare dso_local i64 @h2o_socket_is_writing(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
