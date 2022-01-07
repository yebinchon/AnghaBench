; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-statsx-extension.c_gather_sum_res.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-statsx-extension.c_gather_sum_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gather_entry = type { i32* }
%struct.statsx_gather_extra = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32 }

@MAX_SEX = common dso_local global i32 0, align 4
@MAX_AGE = common dso_local global i32 0, align 4
@MAX_MSTATUS = common dso_local global i32 0, align 4
@MAX_POLIT = common dso_local global i32 0, align 4
@MAX_SECTION = common dso_local global i32 0, align 4
@MAX_CITIES = common dso_local global i32 0, align 4
@MAX_COUNTRIES = common dso_local global i32 0, align 4
@MAX_GEOIP_COUNTRIES = common dso_local global i32 0, align 4
@MAX_SOURCE = common dso_local global i32 0, align 4
@MAX_SUBCOUNTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gather_sum_res(%struct.gather_entry* %0, %struct.statsx_gather_extra* %1) #0 {
  %3 = alloca %struct.gather_entry*, align 8
  %4 = alloca %struct.statsx_gather_extra*, align 8
  %5 = alloca i32*, align 8
  store %struct.gather_entry* %0, %struct.gather_entry** %3, align 8
  store %struct.statsx_gather_extra* %1, %struct.statsx_gather_extra** %4, align 8
  %6 = load %struct.gather_entry*, %struct.gather_entry** %3, align 8
  %7 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %5, align 8
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %13 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %12, i32 0, i32 15
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %5, align 8
  %18 = load i32, i32* %16, align 4
  %19 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %20 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %19, i32 0, i32 14
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %5, align 8
  %25 = load i32, i32* %23, align 4
  %26 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %27 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %26, i32 0, i32 13
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %31 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %30, i32 0, i32 12
  %32 = load i8*, i8** %31, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @max(i8* %32, i32 %34)
  %36 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %37 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %36, i32 0, i32 12
  store i8* %35, i8** %37, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %5, align 8
  %40 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %41 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %40, i32 0, i32 11
  %42 = load i8*, i8** %41, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @max(i8* %42, i32 %44)
  %46 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %47 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %46, i32 0, i32 11
  store i8* %45, i8** %47, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %5, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %52 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %51, i32 0, i32 10
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @MAX_SEX, align 4
  %55 = call i32* @unserialize_list_raw(i32* %50, i32 %53, i32 %54)
  store i32* %55, i32** %5, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %58 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %57, i32 0, i32 9
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MAX_AGE, align 4
  %61 = call i32* @unserialize_list_raw(i32* %56, i32 %59, i32 %60)
  store i32* %61, i32** %5, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %64 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @MAX_MSTATUS, align 4
  %67 = call i32* @unserialize_list_raw(i32* %62, i32 %65, i32 %66)
  store i32* %67, i32** %5, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %70 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MAX_POLIT, align 4
  %73 = call i32* @unserialize_list_raw(i32* %68, i32 %71, i32 %72)
  store i32* %73, i32** %5, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %76 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @MAX_SECTION, align 4
  %79 = call i32* @unserialize_list_raw(i32* %74, i32 %77, i32 %78)
  store i32* %79, i32** %5, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %82 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @MAX_AGE, align 4
  %85 = mul nsw i32 %84, 2
  %86 = call i32* @unserialize_list_raw(i32* %80, i32 %83, i32 %85)
  store i32* %86, i32** %5, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %89 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @MAX_CITIES, align 4
  %92 = call i32* @unserialize_list2_raw_new(i32* %87, i32 %90, i32 %91)
  store i32* %92, i32** %5, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %95 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @MAX_COUNTRIES, align 4
  %98 = call i32* @unserialize_list2_raw(i32* %93, i32 %96, i32 %97)
  store i32* %98, i32** %5, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %101 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @MAX_GEOIP_COUNTRIES, align 4
  %104 = call i32* @unserialize_list2_raw(i32* %99, i32 %102, i32 %103)
  store i32* %104, i32** %5, align 8
  %105 = load i32*, i32** %5, align 8
  %106 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %107 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @MAX_SOURCE, align 4
  %110 = call i32* @unserialize_list_raw(i32* %105, i32 %108, i32 %109)
  store i32* %110, i32** %5, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %4, align 8
  %113 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @MAX_SUBCOUNTER, align 4
  %116 = call i32* @unserialize_list_raw(i32* %111, i32 %114, i32 %115)
  store i32* %116, i32** %5, align 8
  ret void
}

declare dso_local i8* @max(i8*, i32) #1

declare dso_local i32* @unserialize_list_raw(i32*, i32, i32) #1

declare dso_local i32* @unserialize_list2_raw_new(i32*, i32, i32) #1

declare dso_local i32* @unserialize_list2_raw(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
