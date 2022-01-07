; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/balancer/extr_least_conn.c_test_least_conn_weighted.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/balancer/extr_least_conn.c_test_least_conn_weighted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_least_conn_weighted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_least_conn_weighted() #0 {
  %1 = alloca %struct.TYPE_12__, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [10 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = call { i64, %struct.TYPE_11__** } @gen_targets(i32 10)
  %8 = bitcast %struct.TYPE_12__* %1 to { i64, %struct.TYPE_11__** }*
  %9 = getelementptr inbounds { i64, %struct.TYPE_11__** }, { i64, %struct.TYPE_11__** }* %8, i32 0, i32 0
  %10 = extractvalue { i64, %struct.TYPE_11__** } %7, 0
  store i64 %10, i64* %9, align 8
  %11 = getelementptr inbounds { i64, %struct.TYPE_11__** }, { i64, %struct.TYPE_11__** }* %8, i32 0, i32 1
  %12 = extractvalue { i64, %struct.TYPE_11__** } %7, 1
  store %struct.TYPE_11__** %12, %struct.TYPE_11__*** %11, align 8
  %13 = bitcast [10 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %13, i8 0, i64 10, i1 false)
  store i32 1, i32* %5, align 4
  %14 = call i32* (...) @h2o_balancer_create_lc()
  store i32* %14, i32** %6, align 8
  store i64 0, i64* %2, align 8
  br label %15

15:                                               ; preds = %28, %0
  %16 = load i64, i64* %2, align 8
  %17 = icmp ult i64 %16, 10
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load i64, i64* %2, align 8
  %20 = urem i64 %19, 3
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %22 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %21, align 8
  %23 = load i64, i64* %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %22, i64 %23
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i64 %20, i64* %27, align 8
  br label %28

28:                                               ; preds = %18
  %29 = load i64, i64* %2, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %2, align 8
  br label %15

31:                                               ; preds = %15
  store i64 0, i64* %2, align 8
  br label %32

32:                                               ; preds = %74, %31
  %33 = load i64, i64* %2, align 8
  %34 = icmp ult i64 %33, 10000
  br i1 %34, label %35, label %77

35:                                               ; preds = %32
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %38 = call i64 @selector(i32* %36, %struct.TYPE_12__* %1, i8* %37)
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* %3, align 8
  %40 = icmp ugt i64 %39, 10
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load i64, i64* %3, align 8
  %43 = icmp uge i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i64, i64* %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %45, %47
  br label %49

49:                                               ; preds = %44, %41
  %50 = phi i1 [ false, %41 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @ok(i32 %51)
  br label %83

53:                                               ; preds = %35
  %54 = load i64, i64* %3, align 8
  %55 = call i32 @check_if_acceptable(%struct.TYPE_12__* %1, i64 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @ok(i32 %62)
  br label %83

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %66 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %65, align 8
  %67 = load i64, i64* %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %66, i64 %67
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %64
  %75 = load i64, i64* %2, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %2, align 8
  br label %32

77:                                               ; preds = %32
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @ok(i32 %81)
  br label %83

83:                                               ; preds = %77, %58, %49
  %84 = call i32 @free_targets(%struct.TYPE_12__* %1)
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @destroy(i32* %85)
  ret void
}

declare dso_local { i64, %struct.TYPE_11__** } @gen_targets(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @h2o_balancer_create_lc(...) #1

declare dso_local i64 @selector(i32*, %struct.TYPE_12__*, i8*) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @check_if_acceptable(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @free_targets(%struct.TYPE_12__*) #1

declare dso_local i32 @destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
