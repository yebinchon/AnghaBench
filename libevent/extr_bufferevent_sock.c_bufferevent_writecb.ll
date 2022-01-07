; ModuleID = '/home/carl/AnghaBench/libevent/extr_bufferevent_sock.c_bufferevent_writecb.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_bufferevent_sock.c_bufferevent_writecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32, i32, i32, i32 }
%struct.bufferevent_private = type { i64, i64, i64 }

@BEV_EVENT_WRITING = common dso_local global i16 0, align 2
@EV_TIMEOUT = common dso_local global i16 0, align 2
@BEV_EVENT_TIMEOUT = common dso_local global i16 0, align 2
@BEV_EVENT_ERROR = common dso_local global i16 0, align 2
@BEV_EVENT_CONNECTED = common dso_local global i16 0, align 2
@EV_WRITE = common dso_local global i32 0, align 4
@BEV_EVENT_EOF = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @bufferevent_writecb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bufferevent_writecb(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bufferevent*, align 8
  %8 = alloca %struct.bufferevent_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.bufferevent*
  store %struct.bufferevent* %16, %struct.bufferevent** %7, align 8
  %17 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %18 = call %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent* %17)
  store %struct.bufferevent_private* %18, %struct.bufferevent_private** %8, align 8
  store i32 0, i32* %9, align 4
  %19 = load i16, i16* @BEV_EVENT_WRITING, align 2
  store i16 %19, i16* %10, align 2
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %20 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %21 = call i32 @bufferevent_incref_and_lock_(%struct.bufferevent* %20)
  %22 = load i16, i16* %5, align 2
  %23 = sext i16 %22 to i32
  %24 = load i16, i16* @EV_TIMEOUT, align 2
  %25 = sext i16 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load i16, i16* @BEV_EVENT_TIMEOUT, align 2
  %29 = sext i16 %28 to i32
  %30 = load i16, i16* %10, align 2
  %31 = sext i16 %30 to i32
  %32 = or i32 %31, %29
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %10, align 2
  br label %188

34:                                               ; preds = %3
  %35 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %36 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %92

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @evutil_socket_finished_connecting_(i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %43 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %48 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  store i32 -1, i32* %13, align 4
  br label %49

49:                                               ; preds = %46, %39
  %50 = load i32, i32* %13, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %195

53:                                               ; preds = %49
  %54 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %55 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %60 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %59, i32 0, i32 1
  %61 = call i32 @event_del(i32* %60)
  %62 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %63 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %62, i32 0, i32 3
  %64 = call i32 @event_del(i32* %63)
  %65 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %66 = load i16, i16* @BEV_EVENT_ERROR, align 2
  %67 = call i32 @bufferevent_run_eventcb_(%struct.bufferevent* %65, i16 signext %66, i32 0)
  br label %195

68:                                               ; preds = %53
  store i32 1, i32* %11, align 4
  %69 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @bufferevent_socket_set_conn_address_fd_(%struct.bufferevent* %69, i32 %70)
  %72 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %73 = load i16, i16* @BEV_EVENT_CONNECTED, align 2
  %74 = call i32 @bufferevent_run_eventcb_(%struct.bufferevent* %72, i16 signext %73, i32 0)
  %75 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %76 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @EV_WRITE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %68
  %82 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %83 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81, %68
  %87 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %88 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %87, i32 0, i32 1
  %89 = call i32 @event_del(i32* %88)
  br label %195

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90
  br label %92

92:                                               ; preds = %91, %34
  %93 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %94 = call i32 @bufferevent_get_write_max_(%struct.bufferevent_private* %93)
  store i32 %94, i32* %12, align 4
  %95 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %96 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %195

100:                                              ; preds = %92
  %101 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %102 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @evbuffer_get_length(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %156

106:                                              ; preds = %100
  %107 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %108 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @evbuffer_unfreeze(i32 %109, i32 1)
  %111 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %112 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @evbuffer_write_atmost(i32 %113, i32 %114, i32 %115)
  store i32 %116, i32* %9, align 4
  %117 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %118 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @evbuffer_freeze(i32 %119, i32 1)
  %121 = load i32, i32* %9, align 4
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %137

123:                                              ; preds = %106
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @evutil_socket_geterror(i32 %124)
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %14, align 4
  %127 = call i64 @EVUTIL_ERR_RW_RETRIABLE(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %177

130:                                              ; preds = %123
  %131 = load i16, i16* @BEV_EVENT_ERROR, align 2
  %132 = sext i16 %131 to i32
  %133 = load i16, i16* %10, align 2
  %134 = sext i16 %133 to i32
  %135 = or i32 %134, %132
  %136 = trunc i32 %135 to i16
  store i16 %136, i16* %10, align 2
  br label %148

137:                                              ; preds = %106
  %138 = load i32, i32* %9, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %137
  %141 = load i16, i16* @BEV_EVENT_EOF, align 2
  %142 = sext i16 %141 to i32
  %143 = load i16, i16* %10, align 2
  %144 = sext i16 %143 to i32
  %145 = or i32 %144, %142
  %146 = trunc i32 %145 to i16
  store i16 %146, i16* %10, align 2
  br label %147

147:                                              ; preds = %140, %137
  br label %148

148:                                              ; preds = %147, %130
  %149 = load i32, i32* %9, align 4
  %150 = icmp sle i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  br label %188

152:                                              ; preds = %148
  %153 = load %struct.bufferevent_private*, %struct.bufferevent_private** %8, align 8
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @bufferevent_decrement_write_buckets_(%struct.bufferevent_private* %153, i32 %154)
  br label %156

156:                                              ; preds = %152, %100
  %157 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %158 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i64 @evbuffer_get_length(i32 %159)
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %156
  %163 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %164 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %163, i32 0, i32 1
  %165 = call i32 @event_del(i32* %164)
  br label %166

166:                                              ; preds = %162, %156
  %167 = load i32, i32* %9, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* %11, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %169, %166
  %173 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %174 = load i32, i32* @EV_WRITE, align 4
  %175 = call i32 @bufferevent_trigger_nolock_(%struct.bufferevent* %173, i32 %174, i32 0)
  br label %176

176:                                              ; preds = %172, %169
  br label %195

177:                                              ; preds = %129
  %178 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %179 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = call i64 @evbuffer_get_length(i32 %180)
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %177
  %184 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %185 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %184, i32 0, i32 1
  %186 = call i32 @event_del(i32* %185)
  br label %187

187:                                              ; preds = %183, %177
  br label %195

188:                                              ; preds = %151, %27
  %189 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %190 = load i32, i32* @EV_WRITE, align 4
  %191 = call i32 @bufferevent_disable(%struct.bufferevent* %189, i32 %190)
  %192 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %193 = load i16, i16* %10, align 2
  %194 = call i32 @bufferevent_run_eventcb_(%struct.bufferevent* %192, i16 signext %193, i32 0)
  br label %195

195:                                              ; preds = %188, %187, %176, %99, %86, %58, %52
  %196 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %197 = call i32 @bufferevent_decref_and_unlock_(%struct.bufferevent* %196)
  ret void
}

declare dso_local %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent*) #1

declare dso_local i32 @bufferevent_incref_and_lock_(%struct.bufferevent*) #1

declare dso_local i32 @evutil_socket_finished_connecting_(i32) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @bufferevent_run_eventcb_(%struct.bufferevent*, i16 signext, i32) #1

declare dso_local i32 @bufferevent_socket_set_conn_address_fd_(%struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_get_write_max_(%struct.bufferevent_private*) #1

declare dso_local i64 @evbuffer_get_length(i32) #1

declare dso_local i32 @evbuffer_unfreeze(i32, i32) #1

declare dso_local i32 @evbuffer_write_atmost(i32, i32, i32) #1

declare dso_local i32 @evbuffer_freeze(i32, i32) #1

declare dso_local i32 @evutil_socket_geterror(i32) #1

declare dso_local i64 @EVUTIL_ERR_RW_RETRIABLE(i32) #1

declare dso_local i32 @bufferevent_decrement_write_buckets_(%struct.bufferevent_private*, i32) #1

declare dso_local i32 @bufferevent_trigger_nolock_(%struct.bufferevent*, i32, i32) #1

declare dso_local i32 @bufferevent_disable(%struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_decref_and_unlock_(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
