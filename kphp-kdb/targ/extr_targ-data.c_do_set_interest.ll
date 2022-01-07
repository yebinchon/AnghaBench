; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_interest.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_interest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_interests = type { i32, i32 }

@MAX_INTERESTS = common dso_local global i32 0, align 4
@LEV_TARG_INTERESTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_set_interest(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lev_interests*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %20, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @MAX_INTERESTS, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %8, align 4
  %19 = icmp ugt i32 %18, 65520
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %13, %4
  store i32 0, i32* %5, align 4
  br label %43

21:                                               ; preds = %17
  %22 = load i64, i64* @LEV_TARG_INTERESTS, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 11
  %28 = load i32, i32* %6, align 4
  %29 = call %struct.lev_interests* @alloc_log_event(i64 %25, i32 %27, i32 %28)
  store %struct.lev_interests* %29, %struct.lev_interests** %10, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.lev_interests*, %struct.lev_interests** %10, align 8
  %32 = getelementptr inbounds %struct.lev_interests, %struct.lev_interests* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.lev_interests*, %struct.lev_interests** %10, align 8
  %34 = getelementptr inbounds %struct.lev_interests, %struct.lev_interests* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @filter_text(i32 %35, i8* %36, i32 %37)
  %39 = load %struct.lev_interests*, %struct.lev_interests** %10, align 8
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 11
  %42 = call i32 @store_interests(%struct.lev_interests* %39, i32 %41)
  store i32 1, i32* %5, align 4
  br label %43

43:                                               ; preds = %21, %20
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.lev_interests* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @filter_text(i32, i8*, i32) #1

declare dso_local i32 @store_interests(%struct.lev_interests*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
