; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_pmc.c_pmc_data_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_pmc.c_pmc_data_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_data = type { i32, i32, i32, i32, i8*, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pmc_data* @pmc_data_allocate(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pmc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pmc_data*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.pmc_data* @kzalloc(i32 48, i32 %11)
  store %struct.pmc_data* %12, %struct.pmc_data** %10, align 8
  %13 = load %struct.pmc_data*, %struct.pmc_data** %10, align 8
  %14 = icmp ne %struct.pmc_data* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store %struct.pmc_data* null, %struct.pmc_data** %5, align 8
  br label %77

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.pmc_data*, %struct.pmc_data** %10, align 8
  %19 = getelementptr inbounds %struct.pmc_data, %struct.pmc_data* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kcalloc(i32 %20, i32 8, i32 %21)
  %23 = load %struct.pmc_data*, %struct.pmc_data** %10, align 8
  %24 = getelementptr inbounds %struct.pmc_data, %struct.pmc_data* %23, i32 0, i32 7
  store i8* %22, i8** %24, align 8
  %25 = load %struct.pmc_data*, %struct.pmc_data** %10, align 8
  %26 = getelementptr inbounds %struct.pmc_data, %struct.pmc_data* %25, i32 0, i32 7
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %16
  br label %74

30:                                               ; preds = %16
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.pmc_data*, %struct.pmc_data** %10, align 8
  %33 = getelementptr inbounds %struct.pmc_data, %struct.pmc_data* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kcalloc(i32 %34, i32 8, i32 %35)
  %37 = load %struct.pmc_data*, %struct.pmc_data** %10, align 8
  %38 = getelementptr inbounds %struct.pmc_data, %struct.pmc_data* %37, i32 0, i32 6
  store i8* %36, i8** %38, align 8
  %39 = load %struct.pmc_data*, %struct.pmc_data** %10, align 8
  %40 = getelementptr inbounds %struct.pmc_data, %struct.pmc_data* %39, i32 0, i32 6
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %30
  br label %74

44:                                               ; preds = %30
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.pmc_data*, %struct.pmc_data** %10, align 8
  %47 = getelementptr inbounds %struct.pmc_data, %struct.pmc_data* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @kcalloc(i32 %48, i32 8, i32 %49)
  %51 = load %struct.pmc_data*, %struct.pmc_data** %10, align 8
  %52 = getelementptr inbounds %struct.pmc_data, %struct.pmc_data* %51, i32 0, i32 5
  store i8* %50, i8** %52, align 8
  %53 = load %struct.pmc_data*, %struct.pmc_data** %10, align 8
  %54 = getelementptr inbounds %struct.pmc_data, %struct.pmc_data* %53, i32 0, i32 5
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %44
  br label %74

58:                                               ; preds = %44
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.pmc_data*, %struct.pmc_data** %10, align 8
  %61 = getelementptr inbounds %struct.pmc_data, %struct.pmc_data* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i8* @kcalloc(i32 %62, i32 8, i32 %63)
  %65 = load %struct.pmc_data*, %struct.pmc_data** %10, align 8
  %66 = getelementptr inbounds %struct.pmc_data, %struct.pmc_data* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  %67 = load %struct.pmc_data*, %struct.pmc_data** %10, align 8
  %68 = getelementptr inbounds %struct.pmc_data, %struct.pmc_data* %67, i32 0, i32 4
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %58
  br label %74

72:                                               ; preds = %58
  %73 = load %struct.pmc_data*, %struct.pmc_data** %10, align 8
  store %struct.pmc_data* %73, %struct.pmc_data** %5, align 8
  br label %77

74:                                               ; preds = %71, %57, %43, %29
  %75 = load %struct.pmc_data*, %struct.pmc_data** %10, align 8
  %76 = call i32 @pmc_data_free(%struct.pmc_data* %75)
  store %struct.pmc_data* null, %struct.pmc_data** %5, align 8
  br label %77

77:                                               ; preds = %74, %72, %15
  %78 = load %struct.pmc_data*, %struct.pmc_data** %5, align 8
  ret %struct.pmc_data* %78
}

declare dso_local %struct.pmc_data* @kzalloc(i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pmc_data_free(%struct.pmc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
