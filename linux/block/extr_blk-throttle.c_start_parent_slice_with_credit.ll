; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_start_parent_slice_with_credit.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_start_parent_slice_with_credit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_grp = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.throtl_grp*, %struct.throtl_grp*, i32)* @start_parent_slice_with_credit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_parent_slice_with_credit(%struct.throtl_grp* %0, %struct.throtl_grp* %1, i32 %2) #0 {
  %4 = alloca %struct.throtl_grp*, align 8
  %5 = alloca %struct.throtl_grp*, align 8
  %6 = alloca i32, align 4
  store %struct.throtl_grp* %0, %struct.throtl_grp** %4, align 8
  store %struct.throtl_grp* %1, %struct.throtl_grp** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %8 = load i32, i32* %6, align 4
  %9 = call i64 @throtl_slice_used(%struct.throtl_grp* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %3
  %12 = load %struct.throtl_grp*, %struct.throtl_grp** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %15 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @throtl_start_new_slice_with_credit(%struct.throtl_grp* %12, i32 %13, i32 %20)
  br label %22

22:                                               ; preds = %11, %3
  ret void
}

declare dso_local i64 @throtl_slice_used(%struct.throtl_grp*, i32) #1

declare dso_local i32 @throtl_start_new_slice_with_credit(%struct.throtl_grp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
