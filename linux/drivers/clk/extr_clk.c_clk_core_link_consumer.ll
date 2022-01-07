; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_link_consumer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_link_consumer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_core = type { i32 }
%struct.clk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_core*, %struct.clk*)* @clk_core_link_consumer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_core_link_consumer(%struct.clk_core* %0, %struct.clk* %1) #0 {
  %3 = alloca %struct.clk_core*, align 8
  %4 = alloca %struct.clk*, align 8
  store %struct.clk_core* %0, %struct.clk_core** %3, align 8
  store %struct.clk* %1, %struct.clk** %4, align 8
  %5 = call i32 (...) @clk_prepare_lock()
  %6 = load %struct.clk*, %struct.clk** %4, align 8
  %7 = getelementptr inbounds %struct.clk, %struct.clk* %6, i32 0, i32 0
  %8 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %9 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %8, i32 0, i32 0
  %10 = call i32 @hlist_add_head(i32* %7, i32* %9)
  %11 = call i32 (...) @clk_prepare_unlock()
  ret void
}

declare dso_local i32 @clk_prepare_lock(...) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @clk_prepare_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
