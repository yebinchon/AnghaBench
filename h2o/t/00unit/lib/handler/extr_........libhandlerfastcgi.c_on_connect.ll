; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfastcgi.c_on_connect.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfastcgi.c_on_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.st_fcgi_generator_t* }
%struct.st_fcgi_generator_t = type { %struct.TYPE_9__*, %struct.TYPE_11__*, i32, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@MODULE_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"connection failed:%s\00", align 1
@on_send_complete = common dso_local global i32 0, align 4
@on_rw_timeout = common dso_local global i32 0, align 4
@on_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i8*, i8*, i32*)* @on_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_connect(%struct.TYPE_11__* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.st_fcgi_generator_t*, align 8
  %10 = alloca %struct.TYPE_10__, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.st_fcgi_generator_t*
  store %struct.st_fcgi_generator_t* %12, %struct.st_fcgi_generator_t** %9, align 8
  %13 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %9, align 8
  %14 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %13, i32 0, i32 3
  store i32* null, i32** %14, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = icmp eq %struct.TYPE_11__* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %4
  %18 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %9, align 8
  %19 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MODULE_NAME, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @h2o_req_log_error(i32 %20, i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %9, align 8
  %25 = call i32 @errorclose(%struct.st_fcgi_generator_t* %24)
  br label %62

26:                                               ; preds = %4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %9, align 8
  %29 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %28, i32 0, i32 1
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %29, align 8
  %30 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %9, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  store %struct.st_fcgi_generator_t* %30, %struct.st_fcgi_generator_t** %32, align 8
  %33 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %9, align 8
  %34 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %9, align 8
  %37 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = call i32 @build_request(i32 %35, %struct.TYPE_10__* %10, i32 1, i32 65535, %struct.TYPE_12__* %39)
  %41 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %9, align 8
  %42 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %41, i32 0, i32 1
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @on_send_complete, align 4
  %49 = call i32 @h2o_socket_write(%struct.TYPE_11__* %43, i32 %45, i32 %47, i32 %48)
  %50 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %9, align 8
  %51 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %9, align 8
  %52 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @on_rw_timeout, align 4
  %58 = call i32 @set_timeout(%struct.st_fcgi_generator_t* %50, i32 %56, i32 %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = load i32, i32* @on_read, align 4
  %61 = call i32 @h2o_socket_read_start(%struct.TYPE_11__* %59, i32 %60)
  br label %62

62:                                               ; preds = %26, %17
  ret void
}

declare dso_local i32 @h2o_req_log_error(i32, i32, i8*, i8*) #1

declare dso_local i32 @errorclose(%struct.st_fcgi_generator_t*) #1

declare dso_local i32 @build_request(i32, %struct.TYPE_10__*, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @h2o_socket_write(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @set_timeout(%struct.st_fcgi_generator_t*, i32, i32) #1

declare dso_local i32 @h2o_socket_read_start(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
