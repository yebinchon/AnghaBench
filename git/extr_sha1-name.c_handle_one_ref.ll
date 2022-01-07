; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_handle_one_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_handle_one_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.handle_one_ref_cb = type { i32, %struct.commit_list** }
%struct.commit_list = type { i32 }
%struct.object = type { i64 }
%struct.commit = type { i32 }

@OBJ_TAG = common dso_local global i64 0, align 8
@OBJ_COMMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, i32, i8*)* @handle_one_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_one_ref(i8* %0, %struct.object_id* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.handle_one_ref_cb*, align 8
  %11 = alloca %struct.commit_list**, align 8
  %12 = alloca %struct.object*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.handle_one_ref_cb*
  store %struct.handle_one_ref_cb* %14, %struct.handle_one_ref_cb** %10, align 8
  %15 = load %struct.handle_one_ref_cb*, %struct.handle_one_ref_cb** %10, align 8
  %16 = getelementptr inbounds %struct.handle_one_ref_cb, %struct.handle_one_ref_cb* %15, i32 0, i32 1
  %17 = load %struct.commit_list**, %struct.commit_list*** %16, align 8
  store %struct.commit_list** %17, %struct.commit_list*** %11, align 8
  %18 = load %struct.handle_one_ref_cb*, %struct.handle_one_ref_cb** %10, align 8
  %19 = getelementptr inbounds %struct.handle_one_ref_cb, %struct.handle_one_ref_cb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.object_id*, %struct.object_id** %7, align 8
  %22 = call %struct.object* @parse_object(i32 %20, %struct.object_id* %21)
  store %struct.object* %22, %struct.object** %12, align 8
  %23 = load %struct.object*, %struct.object** %12, align 8
  %24 = icmp ne %struct.object* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %57

26:                                               ; preds = %4
  %27 = load %struct.object*, %struct.object** %12, align 8
  %28 = getelementptr inbounds %struct.object, %struct.object* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @OBJ_TAG, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load %struct.handle_one_ref_cb*, %struct.handle_one_ref_cb** %10, align 8
  %34 = getelementptr inbounds %struct.handle_one_ref_cb, %struct.handle_one_ref_cb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.object*, %struct.object** %12, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = call %struct.object* @deref_tag(i32 %35, %struct.object* %36, i8* %37, i32 %39)
  store %struct.object* %40, %struct.object** %12, align 8
  %41 = load %struct.object*, %struct.object** %12, align 8
  %42 = icmp ne %struct.object* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %57

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %26
  %46 = load %struct.object*, %struct.object** %12, align 8
  %47 = getelementptr inbounds %struct.object, %struct.object* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @OBJ_COMMIT, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %57

52:                                               ; preds = %45
  %53 = load %struct.object*, %struct.object** %12, align 8
  %54 = bitcast %struct.object* %53 to %struct.commit*
  %55 = load %struct.commit_list**, %struct.commit_list*** %11, align 8
  %56 = call i32 @commit_list_insert(%struct.commit* %54, %struct.commit_list** %55)
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %52, %51, %43, %25
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.object* @parse_object(i32, %struct.object_id*) #1

declare dso_local %struct.object* @deref_tag(i32, %struct.object*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @commit_list_insert(%struct.commit*, %struct.commit_list**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
