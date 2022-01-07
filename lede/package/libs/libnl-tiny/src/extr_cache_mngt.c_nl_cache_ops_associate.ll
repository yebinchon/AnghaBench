; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_cache_mngt.c_nl_cache_ops_associate.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_cache_mngt.c_nl_cache_ops_associate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_cache_ops = type { i32, %struct.TYPE_2__*, %struct.nl_cache_ops* }
%struct.TYPE_2__ = type { i32 }

@cache_ops = common dso_local global %struct.nl_cache_ops* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nl_cache_ops* @nl_cache_ops_associate(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.nl_cache_ops*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nl_cache_ops*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** @cache_ops, align 8
  store %struct.nl_cache_ops* %8, %struct.nl_cache_ops** %7, align 8
  br label %9

9:                                                ; preds = %48, %2
  %10 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %7, align 8
  %11 = icmp ne %struct.nl_cache_ops* %10, null
  br i1 %11, label %12, label %52

12:                                               ; preds = %9
  %13 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %7, align 8
  %14 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %48

19:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %44, %19
  %21 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %7, align 8
  %22 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %20
  %31 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %7, align 8
  %32 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %7, align 8
  store %struct.nl_cache_ops* %42, %struct.nl_cache_ops** %3, align 8
  br label %53

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %20

47:                                               ; preds = %20
  br label %48

48:                                               ; preds = %47, %18
  %49 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %7, align 8
  %50 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %49, i32 0, i32 2
  %51 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %50, align 8
  store %struct.nl_cache_ops* %51, %struct.nl_cache_ops** %7, align 8
  br label %9

52:                                               ; preds = %9
  store %struct.nl_cache_ops* null, %struct.nl_cache_ops** %3, align 8
  br label %53

53:                                               ; preds = %52, %41
  %54 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %3, align 8
  ret %struct.nl_cache_ops* %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
