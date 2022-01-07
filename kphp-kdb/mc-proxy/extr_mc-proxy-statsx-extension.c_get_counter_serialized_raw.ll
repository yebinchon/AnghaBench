; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-statsx-extension.c_get_counter_serialized_raw.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-statsx-extension.c_get_counter_serialized_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statsx_gather_extra = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MAX_SEX = common dso_local global i32 0, align 4
@MAX_AGE = common dso_local global i32 0, align 4
@MAX_MSTATUS = common dso_local global i32 0, align 4
@MAX_POLIT = common dso_local global i32 0, align 4
@MAX_SECTION = common dso_local global i32 0, align 4
@MAX_CITIES = common dso_local global i32 0, align 4
@MAX_COUNTRIES = common dso_local global i32 0, align 4
@MAX_GEOIP_COUNTRIES = common dso_local global i32 0, align 4
@MAX_SOURCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_counter_serialized_raw(i8* %0, %struct.statsx_gather_extra* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.statsx_gather_extra*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.statsx_gather_extra* %1, %struct.statsx_gather_extra** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %5, align 8
  %8 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %9 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %8, i32 0, i32 14
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %12, i32** %5, align 8
  store i32 %10, i32* %11, align 4
  %13 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %14 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %13, i32 0, i32 13
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %5, align 8
  store i32 %15, i32* %16, align 4
  %18 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %19 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %18, i32 0, i32 12
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  %23 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %24 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %23, i32 0, i32 11
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  %28 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %29 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %28, i32 0, i32 10
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %35 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MAX_SEX, align 4
  %38 = call i32* @serialize_list_raw(i32* %33, i32 %36, i32 %37)
  store i32* %38, i32** %5, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %41 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MAX_AGE, align 4
  %44 = call i32* @serialize_list_raw(i32* %39, i32 %42, i32 %43)
  store i32* %44, i32** %5, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %47 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MAX_MSTATUS, align 4
  %50 = call i32* @serialize_list_raw(i32* %45, i32 %48, i32 %49)
  store i32* %50, i32** %5, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %53 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MAX_POLIT, align 4
  %56 = call i32* @serialize_list_raw(i32* %51, i32 %54, i32 %55)
  store i32* %56, i32** %5, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %59 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MAX_SECTION, align 4
  %62 = call i32* @serialize_list_raw(i32* %57, i32 %60, i32 %61)
  store i32* %62, i32** %5, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %65 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MAX_AGE, align 4
  %68 = mul nsw i32 %67, 2
  %69 = call i32* @serialize_list_raw(i32* %63, i32 %66, i32 %68)
  store i32* %69, i32** %5, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %72 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MAX_CITIES, align 4
  %75 = call i32* @serialize_list2_raw_new(i32* %70, i32 %73, i32 %74)
  store i32* %75, i32** %5, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %78 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @MAX_COUNTRIES, align 4
  %81 = call i32* @serialize_list2a_raw(i32* %76, i32 %79, i32 %80)
  store i32* %81, i32** %5, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %84 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @MAX_GEOIP_COUNTRIES, align 4
  %87 = call i32* @serialize_list2a_raw(i32* %82, i32 %85, i32 %86)
  store i32* %87, i32** %5, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %90 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @MAX_SOURCE, align 4
  %93 = call i32* @serialize_list_raw(i32* %88, i32 %91, i32 %92)
  store i32* %93, i32** %5, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %96 = call i32* @serialize_subcnt_list_raw(i32* %94, %struct.statsx_gather_extra* %95)
  store i32* %96, i32** %5, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = bitcast i32* %97 to i8*
  %99 = load i8*, i8** %3, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = trunc i64 %102 to i32
  ret i32 %103
}

declare dso_local i32* @serialize_list_raw(i32*, i32, i32) #1

declare dso_local i32* @serialize_list2_raw_new(i32*, i32, i32) #1

declare dso_local i32* @serialize_list2a_raw(i32*, i32, i32) #1

declare dso_local i32* @serialize_subcnt_list_raw(i32*, %struct.statsx_gather_extra*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
