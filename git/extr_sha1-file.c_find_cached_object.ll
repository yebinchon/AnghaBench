; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_find_cached_object.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_find_cached_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_object = type { %struct.object_id }
%struct.object_id = type { i32 }
%struct.TYPE_2__ = type { %struct.object_id* }

@cached_objects = common dso_local global %struct.cached_object* null, align 8
@cached_object_nr = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@empty_tree = common dso_local global %struct.cached_object zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cached_object* (%struct.object_id*)* @find_cached_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cached_object* @find_cached_object(%struct.object_id* %0) #0 {
  %2 = alloca %struct.cached_object*, align 8
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cached_object*, align 8
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  %6 = load %struct.cached_object*, %struct.cached_object** @cached_objects, align 8
  store %struct.cached_object* %6, %struct.cached_object** %5, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %20, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @cached_object_nr, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = load %struct.cached_object*, %struct.cached_object** %5, align 8
  %13 = getelementptr inbounds %struct.cached_object, %struct.cached_object* %12, i32 0, i32 0
  %14 = load %struct.object_id*, %struct.object_id** %3, align 8
  %15 = call i64 @oideq(%struct.object_id* %13, %struct.object_id* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load %struct.cached_object*, %struct.cached_object** %5, align 8
  store %struct.cached_object* %18, %struct.cached_object** %2, align 8
  br label %34

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  %23 = load %struct.cached_object*, %struct.cached_object** %5, align 8
  %24 = getelementptr inbounds %struct.cached_object, %struct.cached_object* %23, i32 1
  store %struct.cached_object* %24, %struct.cached_object** %5, align 8
  br label %7

25:                                               ; preds = %7
  %26 = load %struct.object_id*, %struct.object_id** %3, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.object_id*, %struct.object_id** %28, align 8
  %30 = call i64 @oideq(%struct.object_id* %26, %struct.object_id* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store %struct.cached_object* @empty_tree, %struct.cached_object** %2, align 8
  br label %34

33:                                               ; preds = %25
  store %struct.cached_object* null, %struct.cached_object** %2, align 8
  br label %34

34:                                               ; preds = %33, %32, %17
  %35 = load %struct.cached_object*, %struct.cached_object** %2, align 8
  ret %struct.cached_object* %35
}

declare dso_local i64 @oideq(%struct.object_id*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
