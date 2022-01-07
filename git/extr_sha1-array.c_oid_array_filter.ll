; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-array.c_oid_array_filter.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-array.c_oid_array_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_array = type { i32, %struct.object_id* }
%struct.object_id = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oid_array_filter(%struct.oid_array* %0, i64 (%struct.object_id*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.oid_array*, align 8
  %5 = alloca i64 (%struct.object_id*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.object_id*, align 8
  store %struct.oid_array* %0, %struct.oid_array** %4, align 8
  store i64 (%struct.object_id*, i8*)* %1, i64 (%struct.object_id*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.oid_array*, %struct.oid_array** %4, align 8
  %12 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.oid_array*, %struct.oid_array** %4, align 8
  %15 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %14, i32 0, i32 1
  %16 = load %struct.object_id*, %struct.object_id** %15, align 8
  store %struct.object_id* %16, %struct.object_id** %10, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %48, %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %17
  %22 = load i64 (%struct.object_id*, i8*)*, i64 (%struct.object_id*, i8*)** %5, align 8
  %23 = load %struct.object_id*, %struct.object_id** %10, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.object_id, %struct.object_id* %23, i64 %25
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 %22(%struct.object_id* %26, i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %21
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load %struct.object_id*, %struct.object_id** %10, align 8
  %36 = load i32, i32* %9, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.object_id, %struct.object_id* %35, i64 %37
  %39 = load %struct.object_id*, %struct.object_id** %10, align 8
  %40 = load i32, i32* %8, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.object_id, %struct.object_id* %39, i64 %41
  %43 = call i32 @oidcpy(%struct.object_id* %38, %struct.object_id* %42)
  br label %44

44:                                               ; preds = %34, %30
  %45 = load i32, i32* %9, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %44, %21
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %17

51:                                               ; preds = %17
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.oid_array*, %struct.oid_array** %4, align 8
  %54 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  ret void
}

declare dso_local i32 @oidcpy(%struct.object_id*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
