; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-array.c_oid_array_append.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-array.c_oid_array_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_array = type { i64, i64, i32*, i32 }
%struct.object_id = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oid_array_append(%struct.oid_array* %0, %struct.object_id* %1) #0 {
  %3 = alloca %struct.oid_array*, align 8
  %4 = alloca %struct.object_id*, align 8
  store %struct.oid_array* %0, %struct.oid_array** %3, align 8
  store %struct.object_id* %1, %struct.object_id** %4, align 8
  %5 = load %struct.oid_array*, %struct.oid_array** %3, align 8
  %6 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = load %struct.oid_array*, %struct.oid_array** %3, align 8
  %9 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  %12 = load %struct.oid_array*, %struct.oid_array** %3, align 8
  %13 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ALLOC_GROW(i32* %7, i64 %11, i32 %14)
  %16 = load %struct.oid_array*, %struct.oid_array** %3, align 8
  %17 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.oid_array*, %struct.oid_array** %3, align 8
  %20 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %20, align 8
  %23 = getelementptr inbounds i32, i32* %18, i64 %21
  %24 = load %struct.object_id*, %struct.object_id** %4, align 8
  %25 = call i32 @oidcpy(i32* %23, %struct.object_id* %24)
  %26 = load %struct.oid_array*, %struct.oid_array** %3, align 8
  %27 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  ret void
}

declare dso_local i32 @ALLOC_GROW(i32*, i64, i32) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
