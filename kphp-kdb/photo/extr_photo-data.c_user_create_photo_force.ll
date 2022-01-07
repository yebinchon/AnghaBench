; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_user_create_photo_force.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_user_create_photo_force.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@write_only = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_create_photo_force(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = call i32 @check_photo_id(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @check_album_id(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %19, %20
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18, %14, %4
  store i32 -1, i32* %5, align 4
  br label %64

27:                                               ; preds = %18
  %28 = load i64, i64* @write_only, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 1, i32* %5, align 4
  br label %64

31:                                               ; preds = %27
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = call i32 @user_loaded(%struct.TYPE_7__* %32)
  %34 = call i32 @assert(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @user_create_album_force(%struct.TYPE_7__* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %31
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32* @user_get_photo_data(%struct.TYPE_7__* %42, i32 %43)
  store i32* %44, i32** %10, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %41
  %48 = load i32*, i32** %10, align 8
  %49 = call i64 @data_get_cnt(i32* %48)
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @GET_MAX_PHOTOS(i32 %53)
  %55 = icmp sgt i64 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %47, %41
  store i32 -1, i32* %5, align 4
  br label %64

57:                                               ; preds = %47
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @user_create_photo_internal(%struct.TYPE_7__* %58, i32* %59, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %57, %56, %30, %26
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @check_photo_id(i32) #1

declare dso_local i32 @check_album_id(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @user_loaded(%struct.TYPE_7__*) #1

declare dso_local i32 @user_create_album_force(%struct.TYPE_7__*, i32) #1

declare dso_local i32* @user_get_photo_data(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @data_get_cnt(i32*) #1

declare dso_local i64 @GET_MAX_PHOTOS(i32) #1

declare dso_local i32 @user_create_photo_internal(%struct.TYPE_7__*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
