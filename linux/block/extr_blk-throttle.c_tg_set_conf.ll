; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_tg_set_conf.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_tg_set_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_open_file = type { i32 }
%struct.blkcg = type { i32 }
%struct.blkg_conf_ctx = type { i32, i32 }
%struct.throtl_grp = type { i32 }
%struct.TYPE_2__ = type { i32 }

@blkcg_policy_throtl = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@U64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernfs_open_file*, i8*, i64, i32, i32)* @tg_set_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg_set_conf(%struct.kernfs_open_file* %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kernfs_open_file*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.blkcg*, align 8
  %13 = alloca %struct.blkg_conf_ctx, align 4
  %14 = alloca %struct.throtl_grp*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.kernfs_open_file* %0, %struct.kernfs_open_file** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %7, align 8
  %18 = call i32 @of_css(%struct.kernfs_open_file* %17)
  %19 = call %struct.blkcg* @css_to_blkcg(i32 %18)
  store %struct.blkcg* %19, %struct.blkcg** %12, align 8
  %20 = load %struct.blkcg*, %struct.blkcg** %12, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @blkg_conf_prep(%struct.blkcg* %20, i32* @blkcg_policy_throtl, i8* %21, %struct.blkg_conf_ctx* %13)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* %15, align 4
  store i32 %26, i32* %6, align 4
  br label %82

27:                                               ; preds = %5
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %15, align 4
  %30 = getelementptr inbounds %struct.blkg_conf_ctx, %struct.blkg_conf_ctx* %13, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sscanf(i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %16)
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %71

35:                                               ; preds = %27
  %36 = load i32, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @U64_MAX, align 4
  store i32 %39, i32* %16, align 4
  br label %40

40:                                               ; preds = %38, %35
  %41 = getelementptr inbounds %struct.blkg_conf_ctx, %struct.blkg_conf_ctx* %13, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.throtl_grp* @blkg_to_tg(i32 %42)
  store %struct.throtl_grp* %43, %struct.throtl_grp** %14, align 8
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load i32, i32* %16, align 4
  %48 = load %struct.throtl_grp*, %struct.throtl_grp** %14, align 8
  %49 = bitcast %struct.throtl_grp* %48 to i8*
  %50 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %7, align 8
  %51 = call %struct.TYPE_2__* @of_cft(%struct.kernfs_open_file* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr i8, i8* %49, i64 %54
  %56 = bitcast i8* %55 to i32*
  store i32 %47, i32* %56, align 4
  br label %68

57:                                               ; preds = %40
  %58 = load i32, i32* %16, align 4
  %59 = load %struct.throtl_grp*, %struct.throtl_grp** %14, align 8
  %60 = bitcast %struct.throtl_grp* %59 to i8*
  %61 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %7, align 8
  %62 = call %struct.TYPE_2__* @of_cft(%struct.kernfs_open_file* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr i8, i8* %60, i64 %65
  %67 = bitcast i8* %66 to i32*
  store i32 %58, i32* %67, align 4
  br label %68

68:                                               ; preds = %57, %46
  %69 = load %struct.throtl_grp*, %struct.throtl_grp** %14, align 8
  %70 = call i32 @tg_conf_updated(%struct.throtl_grp* %69, i32 0)
  store i32 0, i32* %15, align 4
  br label %71

71:                                               ; preds = %68, %34
  %72 = call i32 @blkg_conf_finish(%struct.blkg_conf_ctx* %13)
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = sext i32 %73 to i64
  br label %79

77:                                               ; preds = %71
  %78 = load i64, i64* %9, align 8
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i64 [ %76, %75 ], [ %78, %77 ]
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %79, %25
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local %struct.blkcg* @css_to_blkcg(i32) #1

declare dso_local i32 @of_css(%struct.kernfs_open_file*) #1

declare dso_local i32 @blkg_conf_prep(%struct.blkcg*, i32*, i8*, %struct.blkg_conf_ctx*) #1

declare dso_local i32 @sscanf(i32, i8*, i32*) #1

declare dso_local %struct.throtl_grp* @blkg_to_tg(i32) #1

declare dso_local %struct.TYPE_2__* @of_cft(%struct.kernfs_open_file*) #1

declare dso_local i32 @tg_conf_updated(%struct.throtl_grp*, i32) #1

declare dso_local i32 @blkg_conf_finish(%struct.blkg_conf_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
