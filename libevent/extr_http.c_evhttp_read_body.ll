; ModuleID = '/home/carl/AnghaBench/libevent/extr_http.c_evhttp_read_body.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_http.c_evhttp_read_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32, i32 }
%struct.evhttp_request = type { i64, i64, i32, %struct.evbuffer*, i32, i32 (%struct.evhttp_request*, i32)*, %struct.TYPE_2__*, i64 }
%struct.evbuffer = type { i32 }
%struct.TYPE_2__ = type { i64 }

@EVCON_READING_TRAILER = common dso_local global i32 0, align 4
@EVREQ_HTTP_DATA_TOO_LONG = common dso_local global i32 0, align 4
@EVREQ_HTTP_INVALID_HEADER = common dso_local global i32 0, align 4
@EVHTTP_REQ_DEFER_FREE = common dso_local global i32 0, align 4
@EVHTTP_REQ_NEEDS_FREE = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_connection*, %struct.evhttp_request*)* @evhttp_read_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evhttp_read_body(%struct.evhttp_connection* %0, %struct.evhttp_request* %1) #0 {
  %3 = alloca %struct.evhttp_connection*, align 8
  %4 = alloca %struct.evhttp_request*, align 8
  %5 = alloca %struct.evbuffer*, align 8
  %6 = alloca i64, align 8
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %3, align 8
  store %struct.evhttp_request* %1, %struct.evhttp_request** %4, align 8
  %7 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %8 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.evbuffer* @bufferevent_get_input(i32 %9)
  store %struct.evbuffer* %10, %struct.evbuffer** %5, align 8
  %11 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %12 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %11, i32 0, i32 7
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %2
  %16 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %17 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %18 = call i32 @evhttp_handle_chunked_read(%struct.evhttp_request* %16, %struct.evbuffer* %17)
  switch i32 %18, label %34 [
    i32 132, label %19
    i32 131, label %26
    i32 130, label %26
    i32 128, label %30
    i32 129, label %33
  ]

19:                                               ; preds = %15
  %20 = load i32, i32* @EVCON_READING_TRAILER, align 4
  %21 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %22 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %24 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %25 = call i32 @evhttp_read_trailer(%struct.evhttp_connection* %23, %struct.evhttp_request* %24)
  br label %207

26:                                               ; preds = %15, %15
  %27 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %28 = load i32, i32* @EVREQ_HTTP_DATA_TOO_LONG, align 4
  %29 = call i32 @evhttp_connection_fail_(%struct.evhttp_connection* %27, i32 %28)
  br label %207

30:                                               ; preds = %15
  %31 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %32 = call i32 @evhttp_request_free_auto(%struct.evhttp_request* %31)
  br label %207

33:                                               ; preds = %15
  br label %34

34:                                               ; preds = %15, %33
  br label %35

35:                                               ; preds = %34
  br label %111

36:                                               ; preds = %2
  %37 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %38 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %36
  %42 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %43 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %46 = call i64 @evbuffer_get_length(%struct.evbuffer* %45)
  %47 = add i64 %44, %46
  %48 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %49 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %54 = load i32, i32* @EVREQ_HTTP_INVALID_HEADER, align 4
  %55 = call i32 @evhttp_connection_fail_(%struct.evhttp_connection* %53, i32 %54)
  br label %207

56:                                               ; preds = %41
  %57 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %58 = call i64 @evbuffer_get_length(%struct.evbuffer* %57)
  %59 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %60 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, %58
  store i64 %62, i64* %60, align 8
  %63 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %64 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %63, i32 0, i32 3
  %65 = load %struct.evbuffer*, %struct.evbuffer** %64, align 8
  %66 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %67 = call i32 @evbuffer_add_buffer(%struct.evbuffer* %65, %struct.evbuffer* %66)
  br label %110

68:                                               ; preds = %36
  %69 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %70 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %69, i32 0, i32 5
  %71 = load i32 (%struct.evhttp_request*, i32)*, i32 (%struct.evhttp_request*, i32)** %70, align 8
  %72 = icmp ne i32 (%struct.evhttp_request*, i32)* %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %68
  %74 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %75 = call i64 @evbuffer_get_length(%struct.evbuffer* %74)
  %76 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %77 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp uge i64 %75, %78
  br i1 %79, label %80, label %109

80:                                               ; preds = %73, %68
  %81 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %82 = call i64 @evbuffer_get_length(%struct.evbuffer* %81)
  store i64 %82, i64* %6, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %85 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ugt i64 %83, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %90 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %6, align 8
  br label %92

92:                                               ; preds = %88, %80
  %93 = load i64, i64* %6, align 8
  %94 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %95 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = sub i64 %96, %93
  store i64 %97, i64* %95, align 8
  %98 = load i64, i64* %6, align 8
  %99 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %100 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %101, %98
  store i64 %102, i64* %100, align 8
  %103 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %104 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %105 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %104, i32 0, i32 3
  %106 = load %struct.evbuffer*, %struct.evbuffer** %105, align 8
  %107 = load i64, i64* %6, align 8
  %108 = call i32 @evbuffer_remove_buffer(%struct.evbuffer* %103, %struct.evbuffer* %106, i64 %107)
  br label %109

109:                                              ; preds = %92, %73
  br label %110

110:                                              ; preds = %109, %56
  br label %111

111:                                              ; preds = %110, %35
  %112 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %113 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %116 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %115, i32 0, i32 6
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ugt i64 %114, %119
  br i1 %120, label %141, label %121

121:                                              ; preds = %111
  %122 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %123 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %122, i32 0, i32 7
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %145, label %126

126:                                              ; preds = %121
  %127 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %128 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp sge i64 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %126
  %132 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %133 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %136 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %135, i32 0, i32 6
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ugt i64 %134, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %131, %111
  %142 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %143 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %144 = call i32 @evhttp_lingering_fail(%struct.evhttp_connection* %142, %struct.evhttp_request* %143)
  br label %207

145:                                              ; preds = %131, %126, %121
  %146 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %147 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %146, i32 0, i32 3
  %148 = load %struct.evbuffer*, %struct.evbuffer** %147, align 8
  %149 = call i64 @evbuffer_get_length(%struct.evbuffer* %148)
  %150 = icmp ugt i64 %149, 0
  br i1 %150, label %151, label %194

151:                                              ; preds = %145
  %152 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %153 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %152, i32 0, i32 5
  %154 = load i32 (%struct.evhttp_request*, i32)*, i32 (%struct.evhttp_request*, i32)** %153, align 8
  %155 = icmp ne i32 (%struct.evhttp_request*, i32)* %154, null
  br i1 %155, label %156, label %194

156:                                              ; preds = %151
  %157 = load i32, i32* @EVHTTP_REQ_DEFER_FREE, align 4
  %158 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %159 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  %162 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %163 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %162, i32 0, i32 5
  %164 = load i32 (%struct.evhttp_request*, i32)*, i32 (%struct.evhttp_request*, i32)** %163, align 8
  %165 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %166 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %167 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = call i32 %164(%struct.evhttp_request* %165, i32 %168)
  %170 = load i32, i32* @EVHTTP_REQ_DEFER_FREE, align 4
  %171 = xor i32 %170, -1
  %172 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %173 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = and i32 %174, %171
  store i32 %175, i32* %173, align 8
  %176 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %177 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %176, i32 0, i32 3
  %178 = load %struct.evbuffer*, %struct.evbuffer** %177, align 8
  %179 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %180 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %179, i32 0, i32 3
  %181 = load %struct.evbuffer*, %struct.evbuffer** %180, align 8
  %182 = call i64 @evbuffer_get_length(%struct.evbuffer* %181)
  %183 = call i32 @evbuffer_drain(%struct.evbuffer* %178, i64 %182)
  %184 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %185 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @EVHTTP_REQ_NEEDS_FREE, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %156
  %191 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %192 = call i32 @evhttp_request_free_auto(%struct.evhttp_request* %191)
  br label %207

193:                                              ; preds = %156
  br label %194

194:                                              ; preds = %193, %151, %145
  %195 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %196 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %207, label %199

199:                                              ; preds = %194
  %200 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %201 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @EV_READ, align 4
  %204 = call i32 @bufferevent_disable(i32 %202, i32 %203)
  %205 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %206 = call i32 @evhttp_connection_done(%struct.evhttp_connection* %205)
  br label %207

207:                                              ; preds = %19, %26, %30, %52, %141, %190, %199, %194
  ret void
}

declare dso_local %struct.evbuffer* @bufferevent_get_input(i32) #1

declare dso_local i32 @evhttp_handle_chunked_read(%struct.evhttp_request*, %struct.evbuffer*) #1

declare dso_local i32 @evhttp_read_trailer(%struct.evhttp_connection*, %struct.evhttp_request*) #1

declare dso_local i32 @evhttp_connection_fail_(%struct.evhttp_connection*, i32) #1

declare dso_local i32 @evhttp_request_free_auto(%struct.evhttp_request*) #1

declare dso_local i64 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_add_buffer(%struct.evbuffer*, %struct.evbuffer*) #1

declare dso_local i32 @evbuffer_remove_buffer(%struct.evbuffer*, %struct.evbuffer*, i64) #1

declare dso_local i32 @evhttp_lingering_fail(%struct.evhttp_connection*, %struct.evhttp_request*) #1

declare dso_local i32 @evbuffer_drain(%struct.evbuffer*, i64) #1

declare dso_local i32 @bufferevent_disable(i32, i32) #1

declare dso_local i32 @evhttp_connection_done(%struct.evhttp_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
