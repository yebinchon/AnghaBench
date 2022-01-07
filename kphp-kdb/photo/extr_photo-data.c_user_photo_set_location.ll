; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_user_photo_set_location.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_user_photo_set_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@write_only = common dso_local global i32 0, align 4
@tmp_field_changes_n = common dso_local global i64 0, align 8
@tmp_field_changes = common dso_local global %struct.TYPE_3__* null, align 8
@photo_type__original_location = common dso_local global i32 0, align 4
@photo_type__location = common dso_local global i32 0, align 4
@raw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_photo_set_location(i32* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = call i64 @user_loaded(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load i32, i32* @write_only, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %17, %5
  %22 = phi i1 [ false, %5 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @user_get_aid_by_pid(i32* %25, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32* @user_get_photo_data(i32* %32, i32 %33)
  store i32* %34, i32** %13, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %60

38:                                               ; preds = %21
  store i64 0, i64* @tmp_field_changes_n, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tmp_field_changes, align 8
  %41 = load i64, i64* @tmp_field_changes_n, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* @photo_type__original_location, align 4
  br label %50

48:                                               ; preds = %38
  %49 = load i32, i32* @photo_type__location, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = load i32, i32* @raw, align 4
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 @TMP_ADD_CHANGE(i32 %51, i32 %52, i8* %53)
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tmp_field_changes, align 8
  %58 = load i64, i64* @tmp_field_changes_n, align 8
  %59 = call i32 @user_change_data(i32* %55, i32 %56, %struct.TYPE_3__* %57, i64 %58, i32 1)
  store i32 1, i32* %6, align 4
  br label %60

60:                                               ; preds = %50, %37
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @user_loaded(i32*) #1

declare dso_local i32 @user_get_aid_by_pid(i32*, i32) #1

declare dso_local i32* @user_get_photo_data(i32*, i32) #1

declare dso_local i32 @TMP_ADD_CHANGE(i32, i32, i8*) #1

declare dso_local i32 @user_change_data(i32*, i32, %struct.TYPE_3__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
