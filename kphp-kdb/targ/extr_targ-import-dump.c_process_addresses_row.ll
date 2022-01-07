; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-import-dump.c_process_addresses_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-import-dump.c_process_addresses_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_address_extended = type { i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64 }

@I = common dso_local global i8** null, align 8
@adr_member_id = common dso_local global i64 0, align 8
@user_id = common dso_local global i8* null, align 8
@GA = common dso_local global i32 0, align 4
@Gc = common dso_local global i32 0, align 4
@adr_house_id = common dso_local global i64 0, align 8
@GB = common dso_local global i32 0, align 4
@Gd = common dso_local global i32 0, align 4
@adr_place_id = common dso_local global i64 0, align 8
@LEV_TARG_ADDR_EXT_ADD = common dso_local global i64 0, align 8
@adr_city_id = common dso_local global i64 0, align 8
@adr_district_id = common dso_local global i64 0, align 8
@adr_station_id = common dso_local global i64 0, align 8
@adr_street_id = common dso_local global i64 0, align 8
@adr_country_id = common dso_local global i64 0, align 8
@adr_type = common dso_local global i64 0, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_addresses_row() #0 {
  %1 = alloca %struct.lev_address_extended*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i8**, i8*** @I, align 8
  %8 = load i64, i64* @adr_member_id, align 8
  %9 = getelementptr inbounds i8*, i8** %7, i64 %8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** @user_id, align 8
  %11 = load i8*, i8** @user_id, align 8
  %12 = call i32 @fits(i8* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %0
  br label %120

15:                                               ; preds = %0
  %16 = load i32, i32* @GA, align 4
  %17 = load i32, i32* @Gc, align 4
  %18 = load i8**, i8*** @I, align 8
  %19 = load i64, i64* @adr_house_id, align 8
  %20 = getelementptr inbounds i8*, i8** %18, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = call i8* @lookup_name(i32 %16, i32 %17, i8* %21, i32* %4, i32 64)
  store i8* %22, i8** %2, align 8
  %23 = load i32, i32* @GB, align 4
  %24 = load i32, i32* @Gd, align 4
  %25 = load i8**, i8*** @I, align 8
  %26 = load i64, i64* @adr_place_id, align 8
  %27 = getelementptr inbounds i8*, i8** %25, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @lookup_name(i32 %23, i32 %24, i8* %28, i32* %5, i32 128)
  store i8* %29, i8** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 27
  %36 = call %struct.lev_address_extended* @write_alloc(i32 %35)
  store %struct.lev_address_extended* %36, %struct.lev_address_extended** %1, align 8
  %37 = load i64, i64* @LEV_TARG_ADDR_EXT_ADD, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = load %struct.lev_address_extended*, %struct.lev_address_extended** %1, align 8
  %42 = getelementptr inbounds %struct.lev_address_extended, %struct.lev_address_extended* %41, i32 0, i32 8
  store i64 %40, i64* %42, align 8
  %43 = load i8*, i8** @user_id, align 8
  %44 = load %struct.lev_address_extended*, %struct.lev_address_extended** %1, align 8
  %45 = getelementptr inbounds %struct.lev_address_extended, %struct.lev_address_extended* %44, i32 0, i32 7
  store i8* %43, i8** %45, align 8
  %46 = load i8**, i8*** @I, align 8
  %47 = load i64, i64* @adr_city_id, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.lev_address_extended*, %struct.lev_address_extended** %1, align 8
  %51 = getelementptr inbounds %struct.lev_address_extended, %struct.lev_address_extended* %50, i32 0, i32 6
  store i8* %49, i8** %51, align 8
  %52 = load i8**, i8*** @I, align 8
  %53 = load i64, i64* @adr_district_id, align 8
  %54 = getelementptr inbounds i8*, i8** %52, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.lev_address_extended*, %struct.lev_address_extended** %1, align 8
  %57 = getelementptr inbounds %struct.lev_address_extended, %struct.lev_address_extended* %56, i32 0, i32 5
  store i8* %55, i8** %57, align 8
  %58 = load i8**, i8*** @I, align 8
  %59 = load i64, i64* @adr_station_id, align 8
  %60 = getelementptr inbounds i8*, i8** %58, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.lev_address_extended*, %struct.lev_address_extended** %1, align 8
  %63 = getelementptr inbounds %struct.lev_address_extended, %struct.lev_address_extended* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load i8**, i8*** @I, align 8
  %65 = load i64, i64* @adr_street_id, align 8
  %66 = getelementptr inbounds i8*, i8** %64, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.lev_address_extended*, %struct.lev_address_extended** %1, align 8
  %69 = getelementptr inbounds %struct.lev_address_extended, %struct.lev_address_extended* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load i8**, i8*** @I, align 8
  %71 = load i64, i64* @adr_country_id, align 8
  %72 = getelementptr inbounds i8*, i8** %70, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.lev_address_extended*, %struct.lev_address_extended** %1, align 8
  %75 = getelementptr inbounds %struct.lev_address_extended, %struct.lev_address_extended* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  %76 = load i8**, i8*** @I, align 8
  %77 = load i64, i64* @adr_type, align 8
  %78 = getelementptr inbounds i8*, i8** %76, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.lev_address_extended*, %struct.lev_address_extended** %1, align 8
  %81 = getelementptr inbounds %struct.lev_address_extended, %struct.lev_address_extended* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %15
  %85 = load %struct.lev_address_extended*, %struct.lev_address_extended** %1, align 8
  %86 = getelementptr inbounds %struct.lev_address_extended, %struct.lev_address_extended* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i8*, i8** %2, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @memcpy(i32* %87, i8* %88, i32 %89)
  br label %91

91:                                               ; preds = %84, %15
  %92 = load %struct.lev_address_extended*, %struct.lev_address_extended** %1, align 8
  %93 = getelementptr inbounds %struct.lev_address_extended, %struct.lev_address_extended* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 9, i32* %97, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %91
  %101 = load %struct.lev_address_extended*, %struct.lev_address_extended** %1, align 8
  %102 = getelementptr inbounds %struct.lev_address_extended, %struct.lev_address_extended* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i8*, i8** %3, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @memcpy(i32* %107, i8* %108, i32 %109)
  br label %111

111:                                              ; preds = %100, %91
  %112 = load %struct.lev_address_extended*, %struct.lev_address_extended** %1, align 8
  %113 = getelementptr inbounds %struct.lev_address_extended, %struct.lev_address_extended* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 0, i32* %117, align 4
  %118 = load i32, i32* @adj_rec, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* @adj_rec, align 4
  br label %120

120:                                              ; preds = %111, %14
  ret void
}

declare dso_local i32 @fits(i8*) #1

declare dso_local i8* @lookup_name(i32, i32, i8*, i32*, i32) #1

declare dso_local %struct.lev_address_extended* @write_alloc(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
