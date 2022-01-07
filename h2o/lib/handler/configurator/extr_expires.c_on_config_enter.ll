; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_expires.c_on_config_enter.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_expires.c_on_config_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expires_configurator_t = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

@H2O_EXPIRES_MODE_MAX_AGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @on_config_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config_enter(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.expires_configurator_t*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = bitcast i8* %9 to %struct.expires_configurator_t*
  store %struct.expires_configurator_t* %10, %struct.expires_configurator_t** %7, align 8
  %11 = load %struct.expires_configurator_t*, %struct.expires_configurator_t** %7, align 8
  %12 = getelementptr inbounds %struct.expires_configurator_t, %struct.expires_configurator_t* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %13, i64 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %46

17:                                               ; preds = %3
  %18 = load %struct.expires_configurator_t*, %struct.expires_configurator_t** %7, align 8
  %19 = getelementptr inbounds %struct.expires_configurator_t, %struct.expires_configurator_t* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @H2O_EXPIRES_MODE_MAX_AGE, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = call %struct.TYPE_2__* @h2o_mem_alloc(i32 8)
  %30 = load %struct.expires_configurator_t*, %struct.expires_configurator_t** %7, align 8
  %31 = getelementptr inbounds %struct.expires_configurator_t, %struct.expires_configurator_t* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 1
  store %struct.TYPE_2__* %29, %struct.TYPE_2__** %33, align 8
  %34 = load %struct.expires_configurator_t*, %struct.expires_configurator_t** %7, align 8
  %35 = getelementptr inbounds %struct.expires_configurator_t, %struct.expires_configurator_t* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %36, i64 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load %struct.expires_configurator_t*, %struct.expires_configurator_t** %7, align 8
  %40 = getelementptr inbounds %struct.expires_configurator_t, %struct.expires_configurator_t* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %41, i64 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = bitcast %struct.TYPE_2__* %38 to i8*
  %45 = bitcast %struct.TYPE_2__* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 8, i1 false)
  br label %51

46:                                               ; preds = %3
  %47 = load %struct.expires_configurator_t*, %struct.expires_configurator_t** %7, align 8
  %48 = getelementptr inbounds %struct.expires_configurator_t, %struct.expires_configurator_t* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %49, i64 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %50, align 8
  br label %51

51:                                               ; preds = %46, %17
  %52 = load %struct.expires_configurator_t*, %struct.expires_configurator_t** %7, align 8
  %53 = getelementptr inbounds %struct.expires_configurator_t, %struct.expires_configurator_t* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %54, i32 1
  store %struct.TYPE_2__** %55, %struct.TYPE_2__*** %53, align 8
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_2__* @h2o_mem_alloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
