; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat.c___init_cache_modes.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pat.c___init_cache_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"x86/PAT: Configuration [0-7]: %s\0A\00", align 1
@init_cm_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @__init_cache_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__init_cache_modes(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [33 x i8], align 16
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = getelementptr inbounds [33 x i8], [33 x i8]* %4, i64 0, i64 32
  store i8 0, i8* %6, align 16
  store i32 7, i32* %5, align 4
  br label %7

7:                                                ; preds = %25, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* %5, align 4
  %13 = mul nsw i32 %12, 8
  %14 = ashr i32 %11, %13
  %15 = and i32 %14, 7
  %16 = getelementptr inbounds [33 x i8], [33 x i8]* %4, i64 0, i64 0
  %17 = load i32, i32* %5, align 4
  %18 = mul nsw i32 4, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  %21 = call i32 @pat_get_cache_mode(i32 %15, i8* %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @update_cache_mode_entry(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %10
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %5, align 4
  br label %7

28:                                               ; preds = %7
  %29 = getelementptr inbounds [33 x i8], [33 x i8]* %4, i64 0, i64 0
  %30 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %29)
  store i32 1, i32* @init_cm_done, align 4
  ret void
}

declare dso_local i32 @pat_get_cache_mode(i32, i8*) #1

declare dso_local i32 @update_cache_mode_entry(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
