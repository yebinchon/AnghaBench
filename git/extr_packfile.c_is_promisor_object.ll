; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_is_promisor_object.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_is_promisor_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oidset = type { i32 }
%struct.object_id = type { i32 }

@is_promisor_object.promisor_objects = internal global %struct.oidset zeroinitializer, align 4
@is_promisor_object.promisor_objects_prepared = internal global i32 0, align 4
@add_promisor_object = common dso_local global i32 0, align 4
@FOR_EACH_OBJECT_PROMISOR_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_promisor_object(%struct.object_id* %0) #0 {
  %2 = alloca %struct.object_id*, align 8
  store %struct.object_id* %0, %struct.object_id** %2, align 8
  %3 = load i32, i32* @is_promisor_object.promisor_objects_prepared, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = call i64 (...) @has_promisor_remote()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = load i32, i32* @add_promisor_object, align 4
  %10 = load i32, i32* @FOR_EACH_OBJECT_PROMISOR_ONLY, align 4
  %11 = call i32 @for_each_packed_object(i32 %9, %struct.oidset* @is_promisor_object.promisor_objects, i32 %10)
  br label %12

12:                                               ; preds = %8, %5
  store i32 1, i32* @is_promisor_object.promisor_objects_prepared, align 4
  br label %13

13:                                               ; preds = %12, %1
  %14 = load %struct.object_id*, %struct.object_id** %2, align 8
  %15 = call i32 @oidset_contains(%struct.oidset* @is_promisor_object.promisor_objects, %struct.object_id* %14)
  ret i32 %15
}

declare dso_local i64 @has_promisor_remote(...) #1

declare dso_local i32 @for_each_packed_object(i32, %struct.oidset*, i32) #1

declare dso_local i32 @oidset_contains(%struct.oidset*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
