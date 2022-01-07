; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_register_user_view.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_register_user_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advert = type { i32 }
%struct.lev_targ_user_view = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"user %d views ad %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"error: unknown user %d, view ignored\0A\00", align 1
@ADF_ANCIENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"error: unknown or ancient ad %d, view ignored\0A\00", align 1
@LEV_TARG_USER_VIEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_register_user_view(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.advert*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lev_targ_user_view*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.advert* @get_ad_f(i32 %9, i32 0)
  store %struct.advert* %10, %struct.advert** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @conv_user_id(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @verbosity, align 4
  %14 = icmp sgt i32 %13, 2
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %2
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i32, i32* @verbosity, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* @stderr, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %23
  store i32 -1, i32* %3, align 4
  br label %62

31:                                               ; preds = %20
  %32 = load %struct.advert*, %struct.advert** %6, align 8
  %33 = icmp ne %struct.advert* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load %struct.advert*, %struct.advert** %6, align 8
  %36 = getelementptr inbounds %struct.advert, %struct.advert* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ADF_ANCIENT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = load %struct.advert*, %struct.advert** %6, align 8
  %43 = call i64 @ad_became_ancient(%struct.advert* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41, %34, %31
  %46 = load i32, i32* @verbosity, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* @stderr, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %45
  store i32 -1, i32* %3, align 4
  br label %62

53:                                               ; preds = %41
  %54 = load i32, i32* @LEV_TARG_USER_VIEW, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call %struct.lev_targ_user_view* @alloc_log_event(i32 %54, i32 12, i32 %55)
  store %struct.lev_targ_user_view* %56, %struct.lev_targ_user_view** %8, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.lev_targ_user_view*, %struct.lev_targ_user_view** %8, align 8
  %59 = getelementptr inbounds %struct.lev_targ_user_view, %struct.lev_targ_user_view* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.lev_targ_user_view*, %struct.lev_targ_user_view** %8, align 8
  %61 = call i32 @register_user_view(%struct.lev_targ_user_view* %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %53, %52, %30
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.advert* @get_ad_f(i32, i32) #1

declare dso_local i32 @conv_user_id(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i64 @ad_became_ancient(%struct.advert*) #1

declare dso_local %struct.lev_targ_user_view* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @register_user_view(%struct.lev_targ_user_view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
