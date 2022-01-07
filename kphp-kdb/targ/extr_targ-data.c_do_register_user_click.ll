; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_register_user_click.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_register_user_click.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advert = type { i32, i32 }
%struct.lev_targ_click_ext = type { i32, i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"user %d clicks on ad %d, price %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"error: unknown user %d, click neglected\0A\00", align 1
@ADF_ANCIENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [81 x i8] c"warning: user %d clicks on ad %d, price %d; known ad price is %d, click ignored\0A\00", align 1
@LEV_TARG_CLICK = common dso_local global i32 0, align 4
@LEV_TARG_CLICK_EXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_register_user_click(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.advert*, align 8
  %9 = alloca %struct.lev_targ_click_ext*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.advert* @get_ad_f(i32 %11, i32 0)
  store %struct.advert* %12, %struct.advert** %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @conv_user_id(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @verbosity, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i32, i32* @stderr, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %17, %3
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i32, i32* @verbosity, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* @stderr, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %26
  store i32 -1, i32* %4, align 4
  br label %106

34:                                               ; preds = %23
  %35 = load %struct.advert*, %struct.advert** %8, align 8
  %36 = icmp ne %struct.advert* %35, null
  br i1 %36, label %37, label %56

37:                                               ; preds = %34
  %38 = load %struct.advert*, %struct.advert** %8, align 8
  %39 = getelementptr inbounds %struct.advert, %struct.advert* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ADF_ANCIENT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %37
  %45 = load %struct.advert*, %struct.advert** %8, align 8
  %46 = call i64 @ad_became_ancient(%struct.advert* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = load %struct.advert*, %struct.advert** %8, align 8
  %50 = getelementptr inbounds %struct.advert, %struct.advert* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %48
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %53, %44, %37, %34
  %57 = load i32, i32* @verbosity, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = load i32, i32* @stderr, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.advert*, %struct.advert** %8, align 8
  %65 = icmp ne %struct.advert* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.advert*, %struct.advert** %8, align 8
  %68 = getelementptr inbounds %struct.advert, %struct.advert* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  br label %71

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %66
  %72 = phi i32 [ %69, %66 ], [ -1, %70 ]
  %73 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %62, i32 %63, i32 %72)
  br label %74

74:                                               ; preds = %71, %56
  store i32 -1, i32* %4, align 4
  br label %106

75:                                               ; preds = %53, %48
  %76 = load %struct.advert*, %struct.advert** %8, align 8
  %77 = getelementptr inbounds %struct.advert, %struct.advert* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %89, label %81

81:                                               ; preds = %75
  %82 = load %struct.advert*, %struct.advert** %8, align 8
  %83 = getelementptr inbounds %struct.advert, %struct.advert* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86, %75
  %90 = load i32, i32* @LEV_TARG_CLICK, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call %struct.lev_targ_click_ext* @alloc_log_event(i32 %90, i32 12, i32 %91)
  store %struct.lev_targ_click_ext* %92, %struct.lev_targ_click_ext** %9, align 8
  br label %100

93:                                               ; preds = %86, %81
  %94 = load i32, i32* @LEV_TARG_CLICK_EXT, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call %struct.lev_targ_click_ext* @alloc_log_event(i32 %94, i32 16, i32 %95)
  store %struct.lev_targ_click_ext* %96, %struct.lev_targ_click_ext** %9, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.lev_targ_click_ext*, %struct.lev_targ_click_ext** %9, align 8
  %99 = getelementptr inbounds %struct.lev_targ_click_ext, %struct.lev_targ_click_ext* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %93, %89
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.lev_targ_click_ext*, %struct.lev_targ_click_ext** %9, align 8
  %103 = getelementptr inbounds %struct.lev_targ_click_ext, %struct.lev_targ_click_ext* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.lev_targ_click_ext*, %struct.lev_targ_click_ext** %9, align 8
  %105 = call i32 @register_user_click(%struct.lev_targ_click_ext* %104)
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %100, %74, %33
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.advert* @get_ad_f(i32, i32) #1

declare dso_local i32 @conv_user_id(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i64 @ad_became_ancient(%struct.advert*) #1

declare dso_local %struct.lev_targ_click_ext* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @register_user_click(%struct.lev_targ_click_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
