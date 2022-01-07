; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_init_new_fresh_ads_directory.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_init_new_fresh_ads_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.targ_index_ads_directory_entry = type { i32, i32 }
%struct.advert = type { i32, i32 }

@new_fresh_ads = common dso_local global i32 0, align 4
@new_fresh_addir_size = common dso_local global i32 0, align 4
@NewFreshAdsDir = common dso_local global %struct.targ_index_ads_directory_entry* null, align 8
@MAX_ADS = common dso_local global i32 0, align 4
@ADF_ANCIENT = common dso_local global i32 0, align 4
@ADF_NEWANCIENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_new_fresh_ads_directory() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.targ_index_ads_directory_entry*, align 8
  %3 = alloca %struct.advert*, align 8
  %4 = load i32, i32* @new_fresh_ads, align 4
  %5 = add nsw i32 %4, 1
  %6 = sext i32 %5 to i64
  %7 = mul i64 8, %6
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* @new_fresh_addir_size, align 4
  %9 = load i32, i32* @new_fresh_addir_size, align 4
  %10 = call %struct.targ_index_ads_directory_entry* @malloc(i32 %9)
  store %struct.targ_index_ads_directory_entry* %10, %struct.targ_index_ads_directory_entry** @NewFreshAdsDir, align 8
  store %struct.targ_index_ads_directory_entry* %10, %struct.targ_index_ads_directory_entry** %2, align 8
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %51, %0
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @MAX_ADS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %54

15:                                               ; preds = %11
  %16 = load i32, i32* %1, align 4
  %17 = call %struct.advert* @get_ad(i32 %16)
  store %struct.advert* %17, %struct.advert** %3, align 8
  %18 = load %struct.advert*, %struct.advert** %3, align 8
  %19 = icmp ne %struct.advert* %18, null
  br i1 %19, label %20, label %50

20:                                               ; preds = %15
  %21 = load %struct.advert*, %struct.advert** %3, align 8
  %22 = getelementptr inbounds %struct.advert, %struct.advert* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ADF_ANCIENT, align 4
  %25 = load i32, i32* @ADF_NEWANCIENT, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %20
  %30 = load %struct.targ_index_ads_directory_entry*, %struct.targ_index_ads_directory_entry** %2, align 8
  %31 = load %struct.targ_index_ads_directory_entry*, %struct.targ_index_ads_directory_entry** @NewFreshAdsDir, align 8
  %32 = ptrtoint %struct.targ_index_ads_directory_entry* %30 to i64
  %33 = ptrtoint %struct.targ_index_ads_directory_entry* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 8
  %36 = load i32, i32* @new_fresh_ads, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 %35, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.advert*, %struct.advert** %3, align 8
  %42 = getelementptr inbounds %struct.advert, %struct.advert* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.targ_index_ads_directory_entry*, %struct.targ_index_ads_directory_entry** %2, align 8
  %45 = getelementptr inbounds %struct.targ_index_ads_directory_entry, %struct.targ_index_ads_directory_entry* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.targ_index_ads_directory_entry*, %struct.targ_index_ads_directory_entry** %2, align 8
  %47 = getelementptr inbounds %struct.targ_index_ads_directory_entry, %struct.targ_index_ads_directory_entry* %46, i32 0, i32 1
  store i32 -1, i32* %47, align 4
  %48 = load %struct.targ_index_ads_directory_entry*, %struct.targ_index_ads_directory_entry** %2, align 8
  %49 = getelementptr inbounds %struct.targ_index_ads_directory_entry, %struct.targ_index_ads_directory_entry* %48, i32 1
  store %struct.targ_index_ads_directory_entry* %49, %struct.targ_index_ads_directory_entry** %2, align 8
  br label %50

50:                                               ; preds = %29, %20, %15
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %1, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %1, align 4
  br label %11

54:                                               ; preds = %11
  %55 = load %struct.targ_index_ads_directory_entry*, %struct.targ_index_ads_directory_entry** %2, align 8
  %56 = load %struct.targ_index_ads_directory_entry*, %struct.targ_index_ads_directory_entry** @NewFreshAdsDir, align 8
  %57 = ptrtoint %struct.targ_index_ads_directory_entry* %55 to i64
  %58 = ptrtoint %struct.targ_index_ads_directory_entry* %56 to i64
  %59 = sub i64 %57, %58
  %60 = sdiv exact i64 %59, 8
  %61 = load i32, i32* @new_fresh_ads, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp eq i64 %60, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.targ_index_ads_directory_entry*, %struct.targ_index_ads_directory_entry** %2, align 8
  %67 = getelementptr inbounds %struct.targ_index_ads_directory_entry, %struct.targ_index_ads_directory_entry* %66, i32 0, i32 0
  store i32 2147483647, i32* %67, align 4
  %68 = load %struct.targ_index_ads_directory_entry*, %struct.targ_index_ads_directory_entry** %2, align 8
  %69 = getelementptr inbounds %struct.targ_index_ads_directory_entry, %struct.targ_index_ads_directory_entry* %68, i32 0, i32 1
  store i32 -1, i32* %69, align 4
  ret void
}

declare dso_local %struct.targ_index_ads_directory_entry* @malloc(i32) #1

declare dso_local %struct.advert* @get_ad(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
