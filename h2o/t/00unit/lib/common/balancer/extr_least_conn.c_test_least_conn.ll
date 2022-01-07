; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/balancer/extr_least_conn.c_test_least_conn.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/balancer/extr_least_conn.c_test_least_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_least_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_least_conn() #0 {
  %1 = alloca %struct.TYPE_10__, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [10 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = call { i64, %struct.TYPE_9__** } @gen_targets(i32 10)
  %8 = bitcast %struct.TYPE_10__* %1 to { i64, %struct.TYPE_9__** }*
  %9 = getelementptr inbounds { i64, %struct.TYPE_9__** }, { i64, %struct.TYPE_9__** }* %8, i32 0, i32 0
  %10 = extractvalue { i64, %struct.TYPE_9__** } %7, 0
  store i64 %10, i64* %9, align 8
  %11 = getelementptr inbounds { i64, %struct.TYPE_9__** }, { i64, %struct.TYPE_9__** }* %8, i32 0, i32 1
  %12 = extractvalue { i64, %struct.TYPE_9__** } %7, 1
  store %struct.TYPE_9__** %12, %struct.TYPE_9__*** %11, align 8
  %13 = bitcast [10 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %13, i8 0, i64 10, i1 false)
  store i32 1, i32* %5, align 4
  %14 = call i32* (...) @h2o_balancer_create_lc()
  store i32* %14, i32** %6, align 8
  store i64 0, i64* %2, align 8
  br label %15

15:                                               ; preds = %57, %0
  %16 = load i64, i64* %2, align 8
  %17 = icmp ult i64 %16, 10000
  br i1 %17, label %18, label %60

18:                                               ; preds = %15
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %21 = call i64 @selector(i32* %19, %struct.TYPE_10__* %1, i8* %20)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = icmp ugt i64 %22, 10
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load i64, i64* %3, align 8
  %26 = icmp uge i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %28, %30
  br label %32

32:                                               ; preds = %27, %24
  %33 = phi i1 [ false, %24 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @ok(i32 %34)
  br label %66

36:                                               ; preds = %18
  %37 = load i64, i64* %3, align 8
  %38 = call i32 @check_if_acceptable(%struct.TYPE_10__* %1, i64 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @ok(i32 %45)
  br label %66

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  %49 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %48, align 8
  %50 = load i64, i64* %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %49, i64 %50
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %47
  %58 = load i64, i64* %2, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %2, align 8
  br label %15

60:                                               ; preds = %15
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @ok(i32 %64)
  br label %66

66:                                               ; preds = %60, %41, %32
  %67 = call i32 @free_targets(%struct.TYPE_10__* %1)
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @destroy(i32* %68)
  ret void
}

declare dso_local { i64, %struct.TYPE_9__** } @gen_targets(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @h2o_balancer_create_lc(...) #1

declare dso_local i64 @selector(i32*, %struct.TYPE_10__*, i8*) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @check_if_acceptable(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @free_targets(%struct.TYPE_10__*) #1

declare dso_local i32 @destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
