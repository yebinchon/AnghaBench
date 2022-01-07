; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-engine.c_delete_many_rates_mask_init.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-engine.c_delete_many_rates_mask_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@allowed_deleted_by_rate = common dso_local global i8* null, align 8
@MAX_RATES = common dso_local global i32 0, align 4
@delete_many_rates_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @delete_many_rates_mask_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_many_rates_mask_init() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load i8*, i8** @allowed_deleted_by_rate, align 8
  store i8* %3, i8** %1, align 8
  br label %4

4:                                                ; preds = %23, %0
  %5 = load i8*, i8** %1, align 8
  %6 = load i8, i8* %5, align 1
  %7 = icmp ne i8 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %4
  %9 = load i8*, i8** %1, align 8
  %10 = load i8, i8* %9, align 1
  %11 = call i32 @get_sorting_mode(i8 signext %10)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %8
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @MAX_RATES, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = shl i32 1, %19
  %21 = load i32, i32* @delete_many_rates_mask, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* @delete_many_rates_mask, align 4
  br label %23

23:                                               ; preds = %18, %14, %8
  %24 = load i8*, i8** %1, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %1, align 8
  br label %4

26:                                               ; preds = %4
  ret void
}

declare dso_local i32 @get_sorting_mode(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
