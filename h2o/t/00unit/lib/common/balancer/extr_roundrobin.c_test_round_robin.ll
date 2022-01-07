; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/balancer/extr_roundrobin.c_test_round_robin.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/balancer/extr_roundrobin.c_test_round_robin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_round_robin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_round_robin() #0 {
  %1 = alloca %struct.TYPE_12__, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [10 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = call { i64, %struct.TYPE_11__** } @gen_targets(i32 10)
  %10 = bitcast %struct.TYPE_12__* %1 to { i64, %struct.TYPE_11__** }*
  %11 = getelementptr inbounds { i64, %struct.TYPE_11__** }, { i64, %struct.TYPE_11__** }* %10, i32 0, i32 0
  %12 = extractvalue { i64, %struct.TYPE_11__** } %9, 0
  store i64 %12, i64* %11, align 8
  %13 = getelementptr inbounds { i64, %struct.TYPE_11__** }, { i64, %struct.TYPE_11__** }* %10, i32 0, i32 1
  %14 = extractvalue { i64, %struct.TYPE_11__** } %9, 1
  store %struct.TYPE_11__** %14, %struct.TYPE_11__*** %13, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %15 = bitcast [10 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %15, i8 0, i64 10, i1 false)
  store i32 1, i32* %7, align 4
  %16 = call i32* (...) @h2o_balancer_create_rr()
  store i32* %16, i32** %8, align 8
  store i64 0, i64* %2, align 8
  br label %17

17:                                               ; preds = %36, %0
  %18 = load i64, i64* %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %24 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %23, align 8
  %25 = load i64, i64* %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %24, i64 %25
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = add i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %5, align 8
  br label %36

36:                                               ; preds = %22
  %37 = load i64, i64* %2, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %2, align 8
  br label %17

39:                                               ; preds = %17
  %40 = load i64, i64* %5, align 8
  %41 = mul i64 %40, 1000
  store i64 %41, i64* %5, align 8
  store i64 0, i64* %2, align 8
  br label %42

42:                                               ; preds = %100, %39
  %43 = load i64, i64* %2, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %103

46:                                               ; preds = %42
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %49 = call i64 @selector(i32* %47, %struct.TYPE_12__* %1, i8* %48)
  store i64 %49, i64* %3, align 8
  %50 = load i64, i64* %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ugt i64 %50, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %46
  %55 = load i64, i64* %3, align 8
  %56 = icmp uge i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i64, i64* %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ult i64 %58, %60
  br label %62

62:                                               ; preds = %57, %54
  %63 = phi i1 [ false, %54 ], [ %61, %57 ]
  %64 = zext i1 %63 to i32
  %65 = call i32 @ok(i32 %64)
  br label %106

66:                                               ; preds = %46
  %67 = load i64, i64* %3, align 8
  %68 = load i64, i64* %4, align 8
  %69 = icmp uge i64 %67, %68
  br i1 %69, label %81, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub i64 %73, 1
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i64, i64* %3, align 8
  %78 = icmp eq i64 %77, 0
  br label %79

79:                                               ; preds = %76, %70
  %80 = phi i1 [ false, %70 ], [ %78, %76 ]
  br label %81

81:                                               ; preds = %79, %66
  %82 = phi i1 [ true, %66 ], [ %80, %79 ]
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @ok(i32 %87)
  br label %106

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %91 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %90, align 8
  %92 = load i64, i64* %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %91, i64 %92
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  %99 = load i64, i64* %3, align 8
  store i64 %99, i64* %4, align 8
  br label %100

100:                                              ; preds = %89
  %101 = load i64, i64* %2, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %2, align 8
  br label %42

103:                                              ; preds = %42
  %104 = call i32 @check_weight_distribution(%struct.TYPE_12__* %1)
  %105 = call i32 @ok(i32 %104)
  br label %106

106:                                              ; preds = %103, %86, %62
  %107 = load i32*, i32** %8, align 8
  %108 = call i32 @destroy(i32* %107)
  %109 = call i32 @free_targets(%struct.TYPE_12__* %1)
  ret void
}

declare dso_local { i64, %struct.TYPE_11__** } @gen_targets(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @h2o_balancer_create_rr(...) #1

declare dso_local i64 @selector(i32*, %struct.TYPE_12__*, i8*) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @check_weight_distribution(%struct.TYPE_12__*) #1

declare dso_local i32 @destroy(i32*) #1

declare dso_local i32 @free_targets(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
