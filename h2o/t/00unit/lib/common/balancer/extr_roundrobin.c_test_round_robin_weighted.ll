; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/balancer/extr_roundrobin.c_test_round_robin_weighted.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/balancer/extr_roundrobin.c_test_round_robin_weighted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_round_robin_weighted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_round_robin_weighted() #0 {
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
  store i64 0, i64* %2, align 8
  br label %16

16:                                               ; preds = %29, %0
  %17 = load i64, i64* %2, align 8
  %18 = icmp ult i64 %17, 10
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load i64, i64* %2, align 8
  %21 = urem i64 %20, 3
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %23 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %22, align 8
  %24 = load i64, i64* %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %23, i64 %24
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i64 %21, i64* %28, align 8
  br label %29

29:                                               ; preds = %19
  %30 = load i64, i64* %2, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %2, align 8
  br label %16

32:                                               ; preds = %16
  %33 = call i32* (...) @h2o_balancer_create_rr()
  store i32* %33, i32** %8, align 8
  store i64 0, i64* %2, align 8
  br label %34

34:                                               ; preds = %53, %32
  %35 = load i64, i64* %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %41 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %40, align 8
  %42 = load i64, i64* %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %41, i64 %42
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = add i32 %48, 1
  %50 = zext i32 %49 to i64
  %51 = load i64, i64* %5, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %39
  %54 = load i64, i64* %2, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %2, align 8
  br label %34

56:                                               ; preds = %34
  %57 = load i64, i64* %5, align 8
  %58 = mul i64 %57, 1000
  store i64 %58, i64* %5, align 8
  store i64 0, i64* %2, align 8
  br label %59

59:                                               ; preds = %117, %56
  %60 = load i64, i64* %2, align 8
  %61 = load i64, i64* %5, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %120

63:                                               ; preds = %59
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %66 = call i64 @selector(i32* %64, %struct.TYPE_12__* %1, i8* %65)
  store i64 %66, i64* %3, align 8
  %67 = load i64, i64* %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ugt i64 %67, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %63
  %72 = load i64, i64* %3, align 8
  %73 = icmp uge i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i64, i64* %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ult i64 %75, %77
  br label %79

79:                                               ; preds = %74, %71
  %80 = phi i1 [ false, %71 ], [ %78, %74 ]
  %81 = zext i1 %80 to i32
  %82 = call i32 @ok(i32 %81)
  br label %123

83:                                               ; preds = %63
  %84 = load i64, i64* %3, align 8
  %85 = load i64, i64* %4, align 8
  %86 = icmp uge i64 %84, %85
  br i1 %86, label %98, label %87

87:                                               ; preds = %83
  %88 = load i64, i64* %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = sub i64 %90, 1
  %92 = icmp eq i64 %88, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i64, i64* %3, align 8
  %95 = icmp eq i64 %94, 0
  br label %96

96:                                               ; preds = %93, %87
  %97 = phi i1 [ false, %87 ], [ %95, %93 ]
  br label %98

98:                                               ; preds = %96, %83
  %99 = phi i1 [ true, %83 ], [ %97, %96 ]
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @ok(i32 %104)
  br label %123

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %108 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %107, align 8
  %109 = load i64, i64* %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %108, i64 %109
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  %116 = load i64, i64* %3, align 8
  store i64 %116, i64* %4, align 8
  br label %117

117:                                              ; preds = %106
  %118 = load i64, i64* %2, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %2, align 8
  br label %59

120:                                              ; preds = %59
  %121 = call i32 @check_weight_distribution(%struct.TYPE_12__* %1)
  %122 = call i32 @ok(i32 %121)
  br label %123

123:                                              ; preds = %120, %103, %79
  %124 = load i32*, i32** %8, align 8
  %125 = call i32 @destroy(i32* %124)
  %126 = call i32 @free_targets(%struct.TYPE_12__* %1)
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
