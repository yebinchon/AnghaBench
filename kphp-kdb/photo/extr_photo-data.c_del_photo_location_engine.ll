; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_del_photo_location_engine.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_del_photo_location_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_photo_del_photo_location = type { i32, i32 }

@mode = common dso_local global i32 0, align 4
@LEV_PHOTO_DEL_PHOTO_LOCATION_ENGINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @del_photo_location_engine(i32* %0, %struct.lev_photo_del_photo_location* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.lev_photo_del_photo_location*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.lev_photo_del_photo_location* %1, %struct.lev_photo_del_photo_location** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.lev_photo_del_photo_location*, %struct.lev_photo_del_photo_location** %5, align 8
  %9 = getelementptr inbounds %struct.lev_photo_del_photo_location, %struct.lev_photo_del_photo_location* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @mode, align 4
  %12 = shl i32 %11, 16
  %13 = sub nsw i32 %10, %12
  %14 = load i32, i32* @LEV_PHOTO_DEL_PHOTO_LOCATION_ENGINE, align 4
  %15 = sub nsw i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.lev_photo_del_photo_location*, %struct.lev_photo_del_photo_location** %5, align 8
  %18 = getelementptr inbounds %struct.lev_photo_del_photo_location, %struct.lev_photo_del_photo_location* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = ashr i32 %20, 8
  %22 = sdiv i32 %21, 5
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 255
  %25 = sub nsw i32 %24, 1
  %26 = load i32, i32* %7, align 4
  %27 = ashr i32 %26, 8
  %28 = srem i32 %27, 5
  %29 = sub nsw i32 %28, 1
  %30 = call i32 @user_del_photo_location_engine(i32* %16, i32 %19, i32 %22, i32 %25, i32 %29)
  ret i32 %30
}

declare dso_local i32 @user_del_photo_location_engine(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
