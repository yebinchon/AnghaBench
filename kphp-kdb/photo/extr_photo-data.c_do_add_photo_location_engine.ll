; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_do_add_photo_location_engine.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_do_add_photo_location_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_photo_add_photo_location_engine = type { i32, i32, i32, i32, i32, i64 }

@LEV_PHOTO_ADD_PHOTO_LOCATION_ENGINE = common dso_local global i64 0, align 8
@mode = common dso_local global i32 0, align 4
@add_photo_location_engine = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_add_photo_location_engine(i32 %0, i32 %1, i32 %2, i8 signext %3, i32 %4, i32 %5, i32 %6, i32 %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.lev_photo_add_photo_location_engine*, align 8
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i8 %3, i8* %14, align 1
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i64 %8, i64* %19, align 8
  %22 = load i8, i8* %14, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp slt i32 %23, 97
  br i1 %24, label %41, label %25

25:                                               ; preds = %9
  %26 = load i8, i8* %14, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp sgt i32 %27, 122
  br i1 %28, label %41, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %15, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %15, align 4
  %34 = icmp sgt i32 %33, 3
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %13, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %35, %32, %29, %25, %9
  store i32 0, i32* %10, align 4
  br label %82

42:                                               ; preds = %38
  store i32 32, i32* %20, align 4
  %43 = load i64, i64* @LEV_PHOTO_ADD_PHOTO_LOCATION_ENGINE, align 8
  %44 = load i32, i32* @mode, align 4
  %45 = shl i32 %44, 16
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %43, %46
  %48 = load i8, i8* %14, align 1
  %49 = sext i8 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = load i32, i32* %15, align 4
  %52 = shl i32 %51, 8
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %50, %53
  %55 = load i32, i32* %13, align 4
  %56 = shl i32 %55, 10
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %54, %57
  %59 = load i32, i32* %20, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call %struct.lev_photo_add_photo_location_engine* @alloc_log_event(i64 %58, i32 %59, i32 %60)
  store %struct.lev_photo_add_photo_location_engine* %61, %struct.lev_photo_add_photo_location_engine** %21, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.lev_photo_add_photo_location_engine*, %struct.lev_photo_add_photo_location_engine** %21, align 8
  %64 = getelementptr inbounds %struct.lev_photo_add_photo_location_engine, %struct.lev_photo_add_photo_location_engine* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.lev_photo_add_photo_location_engine*, %struct.lev_photo_add_photo_location_engine** %21, align 8
  %67 = getelementptr inbounds %struct.lev_photo_add_photo_location_engine, %struct.lev_photo_add_photo_location_engine* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load %struct.lev_photo_add_photo_location_engine*, %struct.lev_photo_add_photo_location_engine** %21, align 8
  %70 = getelementptr inbounds %struct.lev_photo_add_photo_location_engine, %struct.lev_photo_add_photo_location_engine* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %17, align 4
  %72 = load %struct.lev_photo_add_photo_location_engine*, %struct.lev_photo_add_photo_location_engine** %21, align 8
  %73 = getelementptr inbounds %struct.lev_photo_add_photo_location_engine, %struct.lev_photo_add_photo_location_engine* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %18, align 4
  %75 = load %struct.lev_photo_add_photo_location_engine*, %struct.lev_photo_add_photo_location_engine** %21, align 8
  %76 = getelementptr inbounds %struct.lev_photo_add_photo_location_engine, %struct.lev_photo_add_photo_location_engine* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load i64, i64* %19, align 8
  %78 = load %struct.lev_photo_add_photo_location_engine*, %struct.lev_photo_add_photo_location_engine** %21, align 8
  %79 = getelementptr inbounds %struct.lev_photo_add_photo_location_engine, %struct.lev_photo_add_photo_location_engine* %78, i32 0, i32 5
  store i64 %77, i64* %79, align 8
  %80 = load i32, i32* @add_photo_location_engine, align 4
  %81 = call i32 @MY_LOG_EVENT_HANDLER(i32 %80, i32 1)
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %42, %41
  %83 = load i32, i32* %10, align 4
  ret i32 %83
}

declare dso_local %struct.lev_photo_add_photo_location_engine* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @MY_LOG_EVENT_HANDLER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
