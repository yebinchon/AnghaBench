; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_default_act_free.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_default_act_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_act_extra = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_default_act_free(%struct.tl_act_extra* %0) #0 {
  %2 = alloca %struct.tl_act_extra*, align 8
  store %struct.tl_act_extra* %0, %struct.tl_act_extra** %2, align 8
  %3 = load %struct.tl_act_extra*, %struct.tl_act_extra** %2, align 8
  %4 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @tl_query_header_delete(i32 %5)
  %7 = load %struct.tl_act_extra*, %struct.tl_act_extra** %2, align 8
  %8 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %28

13:                                               ; preds = %1
  %14 = load %struct.tl_act_extra*, %struct.tl_act_extra** %2, align 8
  %15 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 2
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.tl_act_extra*, %struct.tl_act_extra** %2, align 8
  %21 = call i32 @free(%struct.tl_act_extra* %20)
  br label %28

22:                                               ; preds = %13
  %23 = load %struct.tl_act_extra*, %struct.tl_act_extra** %2, align 8
  %24 = load %struct.tl_act_extra*, %struct.tl_act_extra** %2, align 8
  %25 = getelementptr inbounds %struct.tl_act_extra, %struct.tl_act_extra* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @zfree(%struct.tl_act_extra* %23, i32 %26)
  br label %28

28:                                               ; preds = %12, %22, %19
  ret void
}

declare dso_local i32 @tl_query_header_delete(i32) #1

declare dso_local i32 @free(%struct.tl_act_extra*) #1

declare dso_local i32 @zfree(%struct.tl_act_extra*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
