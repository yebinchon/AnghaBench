; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_user_get_photo_data.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_user_get_photo_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64*, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"unexisted album %d\0A\00", align 1
@photo_func = common dso_local global i32 0, align 4
@EMPTY__METAFILE = common dso_local global i64 0, align 8
@EMPTY__METAFILE_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @user_get_photo_data(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = call i32* @user_get_album_data(%struct.TYPE_4__* %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @data_get_local_id_by_id(i32* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32* null, i32** %3, align 8
  br label %105

20:                                               ; preds = %2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 5
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @map_int_vptr_add(i32* %22, i32 %23)
  %25 = inttoptr i64 %24 to i32**
  store i32** %25, i32*** %8, align 8
  %26 = load i32**, i32*** %8, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = call i32* @dl_malloc(i32 4)
  %31 = load i32**, i32*** %8, align 8
  store i32* %30, i32** %31, align 8
  %32 = load i32**, i32*** %8, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @data_init(i32* %33, i32* @photo_func)
  br label %35

35:                                               ; preds = %29, %20
  %36 = load i32**, i32*** %8, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @data_loaded(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %102, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %9, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32* @set_int_get(i32* %45, i32 %46)
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %40
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @dl_find_int(i32 %52, i32 %55, i32 %56)
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %49, %40
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %59, %62
  br i1 %63, label %64, label %95

64:                                               ; preds = %58
  %65 = load i32**, i32*** %8, align 8
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %69, %76
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %80, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %85, %92
  %94 = call i32 @data_load(i32* %66, i64 %77, i64 %93)
  br label %101

95:                                               ; preds = %58
  %96 = load i32**, i32*** %8, align 8
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* @EMPTY__METAFILE, align 8
  %99 = load i64, i64* @EMPTY__METAFILE_LEN, align 8
  %100 = call i32 @data_load(i32* %97, i64 %98, i64 %99)
  br label %101

101:                                              ; preds = %95, %64
  br label %102

102:                                              ; preds = %101, %35
  %103 = load i32**, i32*** %8, align 8
  %104 = load i32*, i32** %103, align 8
  store i32* %104, i32** %3, align 8
  br label %105

105:                                              ; preds = %102, %17
  %106 = load i32*, i32** %3, align 8
  ret i32* %106
}

declare dso_local i32* @user_get_album_data(%struct.TYPE_4__*) #1

declare dso_local i32 @data_get_local_id_by_id(i32*, i32) #1

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i64 @map_int_vptr_add(i32*, i32) #1

declare dso_local i32* @dl_malloc(i32) #1

declare dso_local i32 @data_init(i32*, i32*) #1

declare dso_local i32 @data_loaded(i32*) #1

declare dso_local i32* @set_int_get(i32*, i32) #1

declare dso_local i32 @dl_find_int(i32, i32, i32) #1

declare dso_local i32 @data_load(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
