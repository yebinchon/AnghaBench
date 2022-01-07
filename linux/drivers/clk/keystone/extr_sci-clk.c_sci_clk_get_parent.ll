; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/keystone/extr_sci-clk.c_sci_clk_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/keystone/extr_sci-clk.c_sci_clk_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.sci_clk = type { i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32, i64, i8*)* }

@.str = private unnamed_addr constant [46 x i8] c"get-parent failed for dev=%d, clk=%d, ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @sci_clk_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_clk_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.sci_clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.sci_clk* @to_sci_clk(%struct.clk_hw* %7)
  store %struct.sci_clk* %8, %struct.sci_clk** %4, align 8
  store i64 0, i64* %5, align 8
  %9 = load %struct.sci_clk*, %struct.sci_clk** %4, align 8
  %10 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32 (i32, i32, i64, i8*)*, i32 (i32, i32, i64, i8*)** %14, align 8
  %16 = load %struct.sci_clk*, %struct.sci_clk** %4, align 8
  %17 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sci_clk*, %struct.sci_clk** %4, align 8
  %22 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.sci_clk*, %struct.sci_clk** %4, align 8
  %25 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = bitcast i64* %5 to i8*
  %28 = call i32 %15(i32 %20, i32 %23, i64 %26, i8* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %1
  %32 = load %struct.sci_clk*, %struct.sci_clk** %4, align 8
  %33 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.sci_clk*, %struct.sci_clk** %4, align 8
  %38 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sci_clk*, %struct.sci_clk** %4, align 8
  %41 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %39, i64 %42, i32 %43)
  store i32 0, i32* %2, align 4
  br label %54

45:                                               ; preds = %1
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.sci_clk*, %struct.sci_clk** %4, align 8
  %48 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  %51 = sub nsw i64 %50, 1
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %5, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %45, %31
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.sci_clk* @to_sci_clk(%struct.clk_hw*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
