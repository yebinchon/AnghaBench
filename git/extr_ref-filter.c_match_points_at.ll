; ModuleID = '/home/carl/AnghaBench/git/extr_ref-filter.c_match_points_at.c'
source_filename = "/home/carl/AnghaBench/git/extr_ref-filter.c_match_points_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_array = type { i32 }
%struct.object_id = type { i32 }
%struct.object = type { i64 }
%struct.tag = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"malformed object at '%s'\00", align 1
@OBJ_TAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.object_id* (%struct.oid_array*, %struct.object_id*, i8*)* @match_points_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.object_id* @match_points_at(%struct.oid_array* %0, %struct.object_id* %1, i8* %2) #0 {
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca %struct.oid_array*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca %struct.object*, align 8
  store %struct.oid_array* %0, %struct.oid_array** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.object_id* null, %struct.object_id** %8, align 8
  %10 = load %struct.oid_array*, %struct.oid_array** %5, align 8
  %11 = load %struct.object_id*, %struct.object_id** %6, align 8
  %12 = call i64 @oid_array_lookup(%struct.oid_array* %10, %struct.object_id* %11)
  %13 = icmp sge i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load %struct.object_id*, %struct.object_id** %6, align 8
  store %struct.object_id* %15, %struct.object_id** %4, align 8
  br label %47

16:                                               ; preds = %3
  %17 = load i32, i32* @the_repository, align 4
  %18 = load %struct.object_id*, %struct.object_id** %6, align 8
  %19 = call %struct.object* @parse_object(i32 %17, %struct.object_id* %18)
  store %struct.object* %19, %struct.object** %9, align 8
  %20 = load %struct.object*, %struct.object** %9, align 8
  %21 = icmp ne %struct.object* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @die(i32 %23, i8* %24)
  br label %26

26:                                               ; preds = %22, %16
  %27 = load %struct.object*, %struct.object** %9, align 8
  %28 = getelementptr inbounds %struct.object, %struct.object* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @OBJ_TAG, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.object*, %struct.object** %9, align 8
  %34 = bitcast %struct.object* %33 to %struct.tag*
  %35 = call %struct.object_id* @get_tagged_oid(%struct.tag* %34)
  store %struct.object_id* %35, %struct.object_id** %8, align 8
  br label %36

36:                                               ; preds = %32, %26
  %37 = load %struct.object_id*, %struct.object_id** %8, align 8
  %38 = icmp ne %struct.object_id* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load %struct.oid_array*, %struct.oid_array** %5, align 8
  %41 = load %struct.object_id*, %struct.object_id** %8, align 8
  %42 = call i64 @oid_array_lookup(%struct.oid_array* %40, %struct.object_id* %41)
  %43 = icmp sge i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load %struct.object_id*, %struct.object_id** %8, align 8
  store %struct.object_id* %45, %struct.object_id** %4, align 8
  br label %47

46:                                               ; preds = %39, %36
  store %struct.object_id* null, %struct.object_id** %4, align 8
  br label %47

47:                                               ; preds = %46, %44, %14
  %48 = load %struct.object_id*, %struct.object_id** %4, align 8
  ret %struct.object_id* %48
}

declare dso_local i64 @oid_array_lookup(%struct.oid_array*, %struct.object_id*) #1

declare dso_local %struct.object* @parse_object(i32, %struct.object_id*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.object_id* @get_tagged_oid(%struct.tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
