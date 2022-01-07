; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/balancer/extr_roundrobin.c_selector.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/balancer/extr_roundrobin.c_selector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.round_robin_t = type { i64, i64, i32 }

@.str = private unnamed_addr constant [12 x i8] c"unreachable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_8__*, i8*)* @selector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @selector(i32* %0, %struct.TYPE_8__* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.round_robin_t*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %9, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = bitcast i32* %11 to i8*
  %13 = bitcast i8* %12 to %struct.round_robin_t*
  store %struct.round_robin_t* %13, %struct.round_robin_t** %10, align 8
  %14 = load %struct.round_robin_t*, %struct.round_robin_t** %10, align 8
  %15 = getelementptr inbounds %struct.round_robin_t, %struct.round_robin_t* %14, i32 0, i32 2
  %16 = call i32 @pthread_mutex_lock(i32* %15)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  store i64 0, i64* %8, align 8
  br label %23

23:                                               ; preds = %71, %3
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %74

29:                                               ; preds = %23
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.round_robin_t*, %struct.round_robin_t** %10, align 8
  %32 = getelementptr inbounds %struct.round_robin_t, %struct.round_robin_t* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %66, label %37

37:                                               ; preds = %29
  %38 = load %struct.round_robin_t*, %struct.round_robin_t** %10, align 8
  %39 = getelementptr inbounds %struct.round_robin_t, %struct.round_robin_t* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %9, align 8
  %41 = load %struct.round_robin_t*, %struct.round_robin_t** %10, align 8
  %42 = getelementptr inbounds %struct.round_robin_t, %struct.round_robin_t* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %46, align 8
  %48 = load %struct.round_robin_t*, %struct.round_robin_t** %10, align 8
  %49 = getelementptr inbounds %struct.round_robin_t, %struct.round_robin_t* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %47, i64 %50
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %44, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %37
  %58 = load %struct.round_robin_t*, %struct.round_robin_t** %10, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = call i32 @select_next(%struct.round_robin_t* %58, %struct.TYPE_8__* %59)
  br label %61

61:                                               ; preds = %57, %37
  %62 = load %struct.round_robin_t*, %struct.round_robin_t** %10, align 8
  %63 = getelementptr inbounds %struct.round_robin_t, %struct.round_robin_t* %62, i32 0, i32 2
  %64 = call i32 @pthread_mutex_unlock(i32* %63)
  %65 = load i64, i64* %9, align 8
  store i64 %65, i64* %4, align 8
  br label %76

66:                                               ; preds = %29
  %67 = load %struct.round_robin_t*, %struct.round_robin_t** %10, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = call i32 @select_next(%struct.round_robin_t* %67, %struct.TYPE_8__* %68)
  br label %70

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %8, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %8, align 8
  br label %23

74:                                               ; preds = %23
  %75 = call i32 @h2o_fatal(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %61
  %77 = load i64, i64* %4, align 8
  ret i64 %77
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @select_next(%struct.round_robin_t*, %struct.TYPE_8__*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @h2o_fatal(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
