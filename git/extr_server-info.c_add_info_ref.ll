; ModuleID = '/home/carl/AnghaBench/git/extr_server-info.c_add_info_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_server-info.c_add_info_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.update_info_ctx = type { i32 }
%struct.object = type { i64, %struct.object_id }

@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s\09%s\0A\00", align 1
@OBJ_TAG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"%s\09%s^{}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, i32, i8*)* @add_info_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_info_ref(i8* %0, %struct.object_id* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.update_info_ctx*, align 8
  %11 = alloca %struct.object*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.update_info_ctx*
  store %struct.update_info_ctx* %13, %struct.update_info_ctx** %10, align 8
  %14 = load i32, i32* @the_repository, align 4
  %15 = load %struct.object_id*, %struct.object_id** %7, align 8
  %16 = call %struct.object* @parse_object(i32 %14, %struct.object_id* %15)
  store %struct.object* %16, %struct.object** %11, align 8
  %17 = load %struct.object*, %struct.object** %11, align 8
  %18 = icmp ne %struct.object* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %53

20:                                               ; preds = %4
  %21 = load %struct.update_info_ctx*, %struct.update_info_ctx** %10, align 8
  %22 = load %struct.object_id*, %struct.object_id** %7, align 8
  %23 = call i32 @oid_to_hex(%struct.object_id* %22)
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @uic_printf(%struct.update_info_ctx* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  br label %53

28:                                               ; preds = %20
  %29 = load %struct.object*, %struct.object** %11, align 8
  %30 = getelementptr inbounds %struct.object, %struct.object* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @OBJ_TAG, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = load i32, i32* @the_repository, align 4
  %36 = load %struct.object*, %struct.object** %11, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call %struct.object* @deref_tag(i32 %35, %struct.object* %36, i8* %37, i32 0)
  store %struct.object* %38, %struct.object** %11, align 8
  %39 = load %struct.object*, %struct.object** %11, align 8
  %40 = icmp ne %struct.object* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load %struct.update_info_ctx*, %struct.update_info_ctx** %10, align 8
  %43 = load %struct.object*, %struct.object** %11, align 8
  %44 = getelementptr inbounds %struct.object, %struct.object* %43, i32 0, i32 1
  %45 = call i32 @oid_to_hex(%struct.object_id* %44)
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @uic_printf(%struct.update_info_ctx* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %45, i8* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 -1, i32* %5, align 4
  br label %53

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %34
  br label %52

52:                                               ; preds = %51, %28
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %49, %27, %19
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.object* @parse_object(i32, %struct.object_id*) #1

declare dso_local i64 @uic_printf(%struct.update_info_ctx*, i8*, i32, i8*) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local %struct.object* @deref_tag(i32, %struct.object*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
