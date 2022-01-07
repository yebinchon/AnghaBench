; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_add_user_object_rating.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_add_user_object_rating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_hints_add_user_object_rating = type { i32, i32, i32, i32, i32, i32 }

@LEV_HINTS_ADD_USER_OBJECT_RATING = common dso_local global i32 0, align 4
@rating_num = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_user_object_rating(%struct.lev_hints_add_user_object_rating* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_hints_add_user_object_rating*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  store %struct.lev_hints_add_user_object_rating* %0, %struct.lev_hints_add_user_object_rating** %3, align 8
  %10 = load %struct.lev_hints_add_user_object_rating*, %struct.lev_hints_add_user_object_rating** %3, align 8
  %11 = getelementptr inbounds %struct.lev_hints_add_user_object_rating, %struct.lev_hints_add_user_object_rating* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @LEV_HINTS_ADD_USER_OBJECT_RATING, align 4
  %14 = sub nsw i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load %struct.lev_hints_add_user_object_rating*, %struct.lev_hints_add_user_object_rating** %3, align 8
  %16 = getelementptr inbounds %struct.lev_hints_add_user_object_rating, %struct.lev_hints_add_user_object_rating* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 4, %20
  %22 = sub i64 %18, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @check_text_len(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %86

28:                                               ; preds = %1
  %29 = load %struct.lev_hints_add_user_object_rating*, %struct.lev_hints_add_user_object_rating** %3, align 8
  %30 = getelementptr inbounds %struct.lev_hints_add_user_object_rating, %struct.lev_hints_add_user_object_rating* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @conv_user_id(i32 %31)
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %85

35:                                               ; preds = %28
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.lev_hints_add_user_object_rating*, %struct.lev_hints_add_user_object_rating** %3, align 8
  %38 = getelementptr inbounds %struct.lev_hints_add_user_object_rating, %struct.lev_hints_add_user_object_rating* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.lev_hints_add_user_object_rating*, %struct.lev_hints_add_user_object_rating** %3, align 8
  %41 = getelementptr inbounds %struct.lev_hints_add_user_object_rating, %struct.lev_hints_add_user_object_rating* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32*, i32, i32, ...) @user_add_object(i32* %36, i32 %39, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.lev_hints_add_user_object_rating*, %struct.lev_hints_add_user_object_rating** %3, align 8
  %45 = getelementptr inbounds %struct.lev_hints_add_user_object_rating, %struct.lev_hints_add_user_object_rating* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to float*
  store float* %51, float** %9, align 8
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %80, %35
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @rating_num, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %57, %58
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i1 [ false, %52 ], [ %59, %56 ]
  br i1 %61, label %62, label %83

62:                                               ; preds = %60
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.lev_hints_add_user_object_rating*, %struct.lev_hints_add_user_object_rating** %3, align 8
  %65 = getelementptr inbounds %struct.lev_hints_add_user_object_rating, %struct.lev_hints_add_user_object_rating* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.lev_hints_add_user_object_rating*, %struct.lev_hints_add_user_object_rating** %3, align 8
  %68 = getelementptr inbounds %struct.lev_hints_add_user_object_rating, %struct.lev_hints_add_user_object_rating* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load float*, float** %9, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %70, i64 %72
  %74 = load float, float* %73, align 4
  %75 = fptosi float %74 to i32
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @user_set_object_rating(i32* %63, i32 %66, i32 %69, i32 %75, i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %62
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %52

83:                                               ; preds = %60
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %2, align 4
  br label %86

85:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %83, %27
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @check_text_len(i32) #1

declare dso_local i32* @conv_user_id(i32) #1

declare dso_local i32 @user_add_object(i32*, i32, i32, ...) #1

declare dso_local i32 @user_set_object_rating(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
