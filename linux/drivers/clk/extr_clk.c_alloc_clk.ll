; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_alloc_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_alloc_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i8*, i32, i32, %struct.clk_core* }
%struct.clk_core = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.clk_core*, i8*, i8*)* @alloc_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @alloc_clk(%struct.clk_core* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.clk_core*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.clk*, align 8
  store %struct.clk_core* %0, %struct.clk_core** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.clk* @kzalloc(i32 24, i32 %9)
  store %struct.clk* %10, %struct.clk** %8, align 8
  %11 = load %struct.clk*, %struct.clk** %8, align 8
  %12 = icmp ne %struct.clk* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.clk* @ERR_PTR(i32 %15)
  store %struct.clk* %16, %struct.clk** %4, align 8
  br label %33

17:                                               ; preds = %3
  %18 = load %struct.clk_core*, %struct.clk_core** %5, align 8
  %19 = load %struct.clk*, %struct.clk** %8, align 8
  %20 = getelementptr inbounds %struct.clk, %struct.clk* %19, i32 0, i32 3
  store %struct.clk_core* %18, %struct.clk_core** %20, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.clk*, %struct.clk** %8, align 8
  %23 = getelementptr inbounds %struct.clk, %struct.clk* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32 @kstrdup_const(i8* %24, i32 %25)
  %27 = load %struct.clk*, %struct.clk** %8, align 8
  %28 = getelementptr inbounds %struct.clk, %struct.clk* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @ULONG_MAX, align 4
  %30 = load %struct.clk*, %struct.clk** %8, align 8
  %31 = getelementptr inbounds %struct.clk, %struct.clk* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.clk*, %struct.clk** %8, align 8
  store %struct.clk* %32, %struct.clk** %4, align 8
  br label %33

33:                                               ; preds = %17, %13
  %34 = load %struct.clk*, %struct.clk** %4, align 8
  ret %struct.clk* %34
}

declare dso_local %struct.clk* @kzalloc(i32, i32) #1

declare dso_local %struct.clk* @ERR_PTR(i32) #1

declare dso_local i32 @kstrdup_const(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
