; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_do_del_photo_location_engine.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_do_del_photo_location_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_photo_del_photo_location_engine = type { i32, i32 }

@LEV_PHOTO_DEL_PHOTO_LOCATION_ENGINE = common dso_local global i64 0, align 8
@mode = common dso_local global i32 0, align 4
@del_photo_location_engine = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_del_photo_location_engine(i32 %0, i32 %1, i32 %2, i8 signext %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.lev_photo_del_photo_location_engine*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8 %3, i8* %10, align 1
  store i32 %4, i32* %11, align 4
  %14 = load i8, i8* %10, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load i8, i8* %10, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp slt i32 %19, 97
  br i1 %20, label %37, label %21

21:                                               ; preds = %17, %5
  %22 = load i8, i8* %10, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp sgt i32 %23, 122
  br i1 %24, label %37, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, -1
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %11, align 4
  %30 = icmp sgt i32 %29, 3
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %31, %28, %25, %21, %17
  store i32 0, i32* %6, align 4
  br label %68

38:                                               ; preds = %34
  store i32 8, i32* %12, align 4
  %39 = load i64, i64* @LEV_PHOTO_DEL_PHOTO_LOCATION_ENGINE, align 8
  %40 = load i32, i32* @mode, align 4
  %41 = shl i32 %40, 16
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %39, %42
  %44 = load i8, i8* %10, align 1
  %45 = sext i8 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = load i32, i32* %11, align 4
  %48 = shl i32 %47, 8
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %46, %49
  %51 = add nsw i64 %50, 257
  %52 = load i32, i32* %9, align 4
  %53 = mul nsw i32 %52, 5
  %54 = shl i32 %53, 8
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %51, %55
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call %struct.lev_photo_del_photo_location_engine* @alloc_log_event(i64 %56, i32 %57, i32 %58)
  store %struct.lev_photo_del_photo_location_engine* %59, %struct.lev_photo_del_photo_location_engine** %13, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.lev_photo_del_photo_location_engine*, %struct.lev_photo_del_photo_location_engine** %13, align 8
  %62 = getelementptr inbounds %struct.lev_photo_del_photo_location_engine, %struct.lev_photo_del_photo_location_engine* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.lev_photo_del_photo_location_engine*, %struct.lev_photo_del_photo_location_engine** %13, align 8
  %65 = getelementptr inbounds %struct.lev_photo_del_photo_location_engine, %struct.lev_photo_del_photo_location_engine* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @del_photo_location_engine, align 4
  %67 = call i32 @MY_LOG_EVENT_HANDLER(i32 %66, i32 1)
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %38, %37
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local %struct.lev_photo_del_photo_location_engine* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @MY_LOG_EVENT_HANDLER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
