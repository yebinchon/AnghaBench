; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/core/extr_........libcoreutil.c_create_accept_data.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/core/extr_........libcoreutil.c_create_accept_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_accept_data_t = type { %struct.timeval, i32, i32*, %struct.TYPE_7__* }
%struct.timeval = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.st_h2o_accept_data_t* (%struct.TYPE_7__*, i32*, i32, i32, i64)* @create_accept_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.st_h2o_accept_data_t* @create_accept_data(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.timeval, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.st_h2o_accept_data_t*, align 8
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 %2, i32* %12, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %13 = load i64, i64* %10, align 8
  %14 = call %struct.st_h2o_accept_data_t* @h2o_mem_alloc(i64 %13)
  store %struct.st_h2o_accept_data_t* %14, %struct.st_h2o_accept_data_t** %11, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %16 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %11, align 8
  %17 = getelementptr inbounds %struct.st_h2o_accept_data_t, %struct.st_h2o_accept_data_t* %16, i32 0, i32 3
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %17, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %11, align 8
  %20 = getelementptr inbounds %struct.st_h2o_accept_data_t, %struct.st_h2o_accept_data_t* %19, i32 0, i32 2
  store i32* %18, i32** %20, align 8
  %21 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %11, align 8
  %22 = getelementptr inbounds %struct.st_h2o_accept_data_t, %struct.st_h2o_accept_data_t* %21, i32 0, i32 1
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @h2o_timer_init(i32* %22, i32 %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %11, align 8
  %38 = getelementptr inbounds %struct.st_h2o_accept_data_t, %struct.st_h2o_accept_data_t* %37, i32 0, i32 1
  %39 = call i32 @h2o_timer_link(i32 %29, i32 %36, i32* %38)
  %40 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %11, align 8
  %41 = getelementptr inbounds %struct.st_h2o_accept_data_t, %struct.st_h2o_accept_data_t* %40, i32 0, i32 0
  %42 = bitcast %struct.timeval* %41 to i8*
  %43 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 4 %43, i64 4, i1 false)
  %44 = load %struct.st_h2o_accept_data_t*, %struct.st_h2o_accept_data_t** %11, align 8
  ret %struct.st_h2o_accept_data_t* %44
}

declare dso_local %struct.st_h2o_accept_data_t* @h2o_mem_alloc(i64) #1

declare dso_local i32 @h2o_timer_init(i32*, i32) #1

declare dso_local i32 @h2o_timer_link(i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
