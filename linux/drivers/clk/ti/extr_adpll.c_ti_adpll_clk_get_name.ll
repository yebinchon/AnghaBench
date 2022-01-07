; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_adpll.c_ti_adpll_clk_get_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_adpll.c_ti_adpll_clk_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_adpll_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"adpll\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"%08lx.%s.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ti_adpll_data*, i32, i8*)* @ti_adpll_clk_get_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ti_adpll_clk_get_name(%struct.ti_adpll_data* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ti_adpll_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.ti_adpll_data* %0, %struct.ti_adpll_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %5, align 8
  %16 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @of_property_read_string_index(i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %18, i8** %8)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i8* null, i8** %4, align 8
  br label %51

23:                                               ; preds = %14
  br label %49

24:                                               ; preds = %3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %25 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %5, align 8
  %26 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = add nsw i64 9, %29
  %31 = add nsw i64 %30, 1
  %32 = load i8*, i8** %7, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = add nsw i64 %31, %33
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @devm_kzalloc(i32 %27, i64 %34, i32 %35)
  store i8* %36, i8** %11, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %24
  store i8* null, i8** %4, align 8
  br label %51

40:                                               ; preds = %24
  %41 = load i8*, i8** %11, align 8
  %42 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %5, align 8
  %43 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %44, i8* %45, i8* %46)
  %48 = load i8*, i8** %11, align 8
  store i8* %48, i8** %8, align 8
  br label %49

49:                                               ; preds = %40, %23
  %50 = load i8*, i8** %8, align 8
  store i8* %50, i8** %4, align 8
  br label %51

51:                                               ; preds = %49, %39, %22
  %52 = load i8*, i8** %4, align 8
  ret i8* %52
}

declare dso_local i32 @of_property_read_string_index(i32, i8*, i32, i8**) #1

declare dso_local i8* @devm_kzalloc(i32, i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
