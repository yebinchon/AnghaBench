; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_get_photo.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_get_photo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@index_mode = common dso_local global i32 0, align 4
@write_only = common dso_local global i32 0, align 4
@types = common dso_local global i32* null, align 8
@PHOTO_TYPE = common dso_local global i64 0, align 8
@NOAIO = common dso_local global i32 0, align 4
@return_fields = common dso_local global i32 0, align 4
@debug_error = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_photo(i32 %0, i32 %1, i32 %2, i8* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  %15 = load i32, i32* @index_mode, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @write_only, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %17, %5
  %22 = phi i1 [ false, %5 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.TYPE_6__* @conv_uid_get(i32 %25)
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %12, align 8
  %27 = load i32*, i32** @types, align 8
  %28 = load i64, i64* @PHOTO_TYPE, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @get_fields(i32* %29, i8* %30)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %33 = icmp eq %struct.TYPE_6__* %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %21
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @check_photo_id(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37, %34, %21
  store i32 0, i32* %6, align 4
  br label %70

42:                                               ; preds = %37
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @NOAIO, align 4
  %48 = call i32 @load_user_metafile(%struct.TYPE_6__* %43, i32 %46, i32 %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %50 = call i32 @user_loaded(%struct.TYPE_6__* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %42
  store i32 -2, i32* %6, align 4
  br label %70

53:                                               ; preds = %42
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @user_get_photo(%struct.TYPE_6__* %54, i32 %55, i32 %56, i32* %14)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %70

60:                                               ; preds = %53
  %61 = load i64, i64* @PHOTO_TYPE, align 8
  %62 = load i32, i32* @return_fields, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i8* @event_to_array(i32* %14, i64 %61, i32 %62, i32 %63)
  %65 = load i8**, i8*** %11, align 8
  store i8* %64, i8** %65, align 8
  %66 = load i64, i64* @debug_error, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %70

69:                                               ; preds = %60
  store i32 1, i32* %6, align 4
  br label %70

70:                                               ; preds = %69, %68, %59, %52, %41
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_6__* @conv_uid_get(i32) #1

declare dso_local i32 @get_fields(i32*, i8*) #1

declare dso_local i32 @check_photo_id(i32) #1

declare dso_local i32 @load_user_metafile(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @user_loaded(%struct.TYPE_6__*) #1

declare dso_local i64 @user_get_photo(%struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i8* @event_to_array(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
