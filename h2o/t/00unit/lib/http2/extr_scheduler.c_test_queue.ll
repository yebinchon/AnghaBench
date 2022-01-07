; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_scheduler.c_test_queue.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_scheduler.c_test_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_t = type { i32, i32, i64 }

@__const.test_queue.w256 = private unnamed_addr constant %struct.node_t { i32 0, i32 256, i64 0 }, align 8
@__const.test_queue.w128 = private unnamed_addr constant %struct.node_t { i32 0, i32 128, i64 0 }, align 8
@__const.test_queue.w32 = private unnamed_addr constant %struct.node_t { i32 0, i32 32, i64 0 }, align 8
@__const.test_queue.w1 = private unnamed_addr constant %struct.node_t { i32 0, i32 1, i64 0 }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_queue() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.node_t, align 8
  %3 = alloca %struct.node_t, align 8
  %4 = alloca %struct.node_t, align 8
  %5 = alloca %struct.node_t, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.node_t*, align 8
  %8 = bitcast %struct.node_t* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.node_t* @__const.test_queue.w256 to i8*), i64 16, i1 false)
  %9 = bitcast %struct.node_t* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.node_t* @__const.test_queue.w128 to i8*), i64 16, i1 false)
  %10 = bitcast %struct.node_t* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.node_t* @__const.test_queue.w32 to i8*), i64 16, i1 false)
  %11 = bitcast %struct.node_t* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%struct.node_t* @__const.test_queue.w1 to i8*), i64 16, i1 false)
  %12 = call i32 @queue_init(i32* %1)
  %13 = getelementptr inbounds %struct.node_t, %struct.node_t* %2, i32 0, i32 0
  %14 = call i32 @queue_set(i32* %1, i32* %13, i32 256)
  %15 = getelementptr inbounds %struct.node_t, %struct.node_t* %3, i32 0, i32 0
  %16 = call i32 @queue_set(i32* %1, i32* %15, i32 128)
  %17 = getelementptr inbounds %struct.node_t, %struct.node_t* %4, i32 0, i32 0
  %18 = call i32 @queue_set(i32* %1, i32* %17, i32 32)
  %19 = getelementptr inbounds %struct.node_t, %struct.node_t* %5, i32 0, i32 0
  %20 = call i32 @queue_set(i32* %1, i32* %19, i32 1)
  store i64 0, i64* %6, align 8
  br label %21

21:                                               ; preds = %42, %0
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 41700
  br i1 %23, label %24, label %45

24:                                               ; preds = %21
  %25 = call i64 @queue_pop(i32* %1)
  %26 = inttoptr i64 %25 to %struct.node_t*
  store %struct.node_t* %26, %struct.node_t** %7, align 8
  %27 = load %struct.node_t*, %struct.node_t** %7, align 8
  %28 = icmp eq %struct.node_t* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 @ok(i32 0)
  br label %66

31:                                               ; preds = %24
  %32 = load %struct.node_t*, %struct.node_t** %7, align 8
  %33 = getelementptr inbounds %struct.node_t, %struct.node_t* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.node_t*, %struct.node_t** %7, align 8
  %37 = getelementptr inbounds %struct.node_t, %struct.node_t* %36, i32 0, i32 0
  %38 = load %struct.node_t*, %struct.node_t** %7, align 8
  %39 = getelementptr inbounds %struct.node_t, %struct.node_t* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @queue_set(i32* %1, i32* %37, i32 %40)
  br label %42

42:                                               ; preds = %31
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %6, align 8
  br label %21

45:                                               ; preds = %21
  %46 = getelementptr inbounds %struct.node_t, %struct.node_t* %2, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 25600
  %49 = zext i1 %48 to i32
  %50 = call i32 @ok(i32 %49)
  %51 = getelementptr inbounds %struct.node_t, %struct.node_t* %3, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 12800
  %54 = zext i1 %53 to i32
  %55 = call i32 @ok(i32 %54)
  %56 = getelementptr inbounds %struct.node_t, %struct.node_t* %4, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 3200
  %59 = zext i1 %58 to i32
  %60 = call i32 @ok(i32 %59)
  %61 = getelementptr inbounds %struct.node_t, %struct.node_t* %5, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 100
  %64 = zext i1 %63 to i32
  %65 = call i32 @ok(i32 %64)
  br label %66

66:                                               ; preds = %45, %29
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @queue_init(i32*) #2

declare dso_local i32 @queue_set(i32*, i32*, i32) #2

declare dso_local i64 @queue_pop(i32*) #2

declare dso_local i32 @ok(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
