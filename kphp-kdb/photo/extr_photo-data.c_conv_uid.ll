; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_conv_uid.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_conv_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@log_split_mod = common dso_local global i32 0, align 4
@log_split_min = common dso_local global i32 0, align 4
@import_dump_mode = common dso_local global i64 0, align 8
@users = common dso_local global %struct.TYPE_7__* null, align 8
@h_users = common dso_local global i32 0, align 4
@cur_local_id = common dso_local global i32 0, align 4
@user_cnt = common dso_local global i32 0, align 4
@header = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@MIN_NEW_PHOTO_ID = common dso_local global i32 0, align 4
@MIN_NEW_ALBUM_ID = common dso_local global i32 0, align 4
@write_only = common dso_local global i32 0, align 4
@album_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @conv_uid(i32 %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__**, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %102

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @dl_abs(i32 %9)
  %11 = load i32, i32* @log_split_mod, align 4
  %12 = srem i32 %10, %11
  %13 = load i32, i32* @log_split_min, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %102

16:                                               ; preds = %8
  %17 = load i64, i64* @import_dump_mode, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @users, align 8
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %2, align 8
  br label %102

21:                                               ; preds = %16
  %22 = call i64 @set_intp_add(i32* @h_users, i32* %3)
  %23 = inttoptr i64 %22 to %struct.TYPE_7__**
  store %struct.TYPE_7__** %23, %struct.TYPE_7__*** %4, align 8
  %24 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = bitcast i32* %3 to %struct.TYPE_7__*
  %27 = icmp eq %struct.TYPE_7__* %25, %26
  br i1 %27, label %28, label %99

28:                                               ; preds = %21
  %29 = load i32, i32* @cur_local_id, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* @user_cnt, align 4
  %32 = icmp slt i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** @users, align 8
  %36 = load i32, i32* @cur_local_id, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @cur_local_id, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %38
  %40 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %40, align 8
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @cur_local_id, align 4
  %46 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @cur_local_id, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @header, i32 0, i32 0), align 8
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %81

52:                                               ; preds = %28
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @header, i32 0, i32 1), align 8
  %55 = load i32, i32* @cur_local_id, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %53, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @header, i32 0, i32 1), align 8
  %64 = load i32, i32* @cur_local_id, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 4
  store i32 %68, i32* %71, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @header, i32 0, i32 1), align 8
  %73 = load i32, i32* @cur_local_id, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  store i32 %77, i32* %80, align 4
  br label %90

81:                                               ; preds = %28
  %82 = load i32, i32* @MIN_NEW_PHOTO_ID, align 4
  %83 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 4
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @MIN_NEW_ALBUM_ID, align 4
  %87 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 3
  store i32 %86, i32* %89, align 4
  br label %90

90:                                               ; preds = %81, %52
  %91 = load i32, i32* @write_only, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %90
  %94 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = call i32 @data_init(i32* %96, i32* @album_func)
  br label %98

98:                                               ; preds = %93, %90
  br label %99

99:                                               ; preds = %98, %21
  %100 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  store %struct.TYPE_7__* %101, %struct.TYPE_7__** %2, align 8
  br label %102

102:                                              ; preds = %99, %19, %15, %7
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %103
}

declare dso_local i32 @dl_abs(i32) #1

declare dso_local i64 @set_intp_add(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @data_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
