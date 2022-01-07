; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_listree_get_kth.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_listree_get_kth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__** }

@NIL = common dso_local global %struct.TYPE_9__* null, align 8
@TF_MINUS = common dso_local global i64 0, align 8
@rpos_to_delta = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32)* @listree_get_kth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @listree_get_kth(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %6, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %20, %23
  %25 = icmp sge i32 %19, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18, %2
  store i32 -1, i32* %3, align 4
  br label %107

27:                                               ; preds = %18
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %92, %27
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** @NIL, align 8
  %32 = icmp ne %struct.TYPE_9__* %30, %31
  br i1 %32, label %33, label %93

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = call i32 @NODE_RPOS(%struct.TYPE_9__* %36)
  %38 = sub nsw i32 %35, %37
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %38, %43
  %45 = icmp slt i32 %34, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %33
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %6, align 8
  br label %92

50:                                               ; preds = %33
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = call i32 @NODE_RPOS(%struct.TYPE_9__* %53)
  %55 = sub nsw i32 %52, %54
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %55, %60
  %62 = icmp eq i32 %51, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %50
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %65 = call i64 @NODE_TYPE(%struct.TYPE_9__* %64)
  %66 = load i64, i64* @TF_MINUS, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = call i32 @in_tree(%struct.TYPE_9__* %69)
  store i32 %70, i32* %3, align 4
  br label %107

71:                                               ; preds = %63, %50
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = load i64*, i64** @rpos_to_delta, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = call i64 @NODE_TYPE(%struct.TYPE_9__* %79)
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %77, %82
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %8, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  store %struct.TYPE_9__* %90, %struct.TYPE_9__** %6, align 8
  br label %91

91:                                               ; preds = %71
  br label %92

92:                                               ; preds = %91, %46
  br label %29

93:                                               ; preds = %29
  %94 = load i32, i32* %8, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp slt i32 %97, %98
  br label %100

100:                                              ; preds = %96, %93
  %101 = phi i1 [ false, %93 ], [ %99, %96 ]
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @in_array(%struct.TYPE_10__* %104, i32 %105)
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %100, %68, %26
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @NODE_RPOS(%struct.TYPE_9__*) #1

declare dso_local i64 @NODE_TYPE(%struct.TYPE_9__*) #1

declare dso_local i32 @in_tree(%struct.TYPE_9__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @in_array(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
