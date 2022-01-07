; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_kmmio.c_add_kmmio_fault_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_kmmio.c_add_kmmio_fault_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmmio_fault_page = type { i32, i64, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @add_kmmio_fault_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_kmmio_fault_page(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.kmmio_fault_page*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call %struct.kmmio_fault_page* @get_kmmio_fault_page(i64 %5)
  store %struct.kmmio_fault_page* %6, %struct.kmmio_fault_page** %4, align 8
  %7 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %4, align 8
  %8 = icmp ne %struct.kmmio_fault_page* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %4, align 8
  %11 = getelementptr inbounds %struct.kmmio_fault_page, %struct.kmmio_fault_page* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %4, align 8
  %16 = call i64 @arm_kmmio_fault_page(%struct.kmmio_fault_page* %15)
  br label %17

17:                                               ; preds = %14, %9
  %18 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %4, align 8
  %19 = getelementptr inbounds %struct.kmmio_fault_page, %struct.kmmio_fault_page* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  store i32 0, i32* %2, align 4
  br label %48

22:                                               ; preds = %1
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call %struct.kmmio_fault_page* @kzalloc(i32 24, i32 %23)
  store %struct.kmmio_fault_page* %24, %struct.kmmio_fault_page** %4, align 8
  %25 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %4, align 8
  %26 = icmp ne %struct.kmmio_fault_page* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 -1, i32* %2, align 4
  br label %48

28:                                               ; preds = %22
  %29 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %4, align 8
  %30 = getelementptr inbounds %struct.kmmio_fault_page, %struct.kmmio_fault_page* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load i64, i64* %3, align 8
  %32 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %4, align 8
  %33 = getelementptr inbounds %struct.kmmio_fault_page, %struct.kmmio_fault_page* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %4, align 8
  %35 = call i64 @arm_kmmio_fault_page(%struct.kmmio_fault_page* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %4, align 8
  %39 = call i32 @kfree(%struct.kmmio_fault_page* %38)
  store i32 -1, i32* %2, align 4
  br label %48

40:                                               ; preds = %28
  %41 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %4, align 8
  %42 = getelementptr inbounds %struct.kmmio_fault_page, %struct.kmmio_fault_page* %41, i32 0, i32 2
  %43 = load %struct.kmmio_fault_page*, %struct.kmmio_fault_page** %4, align 8
  %44 = getelementptr inbounds %struct.kmmio_fault_page, %struct.kmmio_fault_page* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @kmmio_page_list(i64 %45)
  %47 = call i32 @list_add_rcu(i32* %42, i32 %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %40, %37, %27, %17
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.kmmio_fault_page* @get_kmmio_fault_page(i64) #1

declare dso_local i64 @arm_kmmio_fault_page(%struct.kmmio_fault_page*) #1

declare dso_local %struct.kmmio_fault_page* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.kmmio_fault_page*) #1

declare dso_local i32 @list_add_rcu(i32*, i32) #1

declare dso_local i32 @kmmio_page_list(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
