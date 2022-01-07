; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_del_user_groups.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_del_user_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_groups = type { i32 }
%struct.lev_groups_ext = type { i32, i32 }

@MAX_USER_LEV_GROUPS = common dso_local global i32 0, align 4
@LEV_TARG_GROUP_DEL = common dso_local global i64 0, align 8
@LEV_TARG_GROUP_EXT_DEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_del_user_groups(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lev_groups*, align 8
  %11 = alloca %struct.lev_groups_ext*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32* @get_user(i32 %12)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %92

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @MAX_USER_LEV_GROUPS, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %92

25:                                               ; preds = %20
  store i32 1, i32* %9, align 4
  br label %26

26:                                               ; preds = %45, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %26
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp sle i32 %35, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  br label %92

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %26

48:                                               ; preds = %26
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 256
  br i1 %50, label %51, label %69

51:                                               ; preds = %48
  %52 = load i64, i64* @LEV_TARG_GROUP_DEL, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = load i32, i32* %7, align 4
  %57 = mul nsw i32 %56, 4
  %58 = add nsw i32 8, %57
  %59 = load i32, i32* %5, align 4
  %60 = call i8* @alloc_log_event(i64 %55, i32 %58, i32 %59)
  %61 = bitcast i8* %60 to %struct.lev_groups*
  store %struct.lev_groups* %61, %struct.lev_groups** %10, align 8
  %62 = load %struct.lev_groups*, %struct.lev_groups** %10, align 8
  %63 = getelementptr inbounds %struct.lev_groups, %struct.lev_groups* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = mul nsw i32 %66, 4
  %68 = call i32 @memcpy(i32 %64, i32* %65, i32 %67)
  br label %87

69:                                               ; preds = %48
  %70 = load i64, i64* @LEV_TARG_GROUP_EXT_DEL, align 8
  %71 = load i32, i32* %7, align 4
  %72 = mul nsw i32 %71, 4
  %73 = add nsw i32 12, %72
  %74 = load i32, i32* %5, align 4
  %75 = call i8* @alloc_log_event(i64 %70, i32 %73, i32 %74)
  %76 = bitcast i8* %75 to %struct.lev_groups_ext*
  store %struct.lev_groups_ext* %76, %struct.lev_groups_ext** %11, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.lev_groups_ext*, %struct.lev_groups_ext** %11, align 8
  %79 = getelementptr inbounds %struct.lev_groups_ext, %struct.lev_groups_ext* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.lev_groups_ext*, %struct.lev_groups_ext** %11, align 8
  %81 = getelementptr inbounds %struct.lev_groups_ext, %struct.lev_groups_ext* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = mul nsw i32 %84, 4
  %86 = call i32 @memcpy(i32 %82, i32* %83, i32 %85)
  br label %87

87:                                               ; preds = %69, %51
  %88 = load i32*, i32** %8, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @del_groups(i32* %88, i32* %89, i32 %90)
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %87, %43, %24, %19
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32* @get_user(i32) #1

declare dso_local i8* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @del_groups(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
