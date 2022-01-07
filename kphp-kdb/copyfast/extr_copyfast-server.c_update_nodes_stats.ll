; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-server.c_update_nodes_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-server.c_update_nodes_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@prefailed_nodes = common dso_local global i64 0, align 8
@failed_nodes = common dso_local global i64 0, align 8
@total_binlog_size = common dso_local global i64 0, align 8
@minimal_binlog_size = common dso_local global i32 0, align 4
@maximal_binlog_size = common dso_local global i32 0, align 4
@total = common dso_local global i64 0, align 8
@nodes_num = common dso_local global i32 0, align 4
@nodes = common dso_local global %struct.TYPE_6__* null, align 8
@precise_now = common dso_local global i32 0, align 4
@DEFAULT_CHILDREN_RENEW_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_nodes_stats(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i64 0, i64* @prefailed_nodes, align 8
  store i64 0, i64* @failed_nodes, align 8
  store i64 0, i64* @total_binlog_size, align 8
  store i32 -1, i32* @minimal_binlog_size, align 4
  store i32 0, i32* @maximal_binlog_size, align 4
  store i64 0, i64* @total, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %106, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @nodes_num, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %109

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @nodes, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 32
  %23 = icmp eq i32 %14, %22
  br i1 %23, label %24, label %105

24:                                               ; preds = %13, %10
  %25 = load i32, i32* @precise_now, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @nodes, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %25, %32
  %34 = load i32, i32* @DEFAULT_CHILDREN_RENEW_TIME, align 4
  %35 = mul nsw i32 3, %34
  %36 = icmp sgt i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %24
  %38 = load i64, i64* @prefailed_nodes, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* @prefailed_nodes, align 8
  br label %40

40:                                               ; preds = %37, %24
  %41 = load i32, i32* @precise_now, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @nodes, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %41, %48
  %50 = load i32, i32* @DEFAULT_CHILDREN_RENEW_TIME, align 4
  %51 = mul nsw i32 30, %50
  %52 = icmp sgt i32 %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %40
  %54 = load i64, i64* @failed_nodes, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* @failed_nodes, align 8
  br label %56

56:                                               ; preds = %53, %40
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @nodes, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* @total_binlog_size, align 8
  %66 = add nsw i64 %65, %64
  store i64 %66, i64* @total_binlog_size, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @nodes, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @minimal_binlog_size, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %56
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** @nodes, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* @minimal_binlog_size, align 4
  br label %84

84:                                               ; preds = %76, %56
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** @nodes, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @maximal_binlog_size, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %84
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** @nodes, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* @maximal_binlog_size, align 4
  br label %102

102:                                              ; preds = %94, %84
  %103 = load i64, i64* @total, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* @total, align 8
  br label %105

105:                                              ; preds = %102, %13
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %6

109:                                              ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
