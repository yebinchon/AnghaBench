; ModuleID = '/home/carl/AnghaBench/git/extr_walker.c_process.c'
source_filename = "/home/carl/AnghaBench/git/extr_walker.c_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }
%struct.walker = type { i32 (%struct.walker*, i32)* }
%struct.object = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@SEEN = common dso_local global i32 0, align 4
@TO_SCAN = common dso_local global i32 0, align 4
@COMPLETE = common dso_local global i32 0, align 4
@process_queue_end = common dso_local global %struct.TYPE_4__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.walker*, %struct.object*)* @process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process(%struct.walker* %0, %struct.object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.walker*, align 8
  %5 = alloca %struct.object*, align 8
  store %struct.walker* %0, %struct.walker** %4, align 8
  store %struct.object* %1, %struct.object** %5, align 8
  %6 = load %struct.object*, %struct.object** %5, align 8
  %7 = getelementptr inbounds %struct.object, %struct.object* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SEEN, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

13:                                               ; preds = %2
  %14 = load i32, i32* @SEEN, align 4
  %15 = load %struct.object*, %struct.object** %5, align 8
  %16 = getelementptr inbounds %struct.object, %struct.object* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.object*, %struct.object** %5, align 8
  %20 = getelementptr inbounds %struct.object, %struct.object* %19, i32 0, i32 1
  %21 = call i64 @has_object_file(%struct.TYPE_5__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %13
  %24 = load i32, i32* @TO_SCAN, align 4
  %25 = load %struct.object*, %struct.object** %5, align 8
  %26 = getelementptr inbounds %struct.object, %struct.object* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %47

29:                                               ; preds = %13
  %30 = load %struct.object*, %struct.object** %5, align 8
  %31 = getelementptr inbounds %struct.object, %struct.object* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @COMPLETE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %54

37:                                               ; preds = %29
  %38 = load %struct.walker*, %struct.walker** %4, align 8
  %39 = getelementptr inbounds %struct.walker, %struct.walker* %38, i32 0, i32 0
  %40 = load i32 (%struct.walker*, i32)*, i32 (%struct.walker*, i32)** %39, align 8
  %41 = load %struct.walker*, %struct.walker** %4, align 8
  %42 = load %struct.object*, %struct.object** %5, align 8
  %43 = getelementptr inbounds %struct.object, %struct.object* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 %40(%struct.walker* %41, i32 %45)
  br label %47

47:                                               ; preds = %37, %23
  %48 = load %struct.object*, %struct.object** %5, align 8
  %49 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @process_queue_end, align 8
  %50 = call i32 @object_list_insert(%struct.object* %48, %struct.TYPE_4__** %49)
  %51 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @process_queue_end, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store %struct.TYPE_4__** %53, %struct.TYPE_4__*** @process_queue_end, align 8
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %47, %36, %12
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @has_object_file(%struct.TYPE_5__*) #1

declare dso_local i32 @object_list_insert(%struct.object*, %struct.TYPE_4__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
