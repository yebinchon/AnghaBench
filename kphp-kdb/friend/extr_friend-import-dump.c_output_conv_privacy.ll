; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-import-dump.c_output_conv_privacy.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-import-dump.c_output_conv_privacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_set_privacy = type { i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CAT_FR_PACKED = common dso_local global i32 0, align 4
@PL_M_CAT = common dso_local global i32 0, align 4
@PL_M_ALLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"*A\00", align 1
@CAT_FR_ALL = common dso_local global i32 0, align 4
@CAT_FR_FR = common dso_local global i32 0, align 4
@LEV_FR_SET_PRIVACY_FORCE = common dso_local global i32 0, align 4
@user_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_conv_privacy(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.lev_set_privacy*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 -1, i32* %7, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @assert(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 0, %15
  %17 = and i32 %16, 510
  %18 = ashr i32 %17, 1
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @CAT_FR_PACKED, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %21, %14
  %24 = load i32, i32* @PL_M_CAT, align 4
  %25 = load i32, i32* @PL_M_ALLOW, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %43

29:                                               ; preds = %3
  %30 = load i32, i32* %5, align 4
  %31 = mul nsw i32 %30, 2
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %5, align 4
  %38 = mul nsw i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  store i8* %40, i8** %8, align 8
  br label %42

41:                                               ; preds = %29
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %42

42:                                               ; preds = %41, %35
  br label %43

43:                                               ; preds = %42, %23
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 42
  br i1 %48, label %49, label %73

49:                                               ; preds = %43
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  switch i32 %53, label %72 [
    i32 48, label %54
    i32 65, label %60
    i32 71, label %66
  ]

54:                                               ; preds = %49
  %55 = load i32, i32* @PL_M_ALLOW, align 4
  %56 = load i32, i32* @PL_M_CAT, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32, i32* @CAT_FR_PACKED, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %7, align 4
  br label %72

60:                                               ; preds = %49
  %61 = load i32, i32* @PL_M_ALLOW, align 4
  %62 = load i32, i32* @PL_M_CAT, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* @CAT_FR_ALL, align 4
  %65 = add nsw i32 %63, %64
  store i32 %65, i32* %7, align 4
  br label %72

66:                                               ; preds = %49
  %67 = load i32, i32* @PL_M_ALLOW, align 4
  %68 = load i32, i32* @PL_M_CAT, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* @CAT_FR_FR, align 4
  %71 = add nsw i32 %69, %70
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %49, %66, %60, %54
  br label %73

73:                                               ; preds = %72, %43
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, -1
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 4, i32 0
  %78 = add nsw i32 16, %77
  %79 = call %struct.lev_set_privacy* @write_alloc(i32 %78)
  store %struct.lev_set_privacy* %79, %struct.lev_set_privacy** %9, align 8
  %80 = load i32, i32* @LEV_FR_SET_PRIVACY_FORCE, align 4
  %81 = load %struct.lev_set_privacy*, %struct.lev_set_privacy** %9, align 8
  %82 = getelementptr inbounds %struct.lev_set_privacy, %struct.lev_set_privacy* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @user_id, align 4
  %84 = load %struct.lev_set_privacy*, %struct.lev_set_privacy** %9, align 8
  %85 = getelementptr inbounds %struct.lev_set_privacy, %struct.lev_set_privacy* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %4, align 4
  %87 = load %struct.lev_set_privacy*, %struct.lev_set_privacy** %9, align 8
  %88 = getelementptr inbounds %struct.lev_set_privacy, %struct.lev_set_privacy* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, -1
  br i1 %90, label %91, label %101

91:                                               ; preds = %73
  %92 = load %struct.lev_set_privacy*, %struct.lev_set_privacy** %9, align 8
  %93 = getelementptr inbounds %struct.lev_set_privacy, %struct.lev_set_privacy* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.lev_set_privacy*, %struct.lev_set_privacy** %9, align 8
  %98 = getelementptr inbounds %struct.lev_set_privacy, %struct.lev_set_privacy* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 %96, i32* %100, align 4
  br label %101

101:                                              ; preds = %91, %73
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.lev_set_privacy* @write_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
