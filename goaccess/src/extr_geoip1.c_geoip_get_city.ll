; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_geoip1.c_geoip_get_city.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_geoip1.c_geoip_get_city.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@geo_location_data = common dso_local global i32* null, align 8
@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TYPE_IPV4 = common dso_local global i32 0, align 4
@TYPE_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @geoip_get_city(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** @geo_location_data, align 8
  %9 = call zeroext i8 @GeoIP_database_edition(i32* %8)
  store i8 %9, i8* %7, align 1
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32*, i32** @geo_location_data, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %3
  br label %45

16:                                               ; preds = %12
  %17 = load i8, i8* %7, align 1
  %18 = zext i8 %17 to i32
  switch i32 %18, label %45 [
    i32 131, label %19
    i32 129, label %19
    i32 130, label %32
    i32 128, label %32
  ]

19:                                               ; preds = %16, %16
  %20 = load i32, i32* @TYPE_IPV4, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i8*, i8** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* @TYPE_IPV4, align 4
  %27 = call i32 @geoip_set_city_by_record(i8* %24, i8* %25, i32 %26)
  br label %31

28:                                               ; preds = %19
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @geoip_set_city(i32* null, i32* null, i8* %29)
  br label %31

31:                                               ; preds = %28, %23
  br label %45

32:                                               ; preds = %16, %16
  %33 = load i32, i32* @TYPE_IPV6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i8*, i8** %4, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* @TYPE_IPV6, align 4
  %40 = call i32 @geoip_set_city_by_record(i8* %37, i8* %38, i32 %39)
  br label %44

41:                                               ; preds = %32
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @geoip_set_city(i32* null, i32* null, i8* %42)
  br label %44

44:                                               ; preds = %41, %36
  br label %45

45:                                               ; preds = %15, %16, %44, %31
  ret void
}

declare dso_local zeroext i8 @GeoIP_database_edition(i32*) #1

declare dso_local i32 @geoip_set_city_by_record(i8*, i8*, i32) #1

declare dso_local i32 @geoip_set_city(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
