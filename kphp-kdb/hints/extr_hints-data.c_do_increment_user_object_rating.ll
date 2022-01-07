; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_do_increment_user_object_rating.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_do_increment_user_object_rating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_hints_increment_user_object_rating = type { i32, i64, i32 }
%struct.lev_hints_increment_user_object_rating_char = type { i32, i64 }

@fading = common dso_local global i32 0, align 4
@LEV_HINTS_INCREMENT_USER_OBJECT_RATING = common dso_local global i64 0, align 8
@LEV_HINTS_INCREMENT_USER_OBJECT_RATING_CHAR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_increment_user_object_rating(i32 %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.lev_hints_increment_user_object_rating*, align 8
  %13 = alloca %struct.lev_hints_increment_user_object_rating_char*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @fading, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %10, align 4
  %18 = add nsw i32 %17, 128
  store i32 %18, i32* %10, align 4
  br label %19

19:                                               ; preds = %16, %5
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @check_rating(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @check_type(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @check_rating_num(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @check_object_id(i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31, %27, %23, %19
  store i32 0, i32* %6, align 4
  br label %87

36:                                               ; preds = %31
  %37 = load i32, i32* %10, align 4
  %38 = and i32 %37, -256
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %36
  %41 = load i64, i64* @LEV_HINTS_INCREMENT_USER_OBJECT_RATING, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = load i32, i32* %11, align 4
  %46 = shl i32 %45, 8
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %44, %47
  %49 = load i32, i32* %7, align 4
  %50 = call i8* @alloc_log_event(i64 %48, i32 24, i32 %49)
  %51 = bitcast i8* %50 to %struct.lev_hints_increment_user_object_rating*
  store %struct.lev_hints_increment_user_object_rating* %51, %struct.lev_hints_increment_user_object_rating** %12, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.lev_hints_increment_user_object_rating*, %struct.lev_hints_increment_user_object_rating** %12, align 8
  %54 = getelementptr inbounds %struct.lev_hints_increment_user_object_rating, %struct.lev_hints_increment_user_object_rating* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.lev_hints_increment_user_object_rating*, %struct.lev_hints_increment_user_object_rating** %12, align 8
  %57 = getelementptr inbounds %struct.lev_hints_increment_user_object_rating, %struct.lev_hints_increment_user_object_rating* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.lev_hints_increment_user_object_rating*, %struct.lev_hints_increment_user_object_rating** %12, align 8
  %60 = getelementptr inbounds %struct.lev_hints_increment_user_object_rating, %struct.lev_hints_increment_user_object_rating* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.lev_hints_increment_user_object_rating*, %struct.lev_hints_increment_user_object_rating** %12, align 8
  %62 = call i32 @increment_user_object_rating(%struct.lev_hints_increment_user_object_rating* %61)
  store i32 %62, i32* %6, align 4
  br label %87

63:                                               ; preds = %36
  %64 = load i64, i64* @LEV_HINTS_INCREMENT_USER_OBJECT_RATING_CHAR, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %64, %66
  %68 = load i32, i32* %10, align 4
  %69 = shl i32 %68, 8
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %67, %70
  %72 = load i32, i32* %11, align 4
  %73 = shl i32 %72, 16
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %71, %74
  %76 = load i32, i32* %7, align 4
  %77 = call i8* @alloc_log_event(i64 %75, i32 16, i32 %76)
  %78 = bitcast i8* %77 to %struct.lev_hints_increment_user_object_rating_char*
  store %struct.lev_hints_increment_user_object_rating_char* %78, %struct.lev_hints_increment_user_object_rating_char** %13, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.lev_hints_increment_user_object_rating_char*, %struct.lev_hints_increment_user_object_rating_char** %13, align 8
  %81 = getelementptr inbounds %struct.lev_hints_increment_user_object_rating_char, %struct.lev_hints_increment_user_object_rating_char* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load %struct.lev_hints_increment_user_object_rating_char*, %struct.lev_hints_increment_user_object_rating_char** %13, align 8
  %84 = getelementptr inbounds %struct.lev_hints_increment_user_object_rating_char, %struct.lev_hints_increment_user_object_rating_char* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load %struct.lev_hints_increment_user_object_rating_char*, %struct.lev_hints_increment_user_object_rating_char** %13, align 8
  %86 = call i32 @increment_user_object_rating_char(%struct.lev_hints_increment_user_object_rating_char* %85)
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %63, %40, %35
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i32 @check_rating(i32) #1

declare dso_local i32 @check_type(i32) #1

declare dso_local i32 @check_rating_num(i32) #1

declare dso_local i32 @check_object_id(i64) #1

declare dso_local i8* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @increment_user_object_rating(%struct.lev_hints_increment_user_object_rating*) #1

declare dso_local i32 @increment_user_object_rating_char(%struct.lev_hints_increment_user_object_rating_char*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
