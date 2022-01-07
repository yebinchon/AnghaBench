; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfile.c_delegate_dynamic_request.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfile.c_delegate_dynamic_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_23__*, i32, i32 }
%struct.TYPE_23__ = type { i32, i8*, i8* }
%struct.TYPE_21__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_22__** }
%struct.TYPE_22__ = type { i32 (%struct.TYPE_22__*, %struct.TYPE_20__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i8*, i8*, i8*, i64, %struct.TYPE_21__*)* @delegate_dynamic_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delegate_dynamic_request(%struct.TYPE_20__* %0, i8* %1, i8* %2, i8* %3, i64 %4, %struct.TYPE_21__* %5) #0 {
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.TYPE_21__* %5, %struct.TYPE_21__** %12, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 1
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %28 = call %struct.TYPE_23__* @h2o_mem_alloc_pool(i32* %26, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %27, i32 1)
  store %struct.TYPE_23__* %28, %struct.TYPE_23__** %13, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 2
  %37 = load i8*, i8** %10, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @h2o_strdup(i32* %36, i8* %37, i64 %38)
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = call i32 @h2o_req_bind_conf(%struct.TYPE_20__* %42, i32 %45, %struct.TYPE_16__* %49)
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  store %struct.TYPE_23__* %51, %struct.TYPE_23__** %53, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %60, i64 0
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %61, align 8
  store %struct.TYPE_22__* %62, %struct.TYPE_22__** %14, align 8
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = load i32 (%struct.TYPE_22__*, %struct.TYPE_20__*)*, i32 (%struct.TYPE_22__*, %struct.TYPE_20__*)** %64, align 8
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %68 = call i32 %65(%struct.TYPE_22__* %66, %struct.TYPE_20__* %67)
  ret i32 %68
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_23__* @h2o_mem_alloc_pool(i32*, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8, i32) #1

declare dso_local i32 @h2o_strdup(i32*, i8*, i64) #1

declare dso_local i32 @h2o_req_bind_conf(%struct.TYPE_20__*, i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
