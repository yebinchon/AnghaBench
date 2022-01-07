; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_find_object.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_find_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_entry = type { %struct.TYPE_2__, %struct.object_entry* }
%struct.TYPE_2__ = type { i32 }
%struct.object_id = type { i32* }

@object_table = common dso_local global %struct.object_entry** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.object_entry* (%struct.object_id*)* @find_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.object_entry* @find_object(%struct.object_id* %0) #0 {
  %2 = alloca %struct.object_entry*, align 8
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.object_entry*, align 8
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  %6 = load %struct.object_id*, %struct.object_id** %3, align 8
  %7 = getelementptr inbounds %struct.object_id, %struct.object_id* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 %10, 8
  %12 = load %struct.object_id*, %struct.object_id** %3, align 8
  %13 = getelementptr inbounds %struct.object_id, %struct.object_id* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %11, %16
  store i32 %17, i32* %4, align 4
  %18 = load %struct.object_entry**, %struct.object_entry*** @object_table, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.object_entry*, %struct.object_entry** %18, i64 %20
  %22 = load %struct.object_entry*, %struct.object_entry** %21, align 8
  store %struct.object_entry* %22, %struct.object_entry** %5, align 8
  br label %23

23:                                               ; preds = %36, %1
  %24 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %25 = icmp ne %struct.object_entry* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load %struct.object_id*, %struct.object_id** %3, align 8
  %28 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %29 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i64 @oideq(%struct.object_id* %27, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  store %struct.object_entry* %34, %struct.object_entry** %2, align 8
  br label %41

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.object_entry*, %struct.object_entry** %5, align 8
  %38 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %37, i32 0, i32 1
  %39 = load %struct.object_entry*, %struct.object_entry** %38, align 8
  store %struct.object_entry* %39, %struct.object_entry** %5, align 8
  br label %23

40:                                               ; preds = %23
  store %struct.object_entry* null, %struct.object_entry** %2, align 8
  br label %41

41:                                               ; preds = %40, %33
  %42 = load %struct.object_entry*, %struct.object_entry** %2, align 8
  ret %struct.object_entry* %42
}

declare dso_local i64 @oideq(%struct.object_id*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
