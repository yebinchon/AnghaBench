; ModuleID = '/home/carl/AnghaBench/git/extr_upload-pack.c_process_shallow.c'
source_filename = "/home/carl/AnghaBench/git/extr_upload-pack.c_process_shallow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_array = type { i32 }
%struct.object_id = type { i32 }
%struct.object = type { i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"shallow \00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid shallow line: %s\00", align 1
@the_repository = common dso_local global i32 0, align 4
@OBJ_COMMIT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"invalid shallow object %s\00", align 1
@CLIENT_SHALLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_array*)* @process_shallow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_shallow(i8* %0, %struct.object_array* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.object_array*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id, align 4
  %8 = alloca %struct.object*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.object_array* %1, %struct.object_array** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @skip_prefix(i8* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %6)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %2
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @get_oid_hex(i8* %13, %struct.object_id* %7)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %16, %12
  %20 = load i32, i32* @the_repository, align 4
  %21 = call %struct.object* @parse_object(i32 %20, %struct.object_id* %7)
  store %struct.object* %21, %struct.object** %8, align 8
  %22 = load %struct.object*, %struct.object** %8, align 8
  %23 = icmp ne %struct.object* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %52

25:                                               ; preds = %19
  %26 = load %struct.object*, %struct.object** %8, align 8
  %27 = getelementptr inbounds %struct.object, %struct.object* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @OBJ_COMMIT, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = call i8* @oid_to_hex(%struct.object_id* %7)
  %33 = call i32 @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %31, %25
  %35 = load %struct.object*, %struct.object** %8, align 8
  %36 = getelementptr inbounds %struct.object, %struct.object* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @CLIENT_SHALLOW, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @CLIENT_SHALLOW, align 4
  %43 = load %struct.object*, %struct.object** %8, align 8
  %44 = getelementptr inbounds %struct.object, %struct.object* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.object*, %struct.object** %8, align 8
  %48 = load %struct.object_array*, %struct.object_array** %5, align 8
  %49 = call i32 @add_object_array(%struct.object* %47, i32* null, %struct.object_array* %48)
  br label %50

50:                                               ; preds = %41, %34
  store i32 1, i32* %3, align 4
  br label %52

51:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %50, %24
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i64 @get_oid_hex(i8*, %struct.object_id*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local %struct.object* @parse_object(i32, %struct.object_id*) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @add_object_array(%struct.object*, i32*, %struct.object_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
