; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfastcgi.c_on_req.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfastcgi.c_on_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__, %struct.TYPE_17__ }
%struct.TYPE_14__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__** }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.st_fcgi_generator_t = type { i32, i32, %struct.TYPE_13__*, %struct.TYPE_16__, i64, i32*, %struct.TYPE_23__*, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }

@close_generator = common dso_local global i64 0, align 8
@do_proceed = common dso_local global i32 0, align 4
@do_stop = common dso_local global i32 0, align 4
@h2o_socket_buffer_prototype = common dso_local global i32 0, align 4
@on_connect_timeout = common dso_local global i32 0, align 4
@on_connect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_23__*)* @on_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_req(i32* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.st_fcgi_generator_t*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32* %7 to i8*
  %9 = bitcast i8* %8 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %5, align 8
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 1
  %12 = load i64, i64* @close_generator, align 8
  %13 = inttoptr i64 %12 to void (i8*)*
  %14 = call %struct.st_fcgi_generator_t* @h2o_mem_alloc_shared(i32* %11, i32 56, void (i8*)* %13)
  store %struct.st_fcgi_generator_t* %14, %struct.st_fcgi_generator_t** %6, align 8
  %15 = load i32, i32* @do_proceed, align 4
  %16 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %6, align 8
  %17 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %16, i32 0, i32 7
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @do_stop, align 4
  %20 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %6, align 8
  %21 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %20, i32 0, i32 7
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %6, align 8
  %25 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %24, i32 0, i32 2
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %25, align 8
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %27 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %6, align 8
  %28 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %27, i32 0, i32 6
  store %struct.TYPE_23__* %26, %struct.TYPE_23__** %28, align 8
  %29 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %6, align 8
  %30 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %29, i32 0, i32 5
  store i32* null, i32** %30, align 8
  %31 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %6, align 8
  %32 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %6, align 8
  %34 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = call i32 @h2o_doublebuffer_init(i32* %35, i32* @h2o_socket_buffer_prototype)
  %37 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %6, align 8
  %38 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = call i32 @h2o_buffer_init(i32* %39, i32* @h2o_socket_buffer_prototype)
  %41 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %6, align 8
  %42 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %41, i32 0, i32 1
  %43 = load i32, i32* @on_connect_timeout, align 4
  %44 = call i32 @h2o_timer_init(i32* %42, i32 %43)
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %6, align 8
  %53 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %52, i32 0, i32 2
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %6, align 8
  %59 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %58, i32 0, i32 1
  %60 = call i32 @h2o_timer_link(i32 %51, i32 %57, i32* %59)
  %61 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %6, align 8
  %62 = getelementptr inbounds %struct.st_fcgi_generator_t, %struct.st_fcgi_generator_t* %61, i32 0, i32 0
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %69, i64 0
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  %87 = call i32 @h2o_iovec_init(i32* null, i32 0)
  %88 = load i32, i32* @on_connect, align 4
  %89 = load %struct.st_fcgi_generator_t*, %struct.st_fcgi_generator_t** %6, align 8
  %90 = call i32 @h2o_socketpool_connect(i32* %62, %struct.TYPE_14__* %64, i32* %72, i32 %79, i32* %86, i32 %87, i32 %88, %struct.st_fcgi_generator_t* %89)
  ret i32 0
}

declare dso_local %struct.st_fcgi_generator_t* @h2o_mem_alloc_shared(i32*, i32, void (i8*)*) #1

declare dso_local i32 @h2o_doublebuffer_init(i32*, i32*) #1

declare dso_local i32 @h2o_buffer_init(i32*, i32*) #1

declare dso_local i32 @h2o_timer_init(i32*, i32) #1

declare dso_local i32 @h2o_timer_link(i32, i32, i32*) #1

declare dso_local i32 @h2o_socketpool_connect(i32*, %struct.TYPE_14__*, i32*, i32, i32*, i32, i32, %struct.st_fcgi_generator_t*) #1

declare dso_local i32 @h2o_iovec_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
