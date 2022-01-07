; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_do_postponed.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_do_postponed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.postponed_operation = type { i64, %struct.postponed_operation*, i64, i64 }
%struct.lev_generic = type { i32 }

@Header = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@postponed = common dso_local global %struct.postponed_operation** null, align 8
@postponed_replay = common dso_local global i32 0, align 4
@now_override = common dso_local global i64 0, align 8
@metafile_mode = common dso_local global i32 0, align 4
@postponed_operations_performed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_postponed(i32 %0) #0 {
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
  %16 = load %struct.postponed_operation**, %struct.postponed_operation*** @postponed, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.postponed_operation*, %struct.postponed_operation** %16, i64 %18
  %20 = load %struct.postponed_operation*, %struct.postponed_operation** %19, align 8
  store %struct.postponed_operation* %20, %struct.postponed_operation** %3, align 8
  %21 = load %struct.postponed_operation*, %struct.postponed_operation** %3, align 8
  %22 = icmp ne %struct.postponed_operation* %21, null
  br i1 %22, label %23, label %71

23:                                               ; preds = %12
  %24 = load %struct.postponed_operation*, %struct.postponed_operation** %3, align 8
  store %struct.postponed_operation* %24, %struct.postponed_operation** %4, align 8
  store i32 1, i32* @postponed_replay, align 4
  br label %25

25:                                               ; preds = %68, %23
  %26 = load %struct.postponed_operation*, %struct.postponed_operation** %3, align 8
  %27 = getelementptr inbounds %struct.postponed_operation, %struct.postponed_operation* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* @now_override, align 8
  %29 = load %struct.postponed_operation*, %struct.postponed_operation** %3, align 8
  %30 = getelementptr inbounds %struct.postponed_operation, %struct.postponed_operation* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.postponed_operation*, %struct.postponed_operation** %3, align 8
  %33 = getelementptr inbounds %struct.postponed_operation, %struct.postponed_operation* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.lev_generic*
  %36 = load %struct.postponed_operation*, %struct.postponed_operation** %3, align 8
  %37 = getelementptr inbounds %struct.postponed_operation, %struct.postponed_operation* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @lists_replay_logevent(%struct.lev_generic* %35, i64 %38)
  %40 = icmp eq i64 %31, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  store i64 0, i64* @now_override, align 8
  %43 = load %struct.postponed_operation*, %struct.postponed_operation** %3, align 8
  store %struct.postponed_operation* %43, %struct.postponed_operation** %5, align 8
  %44 = load %struct.postponed_operation*, %struct.postponed_operation** %3, align 8
  %45 = getelementptr inbounds %struct.postponed_operation, %struct.postponed_operation* %44, i32 0, i32 1
  %46 = load %struct.postponed_operation*, %struct.postponed_operation** %45, align 8
  store %struct.postponed_operation* %46, %struct.postponed_operation** %3, align 8
  %47 = load i32, i32* @metafile_mode, align 4
  %48 = and i32 %47, 2
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %25
  %51 = load %struct.postponed_operation*, %struct.postponed_operation** %5, align 8
  %52 = load %struct.postponed_operation*, %struct.postponed_operation** %5, align 8
  %53 = getelementptr inbounds %struct.postponed_operation, %struct.postponed_operation* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 32
  %56 = call i32 @zfree(%struct.postponed_operation* %51, i64 %55)
  br label %57

57:                                               ; preds = %50, %25
  %58 = load i32, i32* @postponed_operations_performed, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @postponed_operations_performed, align 4
  br label %60

60:                                               ; preds = %57
  %61 = load %struct.postponed_operation*, %struct.postponed_operation** %4, align 8
  %62 = load %struct.postponed_operation*, %struct.postponed_operation** %3, align 8
  %63 = icmp ne %struct.postponed_operation* %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load %struct.postponed_operation*, %struct.postponed_operation** %5, align 8
  %66 = load %struct.postponed_operation*, %struct.postponed_operation** %3, align 8
  %67 = icmp ne %struct.postponed_operation* %65, %66
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi i1 [ false, %60 ], [ %67, %64 ]
  br i1 %69, label %25, label %70

70:                                               ; preds = %68
  store i32 0, i32* @postponed_replay, align 4
  br label %71

71:                                               ; preds = %70, %12
  %72 = load i32, i32* @metafile_mode, align 4
  %73 = and i32 %72, 2
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = load %struct.postponed_operation**, %struct.postponed_operation*** @postponed, align 8
  %77 = load i32, i32* %2, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.postponed_operation*, %struct.postponed_operation** %76, i64 %78
  store %struct.postponed_operation* null, %struct.postponed_operation** %79, align 8
  br label %80

80:                                               ; preds = %75, %71
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @lists_replay_logevent(%struct.lev_generic*, i64) #1

declare dso_local i32 @zfree(%struct.postponed_operation*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
