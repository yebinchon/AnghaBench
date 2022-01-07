; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_do_set_privacy.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_do_set_privacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_set_privacy = type { i32, i8* }
%struct.lev_set_privacy_long = type { i32, i32, i8* }

@QL = common dso_local global i32 0, align 4
@LEV_FR_SET_PRIVACY = common dso_local global i64 0, align 8
@Q = common dso_local global i32 0, align 4
@LEV_FR_SET_PRIVACY_LONG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_set_privacy(i32 %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.lev_set_privacy*, align 8
  %14 = alloca %struct.lev_set_privacy_long*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @conv_uid(i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i8*, i8** %8, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %5
  store i32 -1, i32* %6, align 4
  br label %101

22:                                               ; preds = %18
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @parse_prepare_privacy(i8* %23, i32 %24, i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 -1, i32* %6, align 4
  br label %101

29:                                               ; preds = %22
  %30 = call i32 (...) @pack_privacy()
  %31 = load i32, i32* @QL, align 4
  %32 = icmp slt i32 %31, 256
  br i1 %32, label %33, label %60

33:                                               ; preds = %29
  %34 = load i64, i64* @LEV_FR_SET_PRIVACY, align 8
  %35 = load i32, i32* @QL, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 256, i32 0
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %37, %42
  %44 = load i32, i32* @QL, align 4
  %45 = mul nsw i32 %44, 4
  %46 = add nsw i32 16, %45
  %47 = load i32, i32* %7, align 4
  %48 = call i8* @alloc_log_event(i64 %43, i32 %46, i32 %47)
  %49 = bitcast i8* %48 to %struct.lev_set_privacy*
  store %struct.lev_set_privacy* %49, %struct.lev_set_privacy** %13, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load %struct.lev_set_privacy*, %struct.lev_set_privacy** %13, align 8
  %52 = getelementptr inbounds %struct.lev_set_privacy, %struct.lev_set_privacy* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.lev_set_privacy*, %struct.lev_set_privacy** %13, align 8
  %54 = getelementptr inbounds %struct.lev_set_privacy, %struct.lev_set_privacy* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @Q, align 4
  %57 = load i32, i32* @QL, align 4
  %58 = mul nsw i32 %57, 4
  %59 = call i32 @memcpy(i32 %55, i32 %56, i32 %58)
  br label %87

60:                                               ; preds = %29
  %61 = load i64, i64* @LEV_FR_SET_PRIVACY_LONG, align 8
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 0
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %61, %66
  %68 = load i32, i32* @QL, align 4
  %69 = mul nsw i32 %68, 4
  %70 = add nsw i32 20, %69
  %71 = load i32, i32* %7, align 4
  %72 = call i8* @alloc_log_event(i64 %67, i32 %70, i32 %71)
  %73 = bitcast i8* %72 to %struct.lev_set_privacy_long*
  store %struct.lev_set_privacy_long* %73, %struct.lev_set_privacy_long** %14, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.lev_set_privacy_long*, %struct.lev_set_privacy_long** %14, align 8
  %76 = getelementptr inbounds %struct.lev_set_privacy_long, %struct.lev_set_privacy_long* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* @QL, align 4
  %78 = load %struct.lev_set_privacy_long*, %struct.lev_set_privacy_long** %14, align 8
  %79 = getelementptr inbounds %struct.lev_set_privacy_long, %struct.lev_set_privacy_long* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.lev_set_privacy_long*, %struct.lev_set_privacy_long** %14, align 8
  %81 = getelementptr inbounds %struct.lev_set_privacy_long, %struct.lev_set_privacy_long* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @Q, align 4
  %84 = load i32, i32* @QL, align 4
  %85 = mul nsw i32 %84, 4
  %86 = call i32 @memcpy(i32 %82, i32 %83, i32 %85)
  br label %87

87:                                               ; preds = %60, %33
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %7, align 4
  %92 = call i32* @get_user(i32 %91)
  store i32* %92, i32** %12, align 8
  br label %96

93:                                               ; preds = %87
  %94 = load i32, i32* %7, align 4
  %95 = call i32* @get_user_f(i32 %94)
  store i32* %95, i32** %12, align 8
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32*, i32** %12, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @set_privacy(i32* %97, i8* %98, i32 %99)
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %96, %28, %21
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i64 @conv_uid(i32) #1

declare dso_local i64 @parse_prepare_privacy(i8*, i32, i32) #1

declare dso_local i32 @pack_privacy(...) #1

declare dso_local i8* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32* @get_user(i32) #1

declare dso_local i32* @get_user_f(i32) #1

declare dso_local i32 @set_privacy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
