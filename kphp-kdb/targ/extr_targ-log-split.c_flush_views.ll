; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-log-split.c_flush_views.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-log-split.c_flush_views.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_targ_views = type { i32, i64, i32 }

@MAX_AD_ID = common dso_local global i32 0, align 4
@Views = common dso_local global i64* null, align 8
@LEV_TARG_VIEWS = common dso_local global i32 0, align 4
@wr_views_rec = common dso_local global i32 0, align 4
@wr_rec = common dso_local global i32 0, align 4
@wr_bytes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @flush_views to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_views(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_targ_views*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @MAX_AD_ID, align 4
  %6 = icmp uge i32 %4, %5
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = load i64*, i64** @Views, align 8
  %9 = load i32, i32* %2, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i64, i64* %8, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %7, %1
  br label %40

15:                                               ; preds = %7
  %16 = call %struct.lev_targ_views* @write_alloc(i32 12)
  store %struct.lev_targ_views* %16, %struct.lev_targ_views** %3, align 8
  %17 = load i32, i32* @LEV_TARG_VIEWS, align 4
  %18 = load %struct.lev_targ_views*, %struct.lev_targ_views** %3, align 8
  %19 = getelementptr inbounds %struct.lev_targ_views, %struct.lev_targ_views* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %2, align 4
  %21 = load %struct.lev_targ_views*, %struct.lev_targ_views** %3, align 8
  %22 = getelementptr inbounds %struct.lev_targ_views, %struct.lev_targ_views* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i64*, i64** @Views, align 8
  %24 = load i32, i32* %2, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.lev_targ_views*, %struct.lev_targ_views** %3, align 8
  %29 = getelementptr inbounds %struct.lev_targ_views, %struct.lev_targ_views* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load i64*, i64** @Views, align 8
  %31 = load i32, i32* %2, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @wr_views_rec, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @wr_views_rec, align 4
  %36 = load i32, i32* @wr_rec, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @wr_rec, align 4
  %38 = load i32, i32* @wr_bytes, align 4
  %39 = add nsw i32 %38, 12
  store i32 %39, i32* @wr_bytes, align 4
  br label %40

40:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.lev_targ_views* @write_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
