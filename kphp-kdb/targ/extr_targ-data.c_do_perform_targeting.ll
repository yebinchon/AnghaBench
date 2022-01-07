; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_perform_targeting.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_perform_targeting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advert = type { i32, i64 }
%struct.lev_targ_target = type { i32, i32, i32 }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"in do_perform_targeting(%d,%d,%d,'%s'):\0A\00", align 1
@aux_userlist_tag = common dso_local global i64 0, align 8
@Qq = common dso_local global i32 0, align 4
@MAX_QUERY_STRING_LEN = common dso_local global i32 0, align 4
@LEV_TARG_TARGET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_perform_targeting(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.advert*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.lev_targ_target*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.advert* @get_ad_f(i32 %14, i32 1)
  store %struct.advert* %15, %struct.advert** %10, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 @strlen(i8* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i64, i64* @verbosity, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load i32, i32* @stderr, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %24, i8* %25)
  br label %27

27:                                               ; preds = %20, %4
  %28 = load %struct.advert*, %struct.advert** %10, align 8
  %29 = call i32 @load_ancient_ad(%struct.advert* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %5, align 4
  br label %134

34:                                               ; preds = %27
  store i64 0, i64* @aux_userlist_tag, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i64 @compile_query(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @Qq, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load %struct.advert*, %struct.advert** %10, align 8
  %43 = icmp ne %struct.advert* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @MAX_QUERY_STRING_LEN, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %47, %44, %41, %38, %34
  store i32 -1, i32* %5, align 4
  br label %134

55:                                               ; preds = %50
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = icmp sle i32 %59, 100000
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = icmp sgt i32 %62, 1000000
  br i1 %63, label %64, label %65

64:                                               ; preds = %61, %58
  store i32 -1, i32* %5, align 4
  br label %134

65:                                               ; preds = %61, %55
  %66 = load %struct.advert*, %struct.advert** %10, align 8
  %67 = getelementptr inbounds %struct.advert, %struct.advert* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %97

70:                                               ; preds = %65
  %71 = load %struct.advert*, %struct.advert** %10, align 8
  %72 = getelementptr inbounds %struct.advert, %struct.advert* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 @strcmp(i64 %73, i8* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %97, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i64 @do_ad_price_enable(i32 %78, i32 %79)
  %81 = icmp sge i64 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %77
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @do_ad_set_factor(i32 %87, i32 %88)
  %90 = icmp eq i32 %89, 1
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  br label %93

93:                                               ; preds = %86, %77
  %94 = load %struct.advert*, %struct.advert** %10, align 8
  %95 = getelementptr inbounds %struct.advert, %struct.advert* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %5, align 4
  br label %134

97:                                               ; preds = %70, %65
  %98 = load i32, i32* @LEV_TARG_TARGET, align 4
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 15, %99
  %101 = load i32, i32* %6, align 4
  %102 = call %struct.lev_targ_target* @alloc_log_event(i32 %98, i32 %100, i32 %101)
  store %struct.lev_targ_target* %102, %struct.lev_targ_target** %13, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.lev_targ_target*, %struct.lev_targ_target** %13, align 8
  %105 = getelementptr inbounds %struct.lev_targ_target, %struct.lev_targ_target* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.lev_targ_target*, %struct.lev_targ_target** %13, align 8
  %108 = getelementptr inbounds %struct.lev_targ_target, %struct.lev_targ_target* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.lev_targ_target*, %struct.lev_targ_target** %13, align 8
  %110 = getelementptr inbounds %struct.lev_targ_target, %struct.lev_targ_target* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %9, align 8
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  %115 = call i32 @memcpy(i32 %111, i8* %112, i32 %114)
  %116 = load %struct.lev_targ_target*, %struct.lev_targ_target** %13, align 8
  %117 = call i64 @perform_targeting(%struct.lev_targ_target* %116)
  %118 = icmp sge i64 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %97
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i32 @do_ad_set_factor(i32 %124, i32 %125)
  %127 = icmp eq i32 %126, 1
  %128 = zext i1 %127 to i32
  %129 = call i32 @assert(i32 %128)
  br label %130

130:                                              ; preds = %123, %97
  %131 = load %struct.advert*, %struct.advert** %10, align 8
  %132 = getelementptr inbounds %struct.advert, %struct.advert* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %130, %93, %64, %54, %32
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local %struct.advert* @get_ad_f(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @load_ancient_ad(%struct.advert*) #1

declare dso_local i64 @compile_query(i8*) #1

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @do_ad_price_enable(i32, i32) #1

declare dso_local i32 @do_ad_set_factor(i32, i32) #1

declare dso_local %struct.lev_targ_target* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @perform_targeting(%struct.lev_targ_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
