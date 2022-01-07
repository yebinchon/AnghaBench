; ModuleID = '/home/carl/AnghaBench/git/extr_reachable.c_add_recent_object.c'
source_filename = "/home/carl/AnghaBench/git/extr_reachable.c_add_recent_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.recent_data = type { i64, i32 }
%struct.object = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unable to get object info for %s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"unknown object type for %s: %s\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"unable to lookup %s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_id*, i64, %struct.recent_data*)* @add_recent_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_recent_object(%struct.object_id* %0, i64 %1, %struct.recent_data* %2) #0 {
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.recent_data*, align 8
  %7 = alloca %struct.object*, align 8
  %8 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.recent_data* %2, %struct.recent_data** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.recent_data*, %struct.recent_data** %6, align 8
  %11 = getelementptr inbounds %struct.recent_data, %struct.recent_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sle i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %59

15:                                               ; preds = %3
  %16 = load i32, i32* @the_repository, align 4
  %17 = load %struct.object_id*, %struct.object_id** %4, align 8
  %18 = call i32 @oid_object_info(i32 %16, %struct.object_id* %17, i32* null)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ult i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.object_id*, %struct.object_id** %4, align 8
  %23 = call i32 @oid_to_hex(%struct.object_id* %22)
  %24 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %21, %15
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %40 [
    i32 129, label %27
    i32 130, label %27
    i32 128, label %30
    i32 131, label %35
  ]

27:                                               ; preds = %25, %25
  %28 = load %struct.object_id*, %struct.object_id** %4, align 8
  %29 = call %struct.object* @parse_object_or_die(%struct.object_id* %28, i32* null)
  store %struct.object* %29, %struct.object** %7, align 8
  br label %46

30:                                               ; preds = %25
  %31 = load i32, i32* @the_repository, align 4
  %32 = load %struct.object_id*, %struct.object_id** %4, align 8
  %33 = call i64 @lookup_tree(i32 %31, %struct.object_id* %32)
  %34 = inttoptr i64 %33 to %struct.object*
  store %struct.object* %34, %struct.object** %7, align 8
  br label %46

35:                                               ; preds = %25
  %36 = load i32, i32* @the_repository, align 4
  %37 = load %struct.object_id*, %struct.object_id** %4, align 8
  %38 = call i64 @lookup_blob(i32 %36, %struct.object_id* %37)
  %39 = inttoptr i64 %38 to %struct.object*
  store %struct.object* %39, %struct.object** %7, align 8
  br label %46

40:                                               ; preds = %25
  %41 = load %struct.object_id*, %struct.object_id** %4, align 8
  %42 = call i32 @oid_to_hex(%struct.object_id* %41)
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @type_name(i32 %43)
  %45 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %44)
  br label %46

46:                                               ; preds = %40, %35, %30, %27
  %47 = load %struct.object*, %struct.object** %7, align 8
  %48 = icmp ne %struct.object* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load %struct.object_id*, %struct.object_id** %4, align 8
  %51 = call i32 @oid_to_hex(%struct.object_id* %50)
  %52 = call i32 (i8*, i32, ...) @die(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %49, %46
  %54 = load %struct.recent_data*, %struct.recent_data** %6, align 8
  %55 = getelementptr inbounds %struct.recent_data, %struct.recent_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.object*, %struct.object** %7, align 8
  %58 = call i32 @add_pending_object(i32 %56, %struct.object* %57, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %53, %14
  ret void
}

declare dso_local i32 @oid_object_info(i32, %struct.object_id*, i32*) #1

declare dso_local i32 @die(i8*, i32, ...) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local %struct.object* @parse_object_or_die(%struct.object_id*, i32*) #1

declare dso_local i64 @lookup_tree(i32, %struct.object_id*) #1

declare dso_local i64 @lookup_blob(i32, %struct.object_id*) #1

declare dso_local i32 @type_name(i32) #1

declare dso_local i32 @add_pending_object(i32, %struct.object*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
