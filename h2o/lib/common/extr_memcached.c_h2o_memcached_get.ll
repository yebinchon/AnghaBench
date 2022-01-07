; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_memcached.c_h2o_memcached_get.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_memcached.c_h2o_memcached_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i8*, i32, i32* }

@REQ_TYPE_GET = common dso_local global i32 0, align 4
@H2O_MEMCACHED_ENCODE_KEY = common dso_local global i32 0, align 4
@H2O_MEMCACHED_ENCODE_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @h2o_memcached_get(i32* %0, i32* %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* @REQ_TYPE_GET, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @H2O_MEMCACHED_ENCODE_KEY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call %struct.TYPE_9__* @create_req(i32* %14, i32 %15, i32 %16, i32 %21)
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %13, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  store i32* %23, i32** %27, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  store i32 %28, i32* %32, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  store i8* %33, i8** %37, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @H2O_MEMCACHED_ENCODE_VALUE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %49 = call i32 @dispatch(i32* %47, %struct.TYPE_9__* %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  ret %struct.TYPE_9__* %50
}

declare dso_local %struct.TYPE_9__* @create_req(i32*, i32, i32, i32) #1

declare dso_local i32 @dispatch(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
