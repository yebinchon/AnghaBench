; ModuleID = '/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-data.c_process_entry.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-data.c_process_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_10__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_entry(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %78, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %81

12:                                               ; preds = %6
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %12
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %23, %32
  br i1 %33, label %34, label %77

34:                                               ; preds = %15, %12
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call %struct.TYPE_10__* @get_watchcat_q(i64 %42, i32 0)
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %4, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = icmp ne %struct.TYPE_10__* %44, null
  br i1 %45, label %46, label %76

46:                                               ; preds = %34
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %5, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = icmp ne %struct.TYPE_10__* %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  br label %55

55:                                               ; preds = %74, %46
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = icmp ne %struct.TYPE_10__* %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %55
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %5, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @check_watchcat_query(%struct.TYPE_9__* %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %73 = call i32 @add_to_ans(%struct.TYPE_10__* %72)
  br label %74

74:                                               ; preds = %71, %61
  br label %55

75:                                               ; preds = %55
  br label %76

76:                                               ; preds = %75, %34
  br label %77

77:                                               ; preds = %76, %15
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %6

81:                                               ; preds = %6
  ret void
}

declare dso_local %struct.TYPE_10__* @get_watchcat_q(i64, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @check_watchcat_query(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @add_to_ans(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
