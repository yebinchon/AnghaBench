; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/src/extr_cli.c_enqueue_requests.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/src/extr_cli.c_enqueue_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i64 }
%struct.TYPE_6__ = type { %struct.st_stream_data_t* }
%struct.st_stream_data_t = type { i32* }

@reqs = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"GET %s\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%s.downloaded\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"failed to open destination file:%s:%s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i32 0, align 4
@enqueue_requests_at = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @enqueue_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enqueue_requests(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1024 x i8], align 16
  %6 = alloca [1024 x i8], align 16
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.st_stream_data_t*, align 8
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %3, align 8
  br label %9

9:                                                ; preds = %75, %1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @reqs, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %78

16:                                               ; preds = %9
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @quicly_open_stream(i32* %17, %struct.TYPE_6__** %7, i32 0)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** @reqs, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %32 = call i32 @send_str(%struct.TYPE_6__* %30, i8* %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = call i32 @quicly_streambuf_egress_shutdown(%struct.TYPE_6__* %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** @reqs, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %16
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.st_stream_data_t*, %struct.st_stream_data_t** %43, align 8
  store %struct.st_stream_data_t* %44, %struct.st_stream_data_t** %8, align 8
  %45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** @reqs, align 8
  %47 = load i64, i64* %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @strrchr(i8* %50, i8 signext 47)
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = call i32 @sprintf(i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %55 = call i32* @fopen(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.st_stream_data_t*, %struct.st_stream_data_t** %8, align 8
  %57 = getelementptr inbounds %struct.st_stream_data_t, %struct.st_stream_data_t* %56, i32 0, i32 0
  store i32* %55, i32** %57, align 8
  %58 = load %struct.st_stream_data_t*, %struct.st_stream_data_t** %8, align 8
  %59 = getelementptr inbounds %struct.st_stream_data_t, %struct.st_stream_data_t* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %73

62:                                               ; preds = %41
  %63 = load i32, i32* @stderr, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** @reqs, align 8
  %65 = load i64, i64* %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* @errno, align 4
  %70 = call i8* @strerror(i32 %69)
  %71 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %68, i8* %70)
  %72 = call i32 @exit(i32 1) #3
  unreachable

73:                                               ; preds = %41
  br label %74

74:                                               ; preds = %73, %16
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %3, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %3, align 8
  br label %9

78:                                               ; preds = %9
  %79 = load i32, i32* @INT64_MAX, align 4
  store i32 %79, i32* @enqueue_requests_at, align 4
  ret void
}

declare dso_local i32 @quicly_open_stream(i32*, %struct.TYPE_6__**, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @send_str(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @quicly_streambuf_egress_shutdown(%struct.TYPE_6__*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
