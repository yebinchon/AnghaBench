; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/keystone/extr_sci-clk.c_sci_clk_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/keystone/extr_sci-clk.c_sci_clk_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.sci_clk = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i32, i32)* }

@.str = private unnamed_addr constant [45 x i8] c"unprepare failed for dev=%d, clk=%d, ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @sci_clk_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_clk_unprepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.sci_clk*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.sci_clk* @to_sci_clk(%struct.clk_hw* %5)
  store %struct.sci_clk* %6, %struct.sci_clk** %3, align 8
  %7 = load %struct.sci_clk*, %struct.sci_clk** %3, align 8
  %8 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %12, align 8
  %14 = load %struct.sci_clk*, %struct.sci_clk** %3, align 8
  %15 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sci_clk*, %struct.sci_clk** %3, align 8
  %20 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sci_clk*, %struct.sci_clk** %3, align 8
  %23 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %13(i32 %18, i32 %21, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %1
  %29 = load %struct.sci_clk*, %struct.sci_clk** %3, align 8
  %30 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.sci_clk*, %struct.sci_clk** %3, align 8
  %35 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sci_clk*, %struct.sci_clk** %3, align 8
  %38 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %28, %1
  ret void
}

declare dso_local %struct.sci_clk* @to_sci_clk(%struct.clk_hw*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
