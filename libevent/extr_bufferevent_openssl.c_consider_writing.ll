; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_consider_writing.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_openssl.c_consider_writing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_openssl = type { %struct.TYPE_4__, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { %struct.bufferevent, i64 }
%struct.bufferevent = type { i32, i32, %struct.evbuffer* }
%struct.evbuffer = type { i32 }
%struct.TYPE_3__ = type { %struct.event_watermark, %struct.evbuffer* }
%struct.event_watermark = type { i64 }

@OP_MADE_PROGRESS = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@OP_ERR = common dso_local global i32 0, align 4
@OP_BLOCKED = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@WRITE_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent_openssl*)* @consider_writing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @consider_writing(%struct.bufferevent_openssl* %0) #0 {
  %2 = alloca %struct.bufferevent_openssl*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca %struct.evbuffer*, align 8
  %6 = alloca %struct.event_watermark*, align 8
  %7 = alloca %struct.bufferevent*, align 8
  %8 = alloca i32, align 4
  store %struct.bufferevent_openssl* %0, %struct.bufferevent_openssl** %2, align 8
  %9 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %10 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %11, i32 0, i32 2
  %13 = load %struct.evbuffer*, %struct.evbuffer** %12, align 8
  store %struct.evbuffer* %13, %struct.evbuffer** %4, align 8
  store %struct.evbuffer* null, %struct.evbuffer** %5, align 8
  store %struct.event_watermark* null, %struct.event_watermark** %6, align 8
  br label %14

14:                                               ; preds = %41, %1
  %15 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %16 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %14
  %20 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %21 = call i32 @do_read(%struct.bufferevent_openssl* %20, i32 1024)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @OP_MADE_PROGRESS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %28 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store %struct.bufferevent* %29, %struct.bufferevent** %7, align 8
  %30 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %31 = load i32, i32* @EV_READ, align 4
  %32 = call i32 @bufferevent_trigger_nolock_(%struct.bufferevent* %30, i32 %31, i32 0)
  br label %33

33:                                               ; preds = %26, %19
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @OP_ERR, align 4
  %36 = load i32, i32* @OP_BLOCKED, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %42

41:                                               ; preds = %33
  br label %14

42:                                               ; preds = %40, %14
  %43 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %44 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %172

48:                                               ; preds = %42
  %49 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %50 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = icmp ne %struct.TYPE_3__* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %55 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load %struct.evbuffer*, %struct.evbuffer** %57, align 8
  store %struct.evbuffer* %58, %struct.evbuffer** %5, align 8
  %59 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %60 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store %struct.event_watermark* %62, %struct.event_watermark** %6, align 8
  br label %63

63:                                               ; preds = %53, %48
  br label %64

64:                                               ; preds = %133, %63
  %65 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %66 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @EV_WRITE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %102

73:                                               ; preds = %64
  %74 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %75 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %102, label %79

79:                                               ; preds = %73
  %80 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %81 = call i64 @evbuffer_get_length(%struct.evbuffer* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %79
  %84 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %85 = icmp ne %struct.evbuffer* %84, null
  br i1 %85, label %86, label %100

86:                                               ; preds = %83
  %87 = load %struct.event_watermark*, %struct.event_watermark** %6, align 8
  %88 = getelementptr inbounds %struct.event_watermark, %struct.event_watermark* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %93 = call i64 @evbuffer_get_length(%struct.evbuffer* %92)
  %94 = load %struct.event_watermark*, %struct.event_watermark** %6, align 8
  %95 = getelementptr inbounds %struct.event_watermark, %struct.event_watermark* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp slt i64 %93, %96
  br label %98

98:                                               ; preds = %91, %86
  %99 = phi i1 [ true, %86 ], [ %97, %91 ]
  br label %100

100:                                              ; preds = %98, %83
  %101 = phi i1 [ true, %83 ], [ %99, %98 ]
  br label %102

102:                                              ; preds = %100, %79, %73, %64
  %103 = phi i1 [ false, %79 ], [ false, %73 ], [ false, %64 ], [ %101, %100 ]
  br i1 %103, label %104, label %134

104:                                              ; preds = %102
  %105 = load %struct.event_watermark*, %struct.event_watermark** %6, align 8
  %106 = icmp ne %struct.event_watermark* %105, null
  br i1 %106, label %107, label %120

107:                                              ; preds = %104
  %108 = load %struct.event_watermark*, %struct.event_watermark** %6, align 8
  %109 = getelementptr inbounds %struct.event_watermark, %struct.event_watermark* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load %struct.event_watermark*, %struct.event_watermark** %6, align 8
  %114 = getelementptr inbounds %struct.event_watermark, %struct.event_watermark* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %117 = call i64 @evbuffer_get_length(%struct.evbuffer* %116)
  %118 = sub nsw i64 %115, %117
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %8, align 4
  br label %122

120:                                              ; preds = %107, %104
  %121 = load i32, i32* @WRITE_FRAME, align 4
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %120, %112
  %123 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @do_write(%struct.bufferevent_openssl* %123, i32 %124)
  store i32 %125, i32* %3, align 4
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* @OP_BLOCKED, align 4
  %128 = load i32, i32* @OP_ERR, align 4
  %129 = or i32 %127, %128
  %130 = and i32 %126, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %122
  br label %134

133:                                              ; preds = %122
  br label %64

134:                                              ; preds = %132, %102
  %135 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %136 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %135, i32 0, i32 1
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = icmp ne %struct.TYPE_3__* %137, null
  br i1 %138, label %172, label %139

139:                                              ; preds = %134
  %140 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %141 = call i64 @evbuffer_get_length(%struct.evbuffer* %140)
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %139
  %144 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %145 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %146, i32 0, i32 1
  %148 = call i32 @event_del(i32* %147)
  br label %171

149:                                              ; preds = %139
  %150 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %151 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %164, label %155

155:                                              ; preds = %149
  %156 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %157 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @EV_WRITE, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %155, %149
  %165 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %2, align 8
  %166 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %167, i32 0, i32 1
  %169 = call i32 @event_del(i32* %168)
  br label %170

170:                                              ; preds = %164, %155
  br label %171

171:                                              ; preds = %170, %143
  br label %172

172:                                              ; preds = %47, %171, %134
  ret void
}

declare dso_local i32 @do_read(%struct.bufferevent_openssl*, i32) #1

declare dso_local i32 @bufferevent_trigger_nolock_(%struct.bufferevent*, i32, i32) #1

declare dso_local i64 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32 @do_write(%struct.bufferevent_openssl*, i32) #1

declare dso_local i32 @event_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
