; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_get_user_f.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_get_user_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i32* }

@User = common dso_local global %struct.TYPE_9__** null, align 8
@user_creations = common dso_local global i64 0, align 8
@max_uid = common dso_local global i32 0, align 4
@tot_users = common dso_local global i32 0, align 4
@rate_tree = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @get_user_f(i32 %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @conv_user_id(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %65

11:                                               ; preds = %1
  %12 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @User, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %12, i64 %14
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %5, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %2, align 8
  br label %65

21:                                               ; preds = %11
  %22 = call %struct.TYPE_9__* @zmalloc(i32 32)
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %5, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = call i32 @memset(%struct.TYPE_9__* %23, i32 0, i32 32)
  %25 = call i32 (...) @lrand48()
  %26 = and i32 %25, 255
  %27 = sub nsw i32 %26, 256
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 3
  store i32 1, i32* %37, align 4
  %38 = load i64, i64* @user_creations, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* @user_creations, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 5
  store i64 %39, i64* %41, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @User, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %43, i64 %45
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %46, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @max_uid, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %21
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* @max_uid, align 4
  br label %52

52:                                               ; preds = %50, %21
  %53 = load i32, i32* @tot_users, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @tot_users, align 4
  %55 = call i32 (...) @lrand48()
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rate_tree, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = bitcast %struct.TYPE_9__* %59 to i32*
  %61 = call %struct.TYPE_10__* @utree_insert_node(%struct.TYPE_10__* %58, i32* %60)
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** @rate_tree, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rate_tree, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  store i32* bitcast (%struct.TYPE_10__** @rate_tree to i32*), i32** %63, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %64, %struct.TYPE_9__** %2, align 8
  br label %65

65:                                               ; preds = %52, %19, %10
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %66
}

declare dso_local i32 @conv_user_id(i32) #1

declare dso_local %struct.TYPE_9__* @zmalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local %struct.TYPE_10__* @utree_insert_node(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
