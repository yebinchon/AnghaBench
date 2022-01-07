; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_geoip1.c_geoip_set_country_by_geoid.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_geoip1.c_geoip_set_country_by_geoid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @geoip_set_country_by_geoid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @geoip_set_country_by_geoid(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = call i32 (...) @is_geoip_resource()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %35

15:                                               ; preds = %3
  %16 = load i8*, i8** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i8* @geoip_get_country_by_geoid(i8* %16, i32 %17)
  store i8* %18, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %30

21:                                               ; preds = %15
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @geoip_get_geoid(i8* %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %30

27:                                               ; preds = %21
  %28 = load i32, i32* %10, align 4
  %29 = call i8* @GeoIP_code_by_id(i32 %28)
  store i8* %29, i8** %8, align 8
  br label %30

30:                                               ; preds = %27, %26, %20
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @geoip_set_country(i8* %31, i8* %32, i8* %33)
  br label %35

35:                                               ; preds = %30, %14
  ret void
}

declare dso_local i32 @is_geoip_resource(...) #1

declare dso_local i8* @geoip_get_country_by_geoid(i8*, i32) #1

declare dso_local i32 @geoip_get_geoid(i8*, i32) #1

declare dso_local i8* @GeoIP_code_by_id(i32) #1

declare dso_local i32 @geoip_set_country(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
