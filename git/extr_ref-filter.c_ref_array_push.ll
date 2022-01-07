; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_ref_array_push.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_ref_array_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_array_item = type { i32 }
%struct.ref_array = type { i64, %struct.ref_array_item**, i32 }
%struct.object_id = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ref_array_item* @ref_array_push(%struct.ref_array* %0, i8* %1, %struct.object_id* %2) #0 {
  %4 = alloca %struct.ref_array*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca %struct.ref_array_item*, align 8
  store %struct.ref_array* %0, %struct.ref_array** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.object_id* %2, %struct.object_id** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load %struct.object_id*, %struct.object_id** %6, align 8
  %10 = call %struct.ref_array_item* @new_ref_array_item(i8* %8, %struct.object_id* %9)
  store %struct.ref_array_item* %10, %struct.ref_array_item** %7, align 8
  %11 = load %struct.ref_array*, %struct.ref_array** %4, align 8
  %12 = getelementptr inbounds %struct.ref_array, %struct.ref_array* %11, i32 0, i32 1
  %13 = load %struct.ref_array_item**, %struct.ref_array_item*** %12, align 8
  %14 = load %struct.ref_array*, %struct.ref_array** %4, align 8
  %15 = getelementptr inbounds %struct.ref_array, %struct.ref_array* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 1
  %18 = load %struct.ref_array*, %struct.ref_array** %4, align 8
  %19 = getelementptr inbounds %struct.ref_array, %struct.ref_array* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ALLOC_GROW(%struct.ref_array_item** %13, i64 %17, i32 %20)
  %22 = load %struct.ref_array_item*, %struct.ref_array_item** %7, align 8
  %23 = load %struct.ref_array*, %struct.ref_array** %4, align 8
  %24 = getelementptr inbounds %struct.ref_array, %struct.ref_array* %23, i32 0, i32 1
  %25 = load %struct.ref_array_item**, %struct.ref_array_item*** %24, align 8
  %26 = load %struct.ref_array*, %struct.ref_array** %4, align 8
  %27 = getelementptr inbounds %struct.ref_array, %struct.ref_array* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = getelementptr inbounds %struct.ref_array_item*, %struct.ref_array_item** %25, i64 %28
  store %struct.ref_array_item* %22, %struct.ref_array_item** %30, align 8
  %31 = load %struct.ref_array_item*, %struct.ref_array_item** %7, align 8
  ret %struct.ref_array_item* %31
}

declare dso_local %struct.ref_array_item* @new_ref_array_item(i8*, %struct.object_id*) #1

declare dso_local i32 @ALLOC_GROW(%struct.ref_array_item**, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
