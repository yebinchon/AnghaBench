; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_get_vinst_rxwin.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_get_vinst_rxwin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vas_window = type { i32 }
%struct.vas_instance = type { i32, i64* }

@VAS_COP_TYPE_FTW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vas_window* (%struct.vas_instance*, i32, i32)* @get_vinst_rxwin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vas_window* @get_vinst_rxwin(%struct.vas_instance* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vas_instance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vas_window*, align 8
  store %struct.vas_instance* %0, %struct.vas_instance** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.vas_instance*, %struct.vas_instance** %4, align 8
  %9 = getelementptr inbounds %struct.vas_instance, %struct.vas_instance* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @VAS_COP_TYPE_FTW, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.vas_instance*, %struct.vas_instance** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.vas_window* @get_user_rxwin(%struct.vas_instance* %15, i32 %16)
  store %struct.vas_window* %17, %struct.vas_window** %7, align 8
  br label %35

18:                                               ; preds = %3
  %19 = load %struct.vas_instance*, %struct.vas_instance** %4, align 8
  %20 = getelementptr inbounds %struct.vas_instance, %struct.vas_instance* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = inttoptr i64 %25 to %struct.vas_window*
  br label %33

29:                                               ; preds = %18
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.vas_window* @ERR_PTR(i32 %31)
  br label %33

33:                                               ; preds = %29, %27
  %34 = phi %struct.vas_window* [ %28, %27 ], [ %32, %29 ]
  store %struct.vas_window* %34, %struct.vas_window** %7, align 8
  br label %35

35:                                               ; preds = %33, %14
  %36 = load %struct.vas_window*, %struct.vas_window** %7, align 8
  %37 = call i32 @IS_ERR(%struct.vas_window* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load %struct.vas_window*, %struct.vas_window** %7, align 8
  %41 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %40, i32 0, i32 0
  %42 = call i32 @atomic_inc(i32* %41)
  br label %43

43:                                               ; preds = %39, %35
  %44 = load %struct.vas_instance*, %struct.vas_instance** %4, align 8
  %45 = getelementptr inbounds %struct.vas_instance, %struct.vas_instance* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load %struct.vas_window*, %struct.vas_window** %7, align 8
  ret %struct.vas_window* %47
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.vas_window* @get_user_rxwin(%struct.vas_instance*, i32) #1

declare dso_local %struct.vas_window* @ERR_PTR(i32) #1

declare dso_local i32 @IS_ERR(%struct.vas_window*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
