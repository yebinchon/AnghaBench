; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_username.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_do_set_username.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_username = type { i32 }

@LEV_TARG_USERNAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_set_username(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lev_username*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp uge i32 %9, 256
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @conv_user_id(i32 %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %3
  store i32 0, i32* %4, align 4
  br label %34

16:                                               ; preds = %11
  %17 = load i64, i64* @LEV_TARG_USERNAME, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 9, %21
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.lev_username* @alloc_log_event(i64 %20, i32 %22, i32 %23)
  store %struct.lev_username* %24, %struct.lev_username** %8, align 8
  %25 = load %struct.lev_username*, %struct.lev_username** %8, align 8
  %26 = getelementptr inbounds %struct.lev_username, %struct.lev_username* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @filter_text(i32 %27, i8* %28, i32 %29)
  %31 = load %struct.lev_username*, %struct.lev_username** %8, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @set_username(%struct.lev_username* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %16, %15
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i64 @conv_user_id(i32) #1

declare dso_local %struct.lev_username* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @filter_text(i32, i8*, i32) #1

declare dso_local i32 @set_username(%struct.lev_username*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
