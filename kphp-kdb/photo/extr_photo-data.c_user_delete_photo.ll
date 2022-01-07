; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_user_delete_photo.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_user_delete_photo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@write_only = common dso_local global i64 0, align 8
@MAX_HIDE = common dso_local global i64 0, align 8
@HIDE_ITERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_delete_photo(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* @write_only, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %59

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = call i32 @user_loaded(%struct.TYPE_6__* %12)
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @user_get_aid_by_pid(%struct.TYPE_6__* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %59

21:                                               ; preds = %11
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32* @user_get_photo_data(%struct.TYPE_6__* %22, i32 %23)
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %59

28:                                               ; preds = %21
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @data_get_hidden_state(i32* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %59

34:                                               ; preds = %28
  %35 = load i32*, i32** %7, align 8
  %36 = call i64 @data_hide_expected_size(i32* %35)
  %37 = load i64, i64* @MAX_HIDE, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @data_del(i32* %40, i32 %41)
  %43 = icmp sgt i32 %42, -1
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @lookup_set(i32* %47, i32 %48, i32 0)
  br label %58

50:                                               ; preds = %34
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @HIDE_ITERS, align 4
  %54 = call i32 @data_hide(i32* %51, i32 %52, i32 %53)
  %55 = icmp sgt i32 %54, -1
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  br label %58

58:                                               ; preds = %50, %39
  store i32 1, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %33, %27, %20, %10
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @user_loaded(%struct.TYPE_6__*) #1

declare dso_local i32 @user_get_aid_by_pid(%struct.TYPE_6__*, i32) #1

declare dso_local i32* @user_get_photo_data(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @data_get_hidden_state(i32*, i32) #1

declare dso_local i64 @data_hide_expected_size(i32*) #1

declare dso_local i32 @data_del(i32*, i32) #1

declare dso_local i32 @lookup_set(i32*, i32, i32) #1

declare dso_local i32 @data_hide(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
