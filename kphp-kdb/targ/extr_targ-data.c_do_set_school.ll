; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_school.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_school.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.school = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lev_school = type { i64*, i32, i32, i32, i32, i32, i32, i32, i32 }

@LEV_TARG_SCH_ADD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_set_school(i32 %0, %struct.school* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.school*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lev_school*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.school* %1, %struct.school** %5, align 8
  %8 = load %struct.school*, %struct.school** %5, align 8
  %9 = getelementptr inbounds %struct.school, %struct.school* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.school*, %struct.school** %5, align 8
  %14 = getelementptr inbounds %struct.school, %struct.school* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @strlen(i32 %15)
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %12
  %19 = phi i32 [ %16, %12 ], [ 0, %17 ]
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sge i32 %20, 256
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @conv_user_id(i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %18
  store i32 0, i32* %3, align 4
  br label %98

27:                                               ; preds = %22
  %28 = load i64, i64* @LEV_TARG_SCH_ADD, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 26, %32
  %34 = load i32, i32* %4, align 4
  %35 = call %struct.lev_school* @alloc_log_event(i64 %31, i32 %33, i32 %34)
  store %struct.lev_school* %35, %struct.lev_school** %7, align 8
  %36 = load %struct.school*, %struct.school** %5, align 8
  %37 = getelementptr inbounds %struct.school, %struct.school* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.lev_school*, %struct.lev_school** %7, align 8
  %40 = getelementptr inbounds %struct.lev_school, %struct.lev_school* %39, i32 0, i32 8
  store i32 %38, i32* %40, align 4
  %41 = load %struct.school*, %struct.school** %5, align 8
  %42 = getelementptr inbounds %struct.school, %struct.school* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.lev_school*, %struct.lev_school** %7, align 8
  %45 = getelementptr inbounds %struct.lev_school, %struct.lev_school* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 8
  %46 = load %struct.school*, %struct.school** %5, align 8
  %47 = getelementptr inbounds %struct.school, %struct.school* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.lev_school*, %struct.lev_school** %7, align 8
  %50 = getelementptr inbounds %struct.lev_school, %struct.lev_school* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 4
  %51 = load %struct.school*, %struct.school** %5, align 8
  %52 = getelementptr inbounds %struct.school, %struct.school* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.lev_school*, %struct.lev_school** %7, align 8
  %55 = getelementptr inbounds %struct.lev_school, %struct.lev_school* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  %56 = load %struct.school*, %struct.school** %5, align 8
  %57 = getelementptr inbounds %struct.school, %struct.school* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.lev_school*, %struct.lev_school** %7, align 8
  %60 = getelementptr inbounds %struct.lev_school, %struct.lev_school* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load %struct.school*, %struct.school** %5, align 8
  %62 = getelementptr inbounds %struct.school, %struct.school* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.lev_school*, %struct.lev_school** %7, align 8
  %65 = getelementptr inbounds %struct.lev_school, %struct.lev_school* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.school*, %struct.school** %5, align 8
  %67 = getelementptr inbounds %struct.school, %struct.school* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.lev_school*, %struct.lev_school** %7, align 8
  %70 = getelementptr inbounds %struct.lev_school, %struct.lev_school* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load %struct.school*, %struct.school** %5, align 8
  %72 = getelementptr inbounds %struct.school, %struct.school* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.lev_school*, %struct.lev_school** %7, align 8
  %75 = getelementptr inbounds %struct.lev_school, %struct.lev_school* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %27
  %79 = load %struct.lev_school*, %struct.lev_school** %7, align 8
  %80 = getelementptr inbounds %struct.lev_school, %struct.lev_school* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load %struct.school*, %struct.school** %5, align 8
  %83 = getelementptr inbounds %struct.school, %struct.school* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @filter_simple_text(i64* %81, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %78, %27
  %88 = load %struct.lev_school*, %struct.lev_school** %7, align 8
  %89 = getelementptr inbounds %struct.lev_school, %struct.lev_school* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  store i64 0, i64* %93, align 8
  %94 = load %struct.lev_school*, %struct.lev_school** %7, align 8
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 26, %95
  %97 = call i32 @store_school(%struct.lev_school* %94, i32 %96)
  store i32 1, i32* %3, align 4
  br label %98

98:                                               ; preds = %87, %26
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @conv_user_id(i32) #1

declare dso_local %struct.lev_school* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @filter_simple_text(i64*, i32, i32) #1

declare dso_local i32 @store_school(%struct.lev_school*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
