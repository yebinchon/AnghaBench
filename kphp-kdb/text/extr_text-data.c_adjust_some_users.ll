; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_adjust_some_users.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_adjust_some_users.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@scan_uid = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4
@hold_online_time = common dso_local global i32 0, align 4
@max_uid = common dso_local global i32 0, align 4
@User = common dso_local global %struct.TYPE_6__** null, align 8
@min_uid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adjust_some_users() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @scan_uid, align 4
  store i32 %5, i32* %2, align 4
  store i32 2000, i32* %3, align 4
  %6 = load i32, i32* @now, align 4
  %7 = load i32, i32* @hold_online_time, align 4
  %8 = sub nsw i32 %6, %7
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @max_uid, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = load i32, i32* @max_uid, align 4
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %12, %0
  br label %15

15:                                               ; preds = %50, %14
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %3, align 4
  %18 = icmp sgt i32 %16, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %15
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @User, align 8
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %2, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %20, i64 %23
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %1, align 8
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @max_uid, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* @min_uid, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %19
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %33 = icmp ne %struct.TYPE_6__* %32, null
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = icmp ne %struct.TYPE_5__* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %49 = call i32 @adjust_online_tree(%struct.TYPE_6__* %48)
  br label %50

50:                                               ; preds = %47, %39, %34, %31
  br label %15

51:                                               ; preds = %15
  %52 = load i32, i32* %2, align 4
  store i32 %52, i32* @scan_uid, align 4
  ret void
}

declare dso_local i32 @adjust_online_tree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
