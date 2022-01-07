; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/pistachio/extr_clk.c_pistachio_clk_register_provider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/pistachio/extr_clk.c_pistachio_clk_register_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pistachio_clk_provider = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@.str = private unnamed_addr constant [34 x i8] c"Failed to register clock %d: %ld\0A\00", align 1
@of_clk_src_onecell_get = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pistachio_clk_register_provider(%struct.pistachio_clk_provider* %0) #0 {
  %2 = alloca %struct.pistachio_clk_provider*, align 8
  %3 = alloca i32, align 4
  store %struct.pistachio_clk_provider* %0, %struct.pistachio_clk_provider** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %35, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.pistachio_clk_provider*, %struct.pistachio_clk_provider** %2, align 8
  %7 = getelementptr inbounds %struct.pistachio_clk_provider, %struct.pistachio_clk_provider* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ult i32 %5, %9
  br i1 %10, label %11, label %38

11:                                               ; preds = %4
  %12 = load %struct.pistachio_clk_provider*, %struct.pistachio_clk_provider** %2, align 8
  %13 = getelementptr inbounds %struct.pistachio_clk_provider, %struct.pistachio_clk_provider* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @IS_ERR(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %11
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.pistachio_clk_provider*, %struct.pistachio_clk_provider** %2, align 8
  %25 = getelementptr inbounds %struct.pistachio_clk_provider, %struct.pistachio_clk_provider* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PTR_ERR(i32 %31)
  %33 = call i32 @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %32)
  br label %34

34:                                               ; preds = %22, %11
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %3, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %4

38:                                               ; preds = %4
  %39 = load %struct.pistachio_clk_provider*, %struct.pistachio_clk_provider** %2, align 8
  %40 = getelementptr inbounds %struct.pistachio_clk_provider, %struct.pistachio_clk_provider* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @of_clk_src_onecell_get, align 4
  %43 = load %struct.pistachio_clk_provider*, %struct.pistachio_clk_provider** %2, align 8
  %44 = getelementptr inbounds %struct.pistachio_clk_provider, %struct.pistachio_clk_provider* %43, i32 0, i32 0
  %45 = call i32 @of_clk_add_provider(i32 %41, i32 %42, %struct.TYPE_2__* %44)
  ret void
}

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_clk_add_provider(i32, i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
