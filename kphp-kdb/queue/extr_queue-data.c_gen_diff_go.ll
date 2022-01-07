; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_gen_diff_go.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_gen_diff_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64, %struct.TYPE_5__*, %struct.TYPE_5__* }

@gd_a = common dso_local global %struct.TYPE_6__* null, align 8
@gd_b = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_diff_go(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = icmp eq %struct.TYPE_5__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %74

6:                                                ; preds = %1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  call void @gen_diff_go(%struct.TYPE_5__* %9)
  br label %10

10:                                               ; preds = %24, %6
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gd_a, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gd_b, align 8
  %13 = icmp ne %struct.TYPE_6__* %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gd_a, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br label %22

22:                                               ; preds = %14, %10
  %23 = phi i1 [ false, %10 ], [ %21, %14 ]
  br i1 %23, label %24, label %34

24:                                               ; preds = %22
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gd_a, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gd_a, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @insert_to_add(i64 %27, i64 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gd_a, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 1
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** @gd_a, align 8
  br label %10

34:                                               ; preds = %22
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gd_a, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gd_b, align 8
  %37 = icmp eq %struct.TYPE_6__* %35, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gd_a, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %38, %34
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @insert_to_del(i64 %49)
  br label %70

51:                                               ; preds = %38
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gd_a, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gd_a, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gd_a, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @insert_to_add(i64 %62, i64 %65)
  br label %67

67:                                               ; preds = %59, %51
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gd_a, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 1
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** @gd_a, align 8
  br label %70

70:                                               ; preds = %67, %46
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  call void @gen_diff_go(%struct.TYPE_5__* %73)
  br label %74

74:                                               ; preds = %70, %5
  ret void
}

declare dso_local i32 @insert_to_add(i64, i64) #1

declare dso_local i32 @insert_to_del(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
