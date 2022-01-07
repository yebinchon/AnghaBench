; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_sworks-agp.c_serverworks_create_gatt_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_sworks-agp.c_serverworks_create_gatt_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.serverworks_page_map** }
%struct.serverworks_page_map = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@serverworks_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @serverworks_create_gatt_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serverworks_create_gatt_pages(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.serverworks_page_map**, align 8
  %5 = alloca %struct.serverworks_page_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 %8, 1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.serverworks_page_map** @kcalloc(i32 %9, i32 8, i32 %10)
  store %struct.serverworks_page_map** %11, %struct.serverworks_page_map*** %4, align 8
  %12 = load %struct.serverworks_page_map**, %struct.serverworks_page_map*** %4, align 8
  %13 = icmp eq %struct.serverworks_page_map** %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %54

17:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %42, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.serverworks_page_map* @kzalloc(i32 4, i32 %23)
  store %struct.serverworks_page_map* %24, %struct.serverworks_page_map** %5, align 8
  %25 = load %struct.serverworks_page_map*, %struct.serverworks_page_map** %5, align 8
  %26 = icmp eq %struct.serverworks_page_map* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %45

30:                                               ; preds = %22
  %31 = load %struct.serverworks_page_map*, %struct.serverworks_page_map** %5, align 8
  %32 = load %struct.serverworks_page_map**, %struct.serverworks_page_map*** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.serverworks_page_map*, %struct.serverworks_page_map** %32, i64 %34
  store %struct.serverworks_page_map* %31, %struct.serverworks_page_map** %35, align 8
  %36 = load %struct.serverworks_page_map*, %struct.serverworks_page_map** %5, align 8
  %37 = call i32 @serverworks_create_page_map(%struct.serverworks_page_map* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %45

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %18

45:                                               ; preds = %40, %27, %18
  %46 = load i32, i32* %3, align 4
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @serverworks_private, i32 0, i32 0), align 8
  %47 = load %struct.serverworks_page_map**, %struct.serverworks_page_map*** %4, align 8
  store %struct.serverworks_page_map** %47, %struct.serverworks_page_map*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @serverworks_private, i32 0, i32 1), align 8
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 (...) @serverworks_free_gatt_pages()
  br label %52

52:                                               ; preds = %50, %45
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %14
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.serverworks_page_map** @kcalloc(i32, i32, i32) #1

declare dso_local %struct.serverworks_page_map* @kzalloc(i32, i32) #1

declare dso_local i32 @serverworks_create_page_map(%struct.serverworks_page_map*) #1

declare dso_local i32 @serverworks_free_gatt_pages(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
