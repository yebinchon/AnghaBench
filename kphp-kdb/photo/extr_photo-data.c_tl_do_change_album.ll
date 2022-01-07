; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_tl_do_change_album.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_tl_do_change_album.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i64 }
%struct.tl_change_album = type { i64, i32, i32, i32, i32 }

@MAX_EVENT_SIZE = common dso_local global i64 0, align 8
@ALBUM_TYPE = common dso_local global i32 0, align 4
@TL_ERROR_BAD_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Can't parse changes\00", align 1
@field_changes_n = common dso_local global i64 0, align 8
@LEV_PHOTO_CHANGE_ALBUM = common dso_local global i32 0, align 4
@location_changes_n = common dso_local global i64 0, align 8
@TL_BOOL_TRUE = common dso_local global i32 0, align 4
@TL_BOOL_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_do_change_album(%struct.tl_act_extra* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tl_act_extra*, align 8
  %4 = alloca %struct.tl_change_album*, align 8
  %5 = alloca i32, align 4
  store %struct.tl_act_extra* %0, %struct.tl_act_extra** %3, align 8
  %6 = load %struct.tl_act_extra*, %struct.tl_act_extra** %3, align 8
  %7 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.tl_change_album*
  store %struct.tl_change_album* %9, %struct.tl_change_album** %4, align 8
  %10 = load %struct.tl_change_album*, %struct.tl_change_album** %4, align 8
  %11 = getelementptr inbounds %struct.tl_change_album, %struct.tl_change_album* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @check_album_id(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.tl_change_album*, %struct.tl_change_album** %4, align 8
  %17 = getelementptr inbounds %struct.tl_change_album, %struct.tl_change_album* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 0, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.tl_change_album*, %struct.tl_change_album** %4, align 8
  %22 = getelementptr inbounds %struct.tl_change_album, %struct.tl_change_album* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MAX_EVENT_SIZE, align 8
  %25 = icmp slt i64 %23, %24
  br label %26

26:                                               ; preds = %20, %15, %1
  %27 = phi i1 [ false, %15 ], [ false, %1 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32, i32* @ALBUM_TYPE, align 4
  %31 = load %struct.tl_change_album*, %struct.tl_change_album** %4, align 8
  %32 = getelementptr inbounds %struct.tl_change_album, %struct.tl_change_album* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.tl_change_album*, %struct.tl_change_album** %4, align 8
  %35 = getelementptr inbounds %struct.tl_change_album, %struct.tl_change_album* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.tl_change_album*, %struct.tl_change_album** %4, align 8
  %38 = getelementptr inbounds %struct.tl_change_album, %struct.tl_change_album* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @rpc_get_fields(i32 %30, i32 %33, i32 %36, i64 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %26
  %43 = load i32, i32* @TL_ERROR_BAD_VALUE, align 4
  %44 = call i32 @tl_fetch_set_error_format(i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %73

45:                                               ; preds = %26
  store i32 1, i32* %5, align 4
  %46 = load i64, i64* @field_changes_n, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load %struct.tl_change_album*, %struct.tl_change_album** %4, align 8
  %50 = getelementptr inbounds %struct.tl_change_album, %struct.tl_change_album* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.tl_change_album*, %struct.tl_change_album** %4, align 8
  %53 = getelementptr inbounds %struct.tl_change_album, %struct.tl_change_album* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @LEV_PHOTO_CHANGE_ALBUM, align 4
  %56 = call i32 @do_change_data(i32 %51, i32 %54, i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %48, %45
  %60 = load i64, i64* @location_changes_n, align 8
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @TL_BOOL_TRUE, align 4
  br label %70

68:                                               ; preds = %59
  %69 = load i32, i32* @TL_BOOL_FALSE, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = call i32 @tl_store_int(i32 %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %70, %42
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @check_album_id(i32) #1

declare dso_local i64 @rpc_get_fields(i32, i32, i32, i64) #1

declare dso_local i32 @tl_fetch_set_error_format(i32, i8*) #1

declare dso_local i32 @do_change_data(i32, i32, i32) #1

declare dso_local i32 @tl_store_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
