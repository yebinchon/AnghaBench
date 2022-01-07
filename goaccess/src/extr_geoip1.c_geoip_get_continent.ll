; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_geoip1.c_geoip_get_continent.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_geoip1.c_geoip_get_continent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@geo_location_data = common dso_local global i32 0, align 4
@TYPE_IPV4 = common dso_local global i32 0, align 4
@TYPE_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @geoip_get_continent(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @geo_location_data, align 4
  %9 = call zeroext i8 @GeoIP_database_edition(i32 %8)
  store i8 %9, i8* %7, align 1
  %10 = load i8, i8* %7, align 1
  %11 = zext i8 %10 to i32
  switch i32 %11, label %64 [
    i32 129, label %12
    i32 128, label %25
    i32 133, label %38
    i32 131, label %38
    i32 132, label %51
    i32 130, label %51
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @TYPE_IPV4, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* @TYPE_IPV4, align 4
  %20 = call i32 @geoip_set_continent_by_geoid(i8* %17, i8* %18, i32 %19)
  br label %24

21:                                               ; preds = %12
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @geoip_set_continent(i32* null, i8* %22)
  br label %24

24:                                               ; preds = %21, %16
  br label %64

25:                                               ; preds = %3
  %26 = load i32, i32* @TYPE_IPV6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* @TYPE_IPV6, align 4
  %33 = call i32 @geoip_set_continent_by_geoid(i8* %30, i8* %31, i32 %32)
  br label %37

34:                                               ; preds = %25
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @geoip_set_continent(i32* null, i8* %35)
  br label %37

37:                                               ; preds = %34, %29
  br label %64

38:                                               ; preds = %3, %3
  %39 = load i32, i32* @TYPE_IPV4, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i8*, i8** %4, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* @TYPE_IPV4, align 4
  %46 = call i32 @geoip_set_continent_by_record(i8* %43, i8* %44, i32 %45)
  br label %50

47:                                               ; preds = %38
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @geoip_set_continent(i32* null, i8* %48)
  br label %50

50:                                               ; preds = %47, %42
  br label %64

51:                                               ; preds = %3, %3
  %52 = load i32, i32* @TYPE_IPV6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i8*, i8** %4, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* @TYPE_IPV6, align 4
  %59 = call i32 @geoip_set_continent_by_record(i8* %56, i8* %57, i32 %58)
  br label %63

60:                                               ; preds = %51
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @geoip_set_continent(i32* null, i8* %61)
  br label %63

63:                                               ; preds = %60, %55
  br label %64

64:                                               ; preds = %3, %63, %50, %37, %24
  ret void
}

declare dso_local zeroext i8 @GeoIP_database_edition(i32) #1

declare dso_local i32 @geoip_set_continent_by_geoid(i8*, i8*, i32) #1

declare dso_local i32 @geoip_set_continent(i32*, i8*) #1

declare dso_local i32 @geoip_set_continent_by_record(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
