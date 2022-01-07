; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_do_set_privacy.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_do_set_privacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_privacy = type { i32 }

@LEV_NEWS_PRIVACY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_set_privacy(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lev_privacy*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @conv_uid(i32 %7)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %22

11:                                               ; preds = %2
  %12 = load i32, i32* @LEV_NEWS_PRIVACY, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.lev_privacy* @alloc_log_event(i32 %12, i32 12, i32 %13)
  store %struct.lev_privacy* %14, %struct.lev_privacy** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = or i32 %15, 1
  %17 = load %struct.lev_privacy*, %struct.lev_privacy** %6, align 8
  %18 = getelementptr inbounds %struct.lev_privacy, %struct.lev_privacy* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @set_privacy(i32 %19, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %11, %10
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i64 @conv_uid(i32) #1

declare dso_local %struct.lev_privacy* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @set_privacy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
