; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_compute_ad_user_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_compute_ad_user_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advert = type { i32*, i32, i32, i32, i32, i32, i32 }

@tot_userlists = common dso_local global i32 0, align 4
@tot_userlists_size = common dso_local global i32 0, align 4
@aux_userlist_tag = common dso_local global i64 0, align 8
@R_position = common dso_local global i32 0, align 4
@MAX_USERS = common dso_local global i32 0, align 4
@Q_limit = common dso_local global i32 0, align 4
@Q_order = common dso_local global i64 0, align 8
@global_birthday_in_query = common dso_local global i64 0, align 8
@ADF_PERIODIC = common dso_local global i32 0, align 4
@R_cnt = common dso_local global i32 0, align 4
@R = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4
@user_creations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.advert*)* @compute_ad_user_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_ad_user_list(%struct.advert* %0) #0 {
  %2 = alloca %struct.advert*, align 8
  %3 = alloca i32, align 4
  store %struct.advert* %0, %struct.advert** %2, align 8
  %4 = load %struct.advert*, %struct.advert** %2, align 8
  %5 = getelementptr inbounds %struct.advert, %struct.advert* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load i32, i32* @tot_userlists, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* @tot_userlists, align 4
  %11 = load %struct.advert*, %struct.advert** %2, align 8
  %12 = getelementptr inbounds %struct.advert, %struct.advert* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @tot_userlists_size, align 4
  %15 = sub nsw i32 %14, %13
  store i32 %15, i32* @tot_userlists_size, align 4
  %16 = load %struct.advert*, %struct.advert** %2, align 8
  %17 = getelementptr inbounds %struct.advert, %struct.advert* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @free(i32* %18)
  %20 = load %struct.advert*, %struct.advert** %2, align 8
  %21 = getelementptr inbounds %struct.advert, %struct.advert* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = load %struct.advert*, %struct.advert** %2, align 8
  %23 = getelementptr inbounds %struct.advert, %struct.advert* %22, i32 0, i32 1
  store i32 0, i32* %23, align 8
  br label %24

24:                                               ; preds = %8, %1
  %25 = call i32 (...) @process_lru_ads()
  store i64 0, i64* @aux_userlist_tag, align 8
  %26 = load %struct.advert*, %struct.advert** %2, align 8
  %27 = getelementptr inbounds %struct.advert, %struct.advert* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @compile_query(i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  store i32 -1, i32* @R_position, align 4
  %34 = load i32, i32* @MAX_USERS, align 4
  store i32 %34, i32* @Q_limit, align 4
  store i64 0, i64* @Q_order, align 8
  store i64 0, i64* @global_birthday_in_query, align 8
  %35 = load %struct.advert*, %struct.advert** %2, align 8
  %36 = getelementptr inbounds %struct.advert, %struct.advert* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @perform_query(i32 %37)
  store i32 %38, i32* %3, align 4
  store i32 0, i32* @R_position, align 4
  %39 = load i64, i64* @global_birthday_in_query, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %24
  %42 = load i32, i32* @ADF_PERIODIC, align 4
  %43 = load %struct.advert*, %struct.advert** %2, align 8
  %44 = getelementptr inbounds %struct.advert, %struct.advert* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %54

47:                                               ; preds = %24
  %48 = load i32, i32* @ADF_PERIODIC, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.advert*, %struct.advert** %2, align 8
  %51 = getelementptr inbounds %struct.advert, %struct.advert* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %47, %41
  %55 = load i32, i32* %3, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @R_cnt, align 4
  %60 = icmp eq i32 %58, %59
  br label %61

61:                                               ; preds = %57, %54
  %62 = phi i1 [ false, %54 ], [ %60, %57 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i32, i32* %3, align 4
  %66 = load %struct.advert*, %struct.advert** %2, align 8
  %67 = getelementptr inbounds %struct.advert, %struct.advert* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %3, align 4
  %69 = mul nsw i32 %68, 4
  %70 = add nsw i32 %69, 4
  %71 = call i32* @malloc(i32 %70)
  %72 = load %struct.advert*, %struct.advert** %2, align 8
  %73 = getelementptr inbounds %struct.advert, %struct.advert* %72, i32 0, i32 0
  store i32* %71, i32** %73, align 8
  %74 = load %struct.advert*, %struct.advert** %2, align 8
  %75 = getelementptr inbounds %struct.advert, %struct.advert* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* @R, align 4
  %78 = load i32, i32* %3, align 4
  %79 = mul nsw i32 %78, 4
  %80 = call i32 @memcpy(i32* %76, i32 %77, i32 %79)
  %81 = load %struct.advert*, %struct.advert** %2, align 8
  %82 = getelementptr inbounds %struct.advert, %struct.advert* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 2147483647, i32* %86, align 4
  %87 = load i32, i32* @now, align 4
  %88 = load %struct.advert*, %struct.advert** %2, align 8
  %89 = getelementptr inbounds %struct.advert, %struct.advert* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @user_creations, align 4
  %91 = load %struct.advert*, %struct.advert** %2, align 8
  %92 = getelementptr inbounds %struct.advert, %struct.advert* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @tot_userlists, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* @tot_userlists, align 4
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* @tot_userlists_size, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* @tot_userlists_size, align 4
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @process_lru_ads(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @compile_query(i32) #1

declare dso_local i32 @perform_query(i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
