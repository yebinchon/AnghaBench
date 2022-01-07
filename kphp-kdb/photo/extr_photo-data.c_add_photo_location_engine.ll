; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_add_photo_location_engine.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_add_photo_location_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_photo_add_photo_location_engine = type { i32, i32, i32, i32, i32, i32 }

@mode = common dso_local global i32 0, align 4
@LEV_PHOTO_ADD_PHOTO_LOCATION_ENGINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_photo_location_engine(i32* %0, %struct.lev_photo_add_photo_location_engine* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.lev_photo_add_photo_location_engine*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.lev_photo_add_photo_location_engine* %1, %struct.lev_photo_add_photo_location_engine** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.lev_photo_add_photo_location_engine*, %struct.lev_photo_add_photo_location_engine** %5, align 8
  %9 = getelementptr inbounds %struct.lev_photo_add_photo_location_engine, %struct.lev_photo_add_photo_location_engine* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @mode, align 4
  %12 = shl i32 %11, 16
  %13 = sub nsw i32 %10, %12
  %14 = load i32, i32* @LEV_PHOTO_ADD_PHOTO_LOCATION_ENGINE, align 4
  %15 = sub nsw i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.lev_photo_add_photo_location_engine*, %struct.lev_photo_add_photo_location_engine** %5, align 8
  %18 = getelementptr inbounds %struct.lev_photo_add_photo_location_engine, %struct.lev_photo_add_photo_location_engine* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = ashr i32 %20, 10
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 255
  %24 = load i32, i32* %7, align 4
  %25 = ashr i32 %24, 8
  %26 = and i32 %25, 3
  %27 = load %struct.lev_photo_add_photo_location_engine*, %struct.lev_photo_add_photo_location_engine** %5, align 8
  %28 = getelementptr inbounds %struct.lev_photo_add_photo_location_engine, %struct.lev_photo_add_photo_location_engine* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.lev_photo_add_photo_location_engine*, %struct.lev_photo_add_photo_location_engine** %5, align 8
  %31 = getelementptr inbounds %struct.lev_photo_add_photo_location_engine, %struct.lev_photo_add_photo_location_engine* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.lev_photo_add_photo_location_engine*, %struct.lev_photo_add_photo_location_engine** %5, align 8
  %34 = getelementptr inbounds %struct.lev_photo_add_photo_location_engine, %struct.lev_photo_add_photo_location_engine* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.lev_photo_add_photo_location_engine*, %struct.lev_photo_add_photo_location_engine** %5, align 8
  %37 = getelementptr inbounds %struct.lev_photo_add_photo_location_engine, %struct.lev_photo_add_photo_location_engine* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @user_add_photo_location_engine(i32* %16, i32 %19, i32 %21, i32 %23, i32 %26, i32 %29, i32 %32, i32 %35, i32 %38)
  ret i32 %39
}

declare dso_local i32 @user_add_photo_location_engine(i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
