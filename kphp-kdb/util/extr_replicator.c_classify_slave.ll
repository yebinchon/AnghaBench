; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_classify_slave.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_replicator.c_classify_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.related_binlog = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@LRF_MASTER = common dso_local global i32 0, align 4
@LRF_BROKEN = common dso_local global i32 0, align 4
@RC_UPTODATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @classify_slave(%struct.related_binlog* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.related_binlog*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.related_binlog* %0, %struct.related_binlog** %3, align 8
  %7 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %8 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @LRF_MASTER, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 4, i32* %2, align 4
  br label %68

14:                                               ; preds = %1
  %15 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %16 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @LRF_BROKEN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %68

22:                                               ; preds = %14
  store i32 1, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %63, %22
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %26 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %23
  %30 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %31 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = icmp ne %struct.TYPE_2__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  br label %55

39:                                               ; preds = %29
  %40 = load %struct.related_binlog*, %struct.related_binlog** %3, align 8
  %41 = getelementptr inbounds %struct.related_binlog, %struct.related_binlog* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %42, i64 %44
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @RC_UPTODATE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 2, i32 3
  br label %55

55:                                               ; preds = %39, %38
  %56 = phi i32 [ 1, %38 ], [ %54, %39 ]
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %55
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %23

66:                                               ; preds = %23
  %67 = load i32, i32* %5, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %21, %13
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
