; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_get_user_rxwin.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_get_user_rxwin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vas_window = type { i64, i64 }
%struct.vas_instance = type { i32, %struct.vas_window** }

@EINVAL = common dso_local global i32 0, align 4
@VAS_COP_TYPE_FTW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vas_window* (%struct.vas_instance*, i32)* @get_user_rxwin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vas_window* @get_user_rxwin(%struct.vas_instance* %0, i32 %1) #0 {
  %3 = alloca %struct.vas_window*, align 8
  %4 = alloca %struct.vas_instance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vas_window*, align 8
  store %struct.vas_instance* %0, %struct.vas_instance** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @decode_pswid(i32 %9, i32* %6, i32* %7)
  %11 = load %struct.vas_instance*, %struct.vas_instance** %4, align 8
  %12 = getelementptr inbounds %struct.vas_instance, %struct.vas_instance* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.vas_window* @ERR_PTR(i32 %18)
  store %struct.vas_window* %19, %struct.vas_window** %3, align 8
  br label %47

20:                                               ; preds = %2
  %21 = load %struct.vas_instance*, %struct.vas_instance** %4, align 8
  %22 = getelementptr inbounds %struct.vas_instance, %struct.vas_instance* %21, i32 0, i32 1
  %23 = load %struct.vas_window**, %struct.vas_window*** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.vas_window*, %struct.vas_window** %23, i64 %25
  %27 = load %struct.vas_window*, %struct.vas_window** %26, align 8
  store %struct.vas_window* %27, %struct.vas_window** %8, align 8
  %28 = load %struct.vas_window*, %struct.vas_window** %8, align 8
  %29 = icmp ne %struct.vas_window* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %20
  %31 = load %struct.vas_window*, %struct.vas_window** %8, align 8
  %32 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load %struct.vas_window*, %struct.vas_window** %8, align 8
  %37 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @VAS_COP_TYPE_FTW, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35, %30, %20
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.vas_window* @ERR_PTR(i32 %43)
  store %struct.vas_window* %44, %struct.vas_window** %3, align 8
  br label %47

45:                                               ; preds = %35
  %46 = load %struct.vas_window*, %struct.vas_window** %8, align 8
  store %struct.vas_window* %46, %struct.vas_window** %3, align 8
  br label %47

47:                                               ; preds = %45, %41, %16
  %48 = load %struct.vas_window*, %struct.vas_window** %3, align 8
  ret %struct.vas_window* %48
}

declare dso_local i32 @decode_pswid(i32, i32*, i32*) #1

declare dso_local %struct.vas_window* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
