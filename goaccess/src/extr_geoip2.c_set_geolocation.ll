; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_geoip2.c_set_geolocation.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_geoip2.c_set_geolocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@geoip_city_type = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_geolocation(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = call i32 (...) @is_geoip_resource()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %30

14:                                               ; preds = %4
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @geoip_lookup(i32* %10, i8* %15)
  %17 = load i32, i32* %10, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @geoip_query_country(i32 %17, i8* %18)
  %20 = load i32, i32* %10, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @geoip_query_continent(i32 %20, i8* %21)
  %23 = load i64, i64* @geoip_city_type, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  %26 = load i32, i32* %10, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @geoip_query_city(i32 %26, i8* %27)
  br label %29

29:                                               ; preds = %25, %14
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %13
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @is_geoip_resource(...) #1

declare dso_local i32 @geoip_lookup(i32*, i8*) #1

declare dso_local i32 @geoip_query_country(i32, i8*) #1

declare dso_local i32 @geoip_query_continent(i32, i8*) #1

declare dso_local i32 @geoip_query_city(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
