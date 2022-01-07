; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_delete_first_messages0.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-index.c_delete_first_messages0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@ignore_delete_first_messages = common dso_local global i64 0, align 8
@discarded_rec = common dso_local global i32 0, align 4
@UserMsgCnt = common dso_local global i32* null, align 8
@User = common dso_local global %struct.TYPE_3__** null, align 8
@tot_users = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_first_messages0(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @conv_uid(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* @ignore_delete_first_messages, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @discarded_rec, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @discarded_rec, align 4
  br label %71

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = load i32*, i32** @UserMsgCnt, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  %27 = icmp sle i32 %20, %26
  br label %28

28:                                               ; preds = %19, %16
  %29 = phi i1 [ false, %16 ], [ %27, %19 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @User, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %32, i64 %34
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = icmp ne %struct.TYPE_3__* %36, null
  br i1 %37, label %53, label %38

38:                                               ; preds = %28
  %39 = call %struct.TYPE_3__* @zmalloc0(i32 4)
  %40 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @User, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %40, i64 %42
  store %struct.TYPE_3__* %39, %struct.TYPE_3__** %43, align 8
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @User, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %45, i64 %47
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 %44, i32* %50, align 4
  %51 = load i32, i32* @tot_users, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @tot_users, align 4
  br label %53

53:                                               ; preds = %38, %28
  %54 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @User, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %54, i64 %56
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %53
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @User, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %65, i64 %67
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i32 %64, i32* %70, align 4
  br label %71

71:                                               ; preds = %13, %63, %53
  ret void
}

declare dso_local i32 @conv_uid(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_3__* @zmalloc0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
