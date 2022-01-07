; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_cache.c_nl_cache_add.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_cache.c_nl_cache_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_cache = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.nl_object = type { i64, i32 }

@NLE_OBJ_MISMATCH = common dso_local global i32 0, align 4
@NLE_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nl_cache_add(%struct.nl_cache* %0, %struct.nl_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nl_cache*, align 8
  %5 = alloca %struct.nl_object*, align 8
  %6 = alloca %struct.nl_object*, align 8
  store %struct.nl_cache* %0, %struct.nl_cache** %4, align 8
  store %struct.nl_object* %1, %struct.nl_object** %5, align 8
  %7 = load %struct.nl_cache*, %struct.nl_cache** %4, align 8
  %8 = getelementptr inbounds %struct.nl_cache, %struct.nl_cache* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.nl_object*, %struct.nl_object** %5, align 8
  %13 = getelementptr inbounds %struct.nl_object, %struct.nl_object* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @NLE_OBJ_MISMATCH, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %41

19:                                               ; preds = %2
  %20 = load %struct.nl_object*, %struct.nl_object** %5, align 8
  %21 = getelementptr inbounds %struct.nl_object, %struct.nl_object* %20, i32 0, i32 1
  %22 = call i32 @nl_list_empty(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %19
  %25 = load %struct.nl_object*, %struct.nl_object** %5, align 8
  %26 = call %struct.nl_object* @nl_object_clone(%struct.nl_object* %25)
  store %struct.nl_object* %26, %struct.nl_object** %6, align 8
  %27 = load %struct.nl_object*, %struct.nl_object** %6, align 8
  %28 = icmp ne %struct.nl_object* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @NLE_NOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %41

32:                                               ; preds = %24
  br label %37

33:                                               ; preds = %19
  %34 = load %struct.nl_object*, %struct.nl_object** %5, align 8
  %35 = call i32 @nl_object_get(%struct.nl_object* %34)
  %36 = load %struct.nl_object*, %struct.nl_object** %5, align 8
  store %struct.nl_object* %36, %struct.nl_object** %6, align 8
  br label %37

37:                                               ; preds = %33, %32
  %38 = load %struct.nl_cache*, %struct.nl_cache** %4, align 8
  %39 = load %struct.nl_object*, %struct.nl_object** %6, align 8
  %40 = call i32 @__cache_add(%struct.nl_cache* %38, %struct.nl_object* %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %29, %16
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @nl_list_empty(i32*) #1

declare dso_local %struct.nl_object* @nl_object_clone(%struct.nl_object*) #1

declare dso_local i32 @nl_object_get(%struct.nl_object*) #1

declare dso_local i32 @__cache_add(%struct.nl_cache*, %struct.nl_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
