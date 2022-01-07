; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_init_rate_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_init_rate_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_core = type { i32, i32*, %struct.clk_core* }
%struct.clk_rate_request = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_core*, %struct.clk_rate_request*)* @clk_core_init_rate_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_core_init_rate_req(%struct.clk_core* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca %struct.clk_core*, align 8
  %4 = alloca %struct.clk_rate_request*, align 8
  %5 = alloca %struct.clk_core*, align 8
  store %struct.clk_core* %0, %struct.clk_core** %3, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %4, align 8
  %6 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %7 = icmp ne %struct.clk_core* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %10 = icmp ne %struct.clk_rate_request* %9, null
  %11 = xor i1 %10, true
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i1 [ true, %2 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %40

18:                                               ; preds = %12
  %19 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %20 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %19, i32 0, i32 2
  %21 = load %struct.clk_core*, %struct.clk_core** %20, align 8
  store %struct.clk_core* %21, %struct.clk_core** %5, align 8
  %22 = load %struct.clk_core*, %struct.clk_core** %5, align 8
  %23 = icmp ne %struct.clk_core* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %18
  %25 = load %struct.clk_core*, %struct.clk_core** %5, align 8
  %26 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %29 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load %struct.clk_core*, %struct.clk_core** %5, align 8
  %31 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %34 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %40

35:                                               ; preds = %18
  %36 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %37 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %39 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  br label %40

40:                                               ; preds = %17, %35, %24
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
