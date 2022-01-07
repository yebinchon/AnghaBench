; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_le-proxy.c_eventcb.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_le-proxy.c_eventcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }

@BEV_EVENT_EOF = common dso_local global i16 0, align 2
@BEV_EVENT_ERROR = common dso_local global i16 0, align 2
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s in %s %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"connection error\00", align 1
@close_on_finished_writecb = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i16, i8*)* @eventcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eventcb(%struct.bufferevent* %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bufferevent*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.bufferevent*
  store %struct.bufferevent* %13, %struct.bufferevent** %7, align 8
  %14 = load i16, i16* %5, align 2
  %15 = sext i16 %14 to i32
  %16 = load i16, i16* @BEV_EVENT_EOF, align 2
  %17 = sext i16 %16 to i32
  %18 = load i16, i16* @BEV_EVENT_ERROR, align 2
  %19 = sext i16 %18 to i32
  %20 = or i32 %17, %19
  %21 = and i32 %15, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %81

23:                                               ; preds = %3
  %24 = load i16, i16* %5, align 2
  %25 = sext i16 %24 to i32
  %26 = load i16, i16* @BEV_EVENT_ERROR, align 2
  %27 = sext i16 %26 to i32
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %35, %30
  %32 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %33 = call i64 @bufferevent_get_openssl_error(%struct.bufferevent* %32)
  store i64 %33, i64* %8, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load i64, i64* %8, align 8
  %37 = call i64 @ERR_reason_error_string(i64 %36)
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %9, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @ERR_lib_error_string(i64 %39)
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %10, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i64 @ERR_func_error_string(i64 %42)
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %11, align 8
  %45 = load i32, i32* @stderr, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %46, i8* %47, i8* %48)
  br label %31

50:                                               ; preds = %31
  %51 = load i64, i64* @errno, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %50
  br label %56

56:                                               ; preds = %55, %23
  %57 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %58 = icmp ne %struct.bufferevent* %57, null
  br i1 %58, label %59, label %78

59:                                               ; preds = %56
  %60 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @readcb(%struct.bufferevent* %60, i8* %61)
  %63 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %64 = call i32 @bufferevent_get_output(%struct.bufferevent* %63)
  %65 = call i64 @evbuffer_get_length(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %59
  %68 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %69 = load i32, i32* @close_on_finished_writecb, align 4
  %70 = call i32 @bufferevent_setcb(%struct.bufferevent* %68, i32* null, i32 %69, void (%struct.bufferevent*, i16, i8*)* @eventcb, i32* null)
  %71 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %72 = load i32, i32* @EV_READ, align 4
  %73 = call i32 @bufferevent_disable(%struct.bufferevent* %71, i32 %72)
  br label %77

74:                                               ; preds = %59
  %75 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %76 = call i32 @bufferevent_free(%struct.bufferevent* %75)
  br label %77

77:                                               ; preds = %74, %67
  br label %78

78:                                               ; preds = %77, %56
  %79 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %80 = call i32 @bufferevent_free(%struct.bufferevent* %79)
  br label %81

81:                                               ; preds = %78, %3
  ret void
}

declare dso_local i64 @bufferevent_get_openssl_error(%struct.bufferevent*) #1

declare dso_local i64 @ERR_reason_error_string(i64) #1

declare dso_local i64 @ERR_lib_error_string(i64) #1

declare dso_local i64 @ERR_func_error_string(i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @readcb(%struct.bufferevent*, i8*) #1

declare dso_local i64 @evbuffer_get_length(i32) #1

declare dso_local i32 @bufferevent_get_output(%struct.bufferevent*) #1

declare dso_local i32 @bufferevent_setcb(%struct.bufferevent*, i32*, i32, void (%struct.bufferevent*, i16, i8*)*, i32*) #1

declare dso_local i32 @bufferevent_disable(%struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_free(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
