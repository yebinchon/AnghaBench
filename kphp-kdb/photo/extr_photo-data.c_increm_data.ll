; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_increm_data.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_increm_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.lev_photo_increm_data = type { i32, i32, i32 }
%struct.lev_generic = type { i32 }

@write_only = common dso_local global i64 0, align 8
@mode = common dso_local global i32 0, align 4
@types = common dso_local global %struct.TYPE_5__* null, align 8
@PHOTO_TYPE = common dso_local global i64 0, align 8
@ALBUM_TYPE = common dso_local global i64 0, align 8
@t_int = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @increm_data(i32* %0, %struct.lev_photo_increm_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.lev_photo_increm_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.lev_photo_increm_data* %1, %struct.lev_photo_increm_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %111

13:                                               ; preds = %3
  %14 = load i64, i64* @write_only, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %111

17:                                               ; preds = %13
  %18 = load %struct.lev_photo_increm_data*, %struct.lev_photo_increm_data** %6, align 8
  %19 = getelementptr inbounds %struct.lev_photo_increm_data, %struct.lev_photo_increm_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 255
  store i32 %21, i32* %8, align 4
  %22 = load %struct.lev_photo_increm_data*, %struct.lev_photo_increm_data** %6, align 8
  %23 = getelementptr inbounds %struct.lev_photo_increm_data, %struct.lev_photo_increm_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @mode, align 4
  %26 = shl i32 %25, 16
  %27 = sub nsw i32 %24, %26
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %27, %28
  switch i32 %29, label %38 [
    i32 128, label %30
    i32 129, label %34
  ]

30:                                               ; preds = %17
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @types, align 8
  %32 = load i64, i64* @PHOTO_TYPE, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %32
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %9, align 8
  br label %40

34:                                               ; preds = %17
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @types, align 8
  %36 = load i64, i64* @ALBUM_TYPE, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %36
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %9, align 8
  br label %40

38:                                               ; preds = %17
  %39 = call i32 @assert(i32 0)
  store i32 0, i32* %4, align 4
  br label %111

40:                                               ; preds = %34, %30
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %111

58:                                               ; preds = %40
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @t_int, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %111

70:                                               ; preds = %58
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @user_loaded(i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %70
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.lev_photo_increm_data*, %struct.lev_photo_increm_data** %6, align 8
  %77 = bitcast %struct.lev_photo_increm_data* %76 to %struct.lev_generic*
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @user_add_change(i32* %75, %struct.lev_generic* %77, i32 %78)
  store i32 1, i32* %4, align 4
  br label %111

80:                                               ; preds = %70
  %81 = load %struct.lev_photo_increm_data*, %struct.lev_photo_increm_data** %6, align 8
  %82 = getelementptr inbounds %struct.lev_photo_increm_data, %struct.lev_photo_increm_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @mode, align 4
  %85 = shl i32 %84, 16
  %86 = sub nsw i32 %83, %85
  %87 = load i32, i32* %8, align 4
  %88 = sub nsw i32 %86, %87
  switch i32 %88, label %109 [
    i32 128, label %89
    i32 129, label %99
  ]

89:                                               ; preds = %80
  %90 = load i32*, i32** %5, align 8
  %91 = load %struct.lev_photo_increm_data*, %struct.lev_photo_increm_data** %6, align 8
  %92 = getelementptr inbounds %struct.lev_photo_increm_data, %struct.lev_photo_increm_data* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.lev_photo_increm_data*, %struct.lev_photo_increm_data** %6, align 8
  %96 = getelementptr inbounds %struct.lev_photo_increm_data, %struct.lev_photo_increm_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @user_increm_photo_field(i32* %90, i32 %93, i32 %94, i32 %97)
  store i32 %98, i32* %4, align 4
  br label %111

99:                                               ; preds = %80
  %100 = load i32*, i32** %5, align 8
  %101 = load %struct.lev_photo_increm_data*, %struct.lev_photo_increm_data** %6, align 8
  %102 = getelementptr inbounds %struct.lev_photo_increm_data, %struct.lev_photo_increm_data* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.lev_photo_increm_data*, %struct.lev_photo_increm_data** %6, align 8
  %106 = getelementptr inbounds %struct.lev_photo_increm_data, %struct.lev_photo_increm_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @user_increm_album_field(i32* %100, i32 %103, i32 %104, i32 %107)
  store i32 %108, i32* %4, align 4
  br label %111

109:                                              ; preds = %80
  %110 = call i32 @assert(i32 0)
  br label %111

111:                                              ; preds = %12, %16, %38, %57, %69, %74, %89, %99, %109
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @user_loaded(i32*) #1

declare dso_local i32 @user_add_change(i32*, %struct.lev_generic*, i32) #1

declare dso_local i32 @user_increm_photo_field(i32*, i32, i32, i32) #1

declare dso_local i32 @user_increm_album_field(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
