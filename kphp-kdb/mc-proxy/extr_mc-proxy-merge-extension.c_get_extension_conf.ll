; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-merge-extension.c_get_extension_conf.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-merge-extension.c_get_extension_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc_proxy_merge_conf = type { i32 }

@SEARCH_EXTENSION = common dso_local global i64 0, align 8
@search_extension_conf = common dso_local global %struct.mc_proxy_merge_conf zeroinitializer, align 4
@SEARCHX_EXTENSION = common dso_local global i64 0, align 8
@searchx_extension_conf = common dso_local global %struct.mc_proxy_merge_conf zeroinitializer, align 4
@TARG_EXTENSION = common dso_local global i64 0, align 8
@targ_extension_conf = common dso_local global %struct.mc_proxy_merge_conf zeroinitializer, align 4
@NEWS_UG_EXTENSION = common dso_local global i64 0, align 8
@news_ug_extension_conf = common dso_local global %struct.mc_proxy_merge_conf zeroinitializer, align 4
@NEWS_G_EXTENSION = common dso_local global i64 0, align 8
@NEWS_COMM_EXTENSION = common dso_local global i64 0, align 8
@news_comm_extension_conf = common dso_local global %struct.mc_proxy_merge_conf zeroinitializer, align 4
@STATSX_EXTENSION = common dso_local global i64 0, align 8
@statsx_extension_conf = common dso_local global %struct.mc_proxy_merge_conf zeroinitializer, align 4
@FRIENDS_EXTENSION = common dso_local global i64 0, align 8
@friends_extension_conf = common dso_local global %struct.mc_proxy_merge_conf zeroinitializer, align 4
@HINTS_MERGE_EXTENSION = common dso_local global i64 0, align 8
@hints_merge_extension_conf = common dso_local global %struct.mc_proxy_merge_conf zeroinitializer, align 4
@NEWSR_EXTENSION = common dso_local global i64 0, align 8
@newsr_extension_conf = common dso_local global %struct.mc_proxy_merge_conf zeroinitializer, align 4
@RANDOM_MERGE_EXTENSION = common dso_local global i64 0, align 8
@random_merge_extension_conf = common dso_local global %struct.mc_proxy_merge_conf zeroinitializer, align 4
@default_merge_conf = common dso_local global %struct.mc_proxy_merge_conf zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mc_proxy_merge_conf* @get_extension_conf() #0 {
  %1 = alloca %struct.mc_proxy_merge_conf*, align 8
  %2 = load i64, i64* @SEARCH_EXTENSION, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store %struct.mc_proxy_merge_conf* @search_extension_conf, %struct.mc_proxy_merge_conf** %1, align 8
  br label %46

5:                                                ; preds = %0
  %6 = load i64, i64* @SEARCHX_EXTENSION, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store %struct.mc_proxy_merge_conf* @searchx_extension_conf, %struct.mc_proxy_merge_conf** %1, align 8
  br label %46

9:                                                ; preds = %5
  %10 = load i64, i64* @TARG_EXTENSION, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store %struct.mc_proxy_merge_conf* @targ_extension_conf, %struct.mc_proxy_merge_conf** %1, align 8
  br label %46

13:                                               ; preds = %9
  %14 = load i64, i64* @NEWS_UG_EXTENSION, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store %struct.mc_proxy_merge_conf* @news_ug_extension_conf, %struct.mc_proxy_merge_conf** %1, align 8
  br label %46

17:                                               ; preds = %13
  %18 = load i64, i64* @NEWS_G_EXTENSION, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store %struct.mc_proxy_merge_conf* @news_ug_extension_conf, %struct.mc_proxy_merge_conf** %1, align 8
  br label %46

21:                                               ; preds = %17
  %22 = load i64, i64* @NEWS_COMM_EXTENSION, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store %struct.mc_proxy_merge_conf* @news_comm_extension_conf, %struct.mc_proxy_merge_conf** %1, align 8
  br label %46

25:                                               ; preds = %21
  %26 = load i64, i64* @STATSX_EXTENSION, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store %struct.mc_proxy_merge_conf* @statsx_extension_conf, %struct.mc_proxy_merge_conf** %1, align 8
  br label %46

29:                                               ; preds = %25
  %30 = load i64, i64* @FRIENDS_EXTENSION, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store %struct.mc_proxy_merge_conf* @friends_extension_conf, %struct.mc_proxy_merge_conf** %1, align 8
  br label %46

33:                                               ; preds = %29
  %34 = load i64, i64* @HINTS_MERGE_EXTENSION, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store %struct.mc_proxy_merge_conf* @hints_merge_extension_conf, %struct.mc_proxy_merge_conf** %1, align 8
  br label %46

37:                                               ; preds = %33
  %38 = load i64, i64* @NEWSR_EXTENSION, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store %struct.mc_proxy_merge_conf* @newsr_extension_conf, %struct.mc_proxy_merge_conf** %1, align 8
  br label %46

41:                                               ; preds = %37
  %42 = load i64, i64* @RANDOM_MERGE_EXTENSION, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store %struct.mc_proxy_merge_conf* @random_merge_extension_conf, %struct.mc_proxy_merge_conf** %1, align 8
  br label %46

45:                                               ; preds = %41
  store %struct.mc_proxy_merge_conf* @default_merge_conf, %struct.mc_proxy_merge_conf** %1, align 8
  br label %46

46:                                               ; preds = %45, %44, %40, %36, %32, %28, %24, %20, %16, %12, %8, %4
  %47 = load %struct.mc_proxy_merge_conf*, %struct.mc_proxy_merge_conf** %1, align 8
  ret %struct.mc_proxy_merge_conf* %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
