; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_reparent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_reparent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_core = type { i32, %struct.clk_core*, i32, i32, %struct.clk_core* }

@clk_orphan_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_core*, %struct.clk_core*)* @clk_reparent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_reparent(%struct.clk_core* %0, %struct.clk_core* %1) #0 {
  %3 = alloca %struct.clk_core*, align 8
  %4 = alloca %struct.clk_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk_core* %0, %struct.clk_core** %3, align 8
  store %struct.clk_core* %1, %struct.clk_core** %4, align 8
  %7 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %8 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %11 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %10, i32 0, i32 2
  %12 = call i32 @hlist_del(i32* %11)
  %13 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %14 = icmp ne %struct.clk_core* %13, null
  br i1 %14, label %15, label %41

15:                                               ; preds = %2
  %16 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %17 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %20 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %19, i32 0, i32 4
  %21 = load %struct.clk_core*, %struct.clk_core** %20, align 8
  %22 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %23 = icmp eq %struct.clk_core* %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %26 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %25, i32 0, i32 4
  store %struct.clk_core* null, %struct.clk_core** %26, align 8
  br label %27

27:                                               ; preds = %24, %15
  %28 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %29 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %28, i32 0, i32 2
  %30 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %31 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %30, i32 0, i32 3
  %32 = call i32 @hlist_add_head(i32* %29, i32* %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @clk_core_update_orphan_status(%struct.clk_core* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %27
  br label %51

41:                                               ; preds = %2
  %42 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %43 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %42, i32 0, i32 2
  %44 = call i32 @hlist_add_head(i32* %43, i32* @clk_orphan_list)
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %49 = call i32 @clk_core_update_orphan_status(%struct.clk_core* %48, i32 1)
  br label %50

50:                                               ; preds = %47, %41
  br label %51

51:                                               ; preds = %50, %40
  %52 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %53 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %54 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %53, i32 0, i32 1
  store %struct.clk_core* %52, %struct.clk_core** %54, align 8
  ret void
}

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @clk_core_update_orphan_status(%struct.clk_core*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
