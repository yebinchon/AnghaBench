; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_clear_postponed.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_clear_postponed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.postponed_operation = type { i64, %struct.postponed_operation* }

@Header = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@postponed_replay = common dso_local global i64 0, align 8
@postponed = common dso_local global %struct.postponed_operation** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_postponed(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.postponed_operation*, align 8
  %4 = alloca %struct.postponed_operation*, align 8
  %5 = alloca %struct.postponed_operation*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp sle i32 0, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Header, i32 0, i32 0), align 4
  %11 = icmp slt i32 %9, %10
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i1 [ false, %1 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i64, i64* @postponed_replay, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %56

19:                                               ; preds = %12
  %20 = load %struct.postponed_operation**, %struct.postponed_operation*** @postponed, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.postponed_operation*, %struct.postponed_operation** %20, i64 %22
  %24 = load %struct.postponed_operation*, %struct.postponed_operation** %23, align 8
  store %struct.postponed_operation* %24, %struct.postponed_operation** %3, align 8
  %25 = load %struct.postponed_operation*, %struct.postponed_operation** %3, align 8
  %26 = icmp ne %struct.postponed_operation* %25, null
  br i1 %26, label %27, label %51

27:                                               ; preds = %19
  %28 = load %struct.postponed_operation*, %struct.postponed_operation** %3, align 8
  store %struct.postponed_operation* %28, %struct.postponed_operation** %4, align 8
  br label %29

29:                                               ; preds = %48, %27
  %30 = load %struct.postponed_operation*, %struct.postponed_operation** %3, align 8
  store %struct.postponed_operation* %30, %struct.postponed_operation** %5, align 8
  %31 = load %struct.postponed_operation*, %struct.postponed_operation** %3, align 8
  %32 = getelementptr inbounds %struct.postponed_operation, %struct.postponed_operation* %31, i32 0, i32 1
  %33 = load %struct.postponed_operation*, %struct.postponed_operation** %32, align 8
  store %struct.postponed_operation* %33, %struct.postponed_operation** %3, align 8
  %34 = load %struct.postponed_operation*, %struct.postponed_operation** %5, align 8
  %35 = load %struct.postponed_operation*, %struct.postponed_operation** %5, align 8
  %36 = getelementptr inbounds %struct.postponed_operation, %struct.postponed_operation* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, 16
  %39 = call i32 @zfree(%struct.postponed_operation* %34, i64 %38)
  br label %40

40:                                               ; preds = %29
  %41 = load %struct.postponed_operation*, %struct.postponed_operation** %4, align 8
  %42 = load %struct.postponed_operation*, %struct.postponed_operation** %3, align 8
  %43 = icmp ne %struct.postponed_operation* %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.postponed_operation*, %struct.postponed_operation** %5, align 8
  %46 = load %struct.postponed_operation*, %struct.postponed_operation** %3, align 8
  %47 = icmp ne %struct.postponed_operation* %45, %46
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i1 [ false, %40 ], [ %47, %44 ]
  br i1 %49, label %29, label %50

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50, %19
  %52 = load %struct.postponed_operation**, %struct.postponed_operation*** @postponed, align 8
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.postponed_operation*, %struct.postponed_operation** %52, i64 %54
  store %struct.postponed_operation* null, %struct.postponed_operation** %55, align 8
  br label %56

56:                                               ; preds = %51, %18
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @zfree(%struct.postponed_operation*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
