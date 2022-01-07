; ModuleID = '/home/carl/AnghaBench/git/extr_walker.c_loop.c'
source_filename = "/home/carl/AnghaBench/git/extr_walker.c_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_list = type { %struct.object_list*, %struct.object* }
%struct.object = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.walker = type { i64 (%struct.walker*, i32)* }

@process_queue = common dso_local global %struct.object_list* null, align 8
@process_queue_end = common dso_local global %struct.object_list** null, align 8
@TO_SCAN = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.walker*)* @loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loop(%struct.walker* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.walker*, align 8
  %4 = alloca %struct.object_list*, align 8
  %5 = alloca %struct.object*, align 8
  store %struct.walker* %0, %struct.walker** %3, align 8
  br label %6

6:                                                ; preds = %60, %1
  %7 = load %struct.object_list*, %struct.object_list** @process_queue, align 8
  %8 = icmp ne %struct.object_list* %7, null
  br i1 %8, label %9, label %61

9:                                                ; preds = %6
  %10 = load %struct.object_list*, %struct.object_list** @process_queue, align 8
  %11 = getelementptr inbounds %struct.object_list, %struct.object_list* %10, i32 0, i32 1
  %12 = load %struct.object*, %struct.object** %11, align 8
  store %struct.object* %12, %struct.object** %5, align 8
  %13 = load %struct.object_list*, %struct.object_list** @process_queue, align 8
  store %struct.object_list* %13, %struct.object_list** %4, align 8
  %14 = load %struct.object_list*, %struct.object_list** %4, align 8
  %15 = getelementptr inbounds %struct.object_list, %struct.object_list* %14, i32 0, i32 0
  %16 = load %struct.object_list*, %struct.object_list** %15, align 8
  store %struct.object_list* %16, %struct.object_list** @process_queue, align 8
  %17 = load %struct.object_list*, %struct.object_list** %4, align 8
  %18 = call i32 @free(%struct.object_list* %17)
  %19 = load %struct.object_list*, %struct.object_list** @process_queue, align 8
  %20 = icmp ne %struct.object_list* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %9
  store %struct.object_list** @process_queue, %struct.object_list*** @process_queue_end, align 8
  br label %22

22:                                               ; preds = %21, %9
  %23 = load %struct.object*, %struct.object** %5, align 8
  %24 = getelementptr inbounds %struct.object, %struct.object* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @TO_SCAN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %22
  %30 = load %struct.walker*, %struct.walker** %3, align 8
  %31 = getelementptr inbounds %struct.walker, %struct.walker* %30, i32 0, i32 0
  %32 = load i64 (%struct.walker*, i32)*, i64 (%struct.walker*, i32)** %31, align 8
  %33 = load %struct.walker*, %struct.walker** %3, align 8
  %34 = load %struct.object*, %struct.object** %5, align 8
  %35 = getelementptr inbounds %struct.object, %struct.object* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 %32(%struct.walker* %33, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load %struct.object*, %struct.object** %5, align 8
  %42 = call i32 @report_missing(%struct.object* %41)
  store i32 -1, i32* %2, align 4
  br label %62

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43, %22
  %45 = load %struct.object*, %struct.object** %5, align 8
  %46 = getelementptr inbounds %struct.object, %struct.object* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @the_repository, align 4
  %51 = load %struct.object*, %struct.object** %5, align 8
  %52 = getelementptr inbounds %struct.object, %struct.object* %51, i32 0, i32 1
  %53 = call i32 @parse_object(i32 %50, %struct.TYPE_2__* %52)
  br label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.walker*, %struct.walker** %3, align 8
  %56 = load %struct.object*, %struct.object** %5, align 8
  %57 = call i64 @process_object(%struct.walker* %55, %struct.object* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 -1, i32* %2, align 4
  br label %62

60:                                               ; preds = %54
  br label %6

61:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %59, %40
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @free(%struct.object_list*) #1

declare dso_local i32 @report_missing(%struct.object*) #1

declare dso_local i32 @parse_object(i32, %struct.TYPE_2__*) #1

declare dso_local i64 @process_object(%struct.walker*, %struct.object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
