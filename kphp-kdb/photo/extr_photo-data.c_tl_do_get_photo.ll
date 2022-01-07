; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_tl_do_get_photo.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_tl_do_get_photo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i64 }
%struct.tl_get_photo = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@index_mode = common dso_local global i32 0, align 4
@write_only = common dso_local global i32 0, align 4
@TL_MAYBE_FALSE = common dso_local global i32 0, align 4
@NOAIO = common dso_local global i32 0, align 4
@TL_MAYBE_TRUE = common dso_local global i32 0, align 4
@PHOTO_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_do_get_photo(%struct.tl_act_extra* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tl_act_extra*, align 8
  %4 = alloca %struct.tl_get_photo*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  store %struct.tl_act_extra* %0, %struct.tl_act_extra** %3, align 8
  %7 = load %struct.tl_act_extra*, %struct.tl_act_extra** %3, align 8
  %8 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.tl_get_photo*
  store %struct.tl_get_photo* %10, %struct.tl_get_photo** %4, align 8
  %11 = load %struct.tl_get_photo*, %struct.tl_get_photo** %4, align 8
  %12 = getelementptr inbounds %struct.tl_get_photo, %struct.tl_get_photo* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @check_user_id(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.tl_get_photo*, %struct.tl_get_photo** %4, align 8
  %18 = getelementptr inbounds %struct.tl_get_photo, %struct.tl_get_photo* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @check_photo_id(i32 %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %16, %1
  %23 = phi i1 [ false, %1 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* @index_mode, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @write_only, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %28, %22
  %33 = phi i1 [ false, %22 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.tl_get_photo*, %struct.tl_get_photo** %4, align 8
  %37 = getelementptr inbounds %struct.tl_get_photo, %struct.tl_get_photo* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_6__* @conv_uid_get(i32 %38)
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %5, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = icmp eq %struct.TYPE_6__* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* @TL_MAYBE_FALSE, align 4
  %44 = call i32 @tl_store_int(i32 %43)
  store i32 0, i32* %2, align 4
  br label %77

45:                                               ; preds = %32
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NOAIO, align 4
  %51 = call i32 @load_user_metafile(%struct.TYPE_6__* %46, i32 %49, i32 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = call i32 @user_loaded(%struct.TYPE_6__* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  store i32 -2, i32* %2, align 4
  br label %77

56:                                               ; preds = %45
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = load %struct.tl_get_photo*, %struct.tl_get_photo** %4, align 8
  %59 = getelementptr inbounds %struct.tl_get_photo, %struct.tl_get_photo* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.tl_get_photo*, %struct.tl_get_photo** %4, align 8
  %62 = getelementptr inbounds %struct.tl_get_photo, %struct.tl_get_photo* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @user_get_photo(%struct.TYPE_6__* %57, i32 %60, i32 %63, i32* %6)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load i32, i32* @TL_MAYBE_FALSE, align 4
  %68 = call i32 @tl_store_int(i32 %67)
  store i32 0, i32* %2, align 4
  br label %77

69:                                               ; preds = %56
  %70 = load i32, i32* @TL_MAYBE_TRUE, align 4
  %71 = call i32 @tl_store_int(i32 %70)
  %72 = load i32, i32* @PHOTO_TYPE, align 4
  %73 = load %struct.tl_get_photo*, %struct.tl_get_photo** %4, align 8
  %74 = getelementptr inbounds %struct.tl_get_photo, %struct.tl_get_photo* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @event_to_rpc(i32* %6, i32 %72, i32 %75)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %69, %66, %55, %42
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @check_user_id(i32) #1

declare dso_local i64 @check_photo_id(i32) #1

declare dso_local %struct.TYPE_6__* @conv_uid_get(i32) #1

declare dso_local i32 @tl_store_int(i32) #1

declare dso_local i32 @load_user_metafile(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @user_loaded(%struct.TYPE_6__*) #1

declare dso_local i64 @user_get_photo(%struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i32 @event_to_rpc(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
