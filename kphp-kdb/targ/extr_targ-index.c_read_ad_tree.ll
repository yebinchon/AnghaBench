; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_read_ad_tree.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-index.c_read_ad_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@idx_rptr = common dso_local global i32 0, align 4
@targeting_disabled = common dso_local global i32 0, align 4
@AdSpace = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_ad_tree(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp sge i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = mul nsw i32 %13, 8
  %15 = call i32 @idx_load_next(i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = mul nsw i32 %16, 8
  %18 = icmp sge i32 %15, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* @idx_rptr, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %4, align 8
  %24 = load i32, i32* %3, align 4
  %25 = mul nsw i32 %24, 8
  %26 = load i32, i32* @idx_rptr, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* @idx_rptr, align 4
  %28 = load i32, i32* @targeting_disabled, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %12
  %31 = load i32, i32* @AdSpace, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @intree_build_from_list(i32 %31, i32* %32, i32 %33)
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %30, %11
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @idx_load_next(i32) #1

declare dso_local i32 @intree_build_from_list(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
