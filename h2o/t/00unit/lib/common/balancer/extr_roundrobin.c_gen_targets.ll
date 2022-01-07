; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/balancer/extr_roundrobin.c_gen_targets.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/balancer/extr_roundrobin.c_gen_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_11__**, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i64)* @gen_targets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_targets(%struct.TYPE_10__* noalias sret %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store i64 %1, i64* %3, align 8
  %6 = bitcast %struct.TYPE_10__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 24, i1 false)
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @h2o_vector_reserve(i32* null, %struct.TYPE_10__* %0, i64 %7)
  store i64 0, i64* %4, align 8
  br label %9

9:                                                ; preds = %26, %2
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = call %struct.TYPE_11__* @h2o_mem_alloc(i32 16)
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %5, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 1
  %23 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %23, i64 %24
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %25, align 8
  br label %26

26:                                               ; preds = %13
  %27 = load i64, i64* %4, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %4, align 8
  br label %9

29:                                               ; preds = %9
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @h2o_vector_reserve(i32*, %struct.TYPE_10__*, i64) #2

declare dso_local %struct.TYPE_11__* @h2o_mem_alloc(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
