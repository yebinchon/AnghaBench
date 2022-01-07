; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_get_albums_count.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_get_albums_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@index_mode = common dso_local global i32 0, align 4
@write_only = common dso_local global i32 0, align 4
@NOAIO = common dso_local global i32 0, align 4
@ALBUM_TYPE = common dso_local global i32 0, align 4
@MAX_ALBUMS = common dso_local global i32 0, align 4
@result_obj = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_albums_count(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @index_mode, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @write_only, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %14, %2
  %19 = phi i1 [ false, %2 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = call %struct.TYPE_6__* @conv_uid_get(i32 %22)
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %6, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = icmp eq %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %67

27:                                               ; preds = %18
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NOAIO, align 4
  %33 = call i32 @load_user_metafile(%struct.TYPE_6__* %28, i32 %31, i32 %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = call i32 @user_loaded(%struct.TYPE_6__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  store i32 -2, i32* %3, align 4
  br label %67

38:                                               ; preds = %27
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* @ALBUM_TYPE, align 4
  %41 = call i32* @predicate_init(i8* %39, i32 %40)
  store i32* %41, i32** %7, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = load i32, i32* @MAX_ALBUMS, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @user_get_albums(%struct.TYPE_6__* %42, i32 0, i32 %43, i32* %44)
  store i32 %45, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %62, %38
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load i32*, i32** @result_obj, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call i32 @event_get_album_id(i32* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %58, %50
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %46

65:                                               ; preds = %46
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %37, %26
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_6__* @conv_uid_get(i32) #1

declare dso_local i32 @load_user_metafile(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @user_loaded(%struct.TYPE_6__*) #1

declare dso_local i32* @predicate_init(i8*, i32) #1

declare dso_local i32 @user_get_albums(%struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i32 @event_get_album_id(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
