; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_new_object.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_new_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.object_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.object_id = type { i32 }

@blocks = common dso_local global %struct.TYPE_4__* null, align 8
@object_entry_alloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.object_entry* (%struct.object_id*)* @new_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.object_entry* @new_object(%struct.object_id* %0) #0 {
  %2 = alloca %struct.object_id*, align 8
  %3 = alloca %struct.object_entry*, align 8
  store %struct.object_id* %0, %struct.object_id** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @blocks, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @blocks, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %6, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @object_entry_alloc, align 4
  %13 = call i32 @alloc_objects(i32 %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @blocks, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %16, align 8
  %19 = inttoptr i64 %17 to %struct.object_entry*
  store %struct.object_entry* %19, %struct.object_entry** %3, align 8
  %20 = load %struct.object_entry*, %struct.object_entry** %3, align 8
  %21 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.object_id*, %struct.object_id** %2, align 8
  %24 = call i32 @oidcpy(i32* %22, %struct.object_id* %23)
  %25 = load %struct.object_entry*, %struct.object_entry** %3, align 8
  ret %struct.object_entry* %25
}

declare dso_local i32 @alloc_objects(i32) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
