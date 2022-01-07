; ModuleID = '/home/carl/AnghaBench/kphp-kdb/letters/extr_letters-data.c_delete_letters_by_task_id.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/letters/extr_letters-data.c_delete_letters_by_task_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@task_id_to_delete_time = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4
@task_deletes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delete_letters_by_task_id(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  store i64 %0, i64* %3, align 8
  %6 = call i32 (...) @remove_expired_deletes_by_task_id()
  %7 = load i64, i64* %3, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = call i32* @map_ll_int_add(i32* @task_id_to_delete_time, i64 %10)
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @assert(i32* %12)
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @now, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %9
  %19 = load i32, i32* @now, align 4
  %20 = load i32*, i32** %4, align 8
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %22 = load i64, i64* %3, align 8
  store i64 %22, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %24 = load i32, i32* @now, align 4
  store i32 %24, i32* %23, align 8
  %25 = load i32, i32* @task_deletes, align 4
  %26 = bitcast %struct.TYPE_3__* %5 to { i64, i32 }*
  %27 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %26, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @vector_pb(i32 %25, i64 %28, i32 %30)
  br label %32

32:                                               ; preds = %18, %9
  store i32 1, i32* %2, align 4
  br label %34

33:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %32
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @remove_expired_deletes_by_task_id(...) #1

declare dso_local i32* @map_ll_int_add(i32*, i64) #1

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @vector_pb(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
