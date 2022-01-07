; ModuleID = '/home/carl/AnghaBench/git/extr_object.c_object_array_pop.c'
source_filename = "/home/carl/AnghaBench/git/extr_object.c_object_array_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32 }
%struct.object_array = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.object* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.object* @object_array_pop(%struct.object_array* %0) #0 {
  %2 = alloca %struct.object*, align 8
  %3 = alloca %struct.object_array*, align 8
  %4 = alloca %struct.object*, align 8
  store %struct.object_array* %0, %struct.object_array** %3, align 8
  %5 = load %struct.object_array*, %struct.object_array** %3, align 8
  %6 = getelementptr inbounds %struct.object_array, %struct.object_array* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.object* null, %struct.object** %2, align 8
  br label %37

10:                                               ; preds = %1
  %11 = load %struct.object_array*, %struct.object_array** %3, align 8
  %12 = getelementptr inbounds %struct.object_array, %struct.object_array* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load %struct.object_array*, %struct.object_array** %3, align 8
  %15 = getelementptr inbounds %struct.object_array, %struct.object_array* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.object*, %struct.object** %20, align 8
  store %struct.object* %21, %struct.object** %4, align 8
  %22 = load %struct.object_array*, %struct.object_array** %3, align 8
  %23 = getelementptr inbounds %struct.object_array, %struct.object_array* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load %struct.object_array*, %struct.object_array** %3, align 8
  %26 = getelementptr inbounds %struct.object_array, %struct.object_array* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %29
  %31 = call i32 @object_array_release_entry(%struct.TYPE_2__* %30)
  %32 = load %struct.object_array*, %struct.object_array** %3, align 8
  %33 = getelementptr inbounds %struct.object_array, %struct.object_array* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 8
  %36 = load %struct.object*, %struct.object** %4, align 8
  store %struct.object* %36, %struct.object** %2, align 8
  br label %37

37:                                               ; preds = %10, %9
  %38 = load %struct.object*, %struct.object** %2, align 8
  ret %struct.object* %38
}

declare dso_local i32 @object_array_release_entry(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
