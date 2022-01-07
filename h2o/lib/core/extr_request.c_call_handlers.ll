; ModuleID = '/home/carl/AnghaBench/h2o/lib/core/extr_request.c_call_handlers.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/core/extr_request.c_call_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i64 (%struct.TYPE_13__*, %struct.TYPE_12__*)* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_13__** }

@.str = private unnamed_addr constant [15 x i8] c"File Not Found\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_13__**)* @call_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @call_handlers(%struct.TYPE_12__* %0, %struct.TYPE_13__** %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__**, align 8
  %5 = alloca %struct.TYPE_13__**, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_13__** %1, %struct.TYPE_13__*** %4, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %10, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %11, i64 %18
  store %struct.TYPE_13__** %19, %struct.TYPE_13__*** %5, align 8
  br label %20

20:                                               ; preds = %40, %2
  %21 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %22 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %5, align 8
  %23 = icmp ne %struct.TYPE_13__** %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %20
  %25 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %28, align 8
  %29 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i64 (%struct.TYPE_13__*, %struct.TYPE_12__*)*, i64 (%struct.TYPE_13__*, %struct.TYPE_12__*)** %31, align 8
  %33 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = call i64 %32(%struct.TYPE_13__* %34, %struct.TYPE_12__* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  br label %46

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %41, i32 1
  store %struct.TYPE_13__** %42, %struct.TYPE_13__*** %4, align 8
  br label %20

43:                                               ; preds = %20
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = call i32 @h2o_send_error_404(%struct.TYPE_12__* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %46

46:                                               ; preds = %43, %38
  ret void
}

declare dso_local i32 @h2o_send_error_404(%struct.TYPE_12__*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
