; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_memcached.c_h2o_memcached_create_context.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_memcached.c_h2o_memcached_create_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@SIZE_MAX = common dso_local global i32 0, align 4
@thread_main = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @h2o_memcached_create_context(i8* %0, i32 %1, i32 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_7__, align 4
  %13 = alloca %struct.TYPE_7__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %17 = call %struct.TYPE_6__* @h2o_mem_alloc(i32 40)
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %11, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 7
  %20 = call i32 @pthread_mutex_init(i32* %19, i32* null)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 6
  %23 = call i32 @pthread_cond_init(i32* %22, i32* null)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 5
  %26 = call i32 @h2o_linklist_init_anchor(i32* %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* @SIZE_MAX, align 4
  %31 = call i32 @h2o_strdup(i32* null, i8* %29, i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* @SIZE_MAX, align 4
  %47 = call i32 @h2o_strdup(i32* null, i8* %45, i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = bitcast %struct.TYPE_7__* %44 to i8*
  %50 = bitcast %struct.TYPE_7__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 4, i1 false)
  %51 = call i32 @pthread_attr_init(i32* %15)
  %52 = call i32 @pthread_attr_setdetachstate(i32* %15, i32 1)
  store i64 0, i64* %16, align 8
  br label %53

53:                                               ; preds = %61, %5
  %54 = load i64, i64* %16, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i32, i32* @thread_main, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %60 = call i32 @h2o_multithread_create_thread(i32* %14, i32* %15, i32 %58, %struct.TYPE_6__* %59)
  br label %61

61:                                               ; preds = %57
  %62 = load i64, i64* %16, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %16, align 8
  br label %53

64:                                               ; preds = %53
  %65 = call i32 @pthread_attr_destroy(i32* %15)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  ret %struct.TYPE_6__* %66
}

declare dso_local %struct.TYPE_6__* @h2o_mem_alloc(i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @h2o_linklist_init_anchor(i32*) #1

declare dso_local i32 @h2o_strdup(i32*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_setdetachstate(i32*, i32) #1

declare dso_local i32 @h2o_multithread_create_thread(i32*, i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @pthread_attr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
