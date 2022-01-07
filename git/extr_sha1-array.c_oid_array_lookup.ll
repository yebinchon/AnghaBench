; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-array.c_oid_array_lookup.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-array.c_oid_array_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_array = type { i32, i32, i32 }
%struct.object_id = type { i32 }

@sha1_access = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oid_array_lookup(%struct.oid_array* %0, %struct.object_id* %1) #0 {
  %3 = alloca %struct.oid_array*, align 8
  %4 = alloca %struct.object_id*, align 8
  store %struct.oid_array* %0, %struct.oid_array** %3, align 8
  store %struct.object_id* %1, %struct.object_id** %4, align 8
  %5 = load %struct.oid_array*, %struct.oid_array** %3, align 8
  %6 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.oid_array*, %struct.oid_array** %3, align 8
  %11 = call i32 @oid_array_sort(%struct.oid_array* %10)
  br label %12

12:                                               ; preds = %9, %2
  %13 = load %struct.object_id*, %struct.object_id** %4, align 8
  %14 = getelementptr inbounds %struct.object_id, %struct.object_id* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.oid_array*, %struct.oid_array** %3, align 8
  %17 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.oid_array*, %struct.oid_array** %3, align 8
  %20 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @sha1_access, align 4
  %23 = call i32 @sha1_pos(i32 %15, i32 %18, i32 %21, i32 %22)
  ret i32 %23
}

declare dso_local i32 @oid_array_sort(%struct.oid_array*) #1

declare dso_local i32 @sha1_pos(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
