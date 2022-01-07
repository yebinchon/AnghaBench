; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_half_writecb.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_http.c_http_half_writecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }

@test_ok = common dso_local global i32 0, align 4
@__const.http_half_writecb.http_request = private unnamed_addr constant [28 x i8] c"host\0D\0AConnection: close\0D\0A\0D\0A\00", align 16
@EV_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i8*)* @http_half_writecb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_half_writecb(%struct.bufferevent* %0, i8* %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [28 x i8], align 16
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %7 = call i32 @bufferevent_get_output(%struct.bufferevent* %6)
  %8 = call i64 @evbuffer_get_length(i32 %7)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load i32, i32* @test_ok, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = bitcast [28 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 getelementptr inbounds ([28 x i8], [28 x i8]* @__const.http_half_writecb.http_request, i32 0, i32 0), i64 28, i1 false)
  %15 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %16 = getelementptr inbounds [28 x i8], [28 x i8]* %5, i64 0, i64 0
  %17 = getelementptr inbounds [28 x i8], [28 x i8]* %5, i64 0, i64 0
  %18 = call i32 @strlen(i8* %17)
  %19 = call i32 @bufferevent_write(%struct.bufferevent* %15, i8* %16, i32 %18)
  br label %20

20:                                               ; preds = %13, %10
  %21 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %22 = load i32, i32* @EV_READ, align 4
  %23 = call i32 @bufferevent_enable(%struct.bufferevent* %21, i32 %22)
  %24 = load i32, i32* @test_ok, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @test_ok, align 4
  br label %26

26:                                               ; preds = %20, %2
  ret void
}

declare dso_local i64 @evbuffer_get_length(i32) #1

declare dso_local i32 @bufferevent_get_output(%struct.bufferevent*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bufferevent_write(%struct.bufferevent*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @bufferevent_enable(%struct.bufferevent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
