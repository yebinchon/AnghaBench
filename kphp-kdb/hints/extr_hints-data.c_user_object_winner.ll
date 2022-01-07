; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_user_object_winner.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_user_object_winner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_hints_user_object_winner = type { i32, i32, i32*, i32, i32, i32 }

@fading = common dso_local global i32 0, align 4
@LEV_HINTS_USER_OBJECT_WINNER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_object_winner(%struct.lev_hints_user_object_winner* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_hints_user_object_winner*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lev_hints_user_object_winner* %0, %struct.lev_hints_user_object_winner** %3, align 8
  %8 = load i32, i32* @fading, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %64, label %10

10:                                               ; preds = %1
  %11 = load %struct.lev_hints_user_object_winner*, %struct.lev_hints_user_object_winner** %3, align 8
  %12 = getelementptr inbounds %struct.lev_hints_user_object_winner, %struct.lev_hints_user_object_winner* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = call i32* @conv_user_id(i32 %13)
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %63

17:                                               ; preds = %10
  %18 = load %struct.lev_hints_user_object_winner*, %struct.lev_hints_user_object_winner** %3, align 8
  %19 = getelementptr inbounds %struct.lev_hints_user_object_winner, %struct.lev_hints_user_object_winner* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @LEV_HINTS_USER_OBJECT_WINNER, align 4
  %22 = sub nsw i32 %20, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.lev_hints_user_object_winner*, %struct.lev_hints_user_object_winner** %3, align 8
  %25 = getelementptr inbounds %struct.lev_hints_user_object_winner, %struct.lev_hints_user_object_winner* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.lev_hints_user_object_winner*, %struct.lev_hints_user_object_winner** %3, align 8
  %28 = getelementptr inbounds %struct.lev_hints_user_object_winner, %struct.lev_hints_user_object_winner* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.lev_hints_user_object_winner*, %struct.lev_hints_user_object_winner** %3, align 8
  %31 = getelementptr inbounds %struct.lev_hints_user_object_winner, %struct.lev_hints_user_object_winner* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 128
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @user_object_rating_increment(i32* %23, i32 %26, i32 %29, i32 %33, i32 %34)
  store i32 %35, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %58, %17
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.lev_hints_user_object_winner*, %struct.lev_hints_user_object_winner** %3, align 8
  %39 = getelementptr inbounds %struct.lev_hints_user_object_winner, %struct.lev_hints_user_object_winner* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.lev_hints_user_object_winner*, %struct.lev_hints_user_object_winner** %3, align 8
  %46 = getelementptr inbounds %struct.lev_hints_user_object_winner, %struct.lev_hints_user_object_winner* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.lev_hints_user_object_winner*, %struct.lev_hints_user_object_winner** %3, align 8
  %49 = getelementptr inbounds %struct.lev_hints_user_object_winner, %struct.lev_hints_user_object_winner* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @user_object_rating_increment(i32* %44, i32 %47, i32 %54, i32 127, i32 %55)
  %57 = and i32 %43, %56
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %42
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %36

61:                                               ; preds = %36
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %2, align 4
  br label %65

63:                                               ; preds = %10
  br label %64

64:                                               ; preds = %63, %1
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %61
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32* @conv_user_id(i32) #1

declare dso_local i32 @user_object_rating_increment(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
