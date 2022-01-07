; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_init_extra_mask.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_init_extra_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@index_extra_mask = common dso_local global i32 0, align 4
@tree_nodes = common dso_local global i32 0, align 4
@incore_messages = common dso_local global i32 0, align 4
@write_extra_mask = common dso_local global i32 0, align 4
@read_extra_mask = common dso_local global i32 0, align 4
@MAX_EXTRA_MASK = common dso_local global i32 0, align 4
@extra_ints = common dso_local global i32 0, align 4
@text_shift = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @init_extra_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_extra_mask(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @index_extra_mask, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* @tree_nodes, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = load i32, i32* @incore_messages, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br label %12

12:                                               ; preds = %8, %5, %1
  %13 = phi i1 [ false, %5 ], [ false, %1 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* %2, align 4
  store i32 %16, i32* @write_extra_mask, align 4
  store i32 %16, i32* @read_extra_mask, align 4
  store i32 %16, i32* @index_extra_mask, align 4
  %17 = load i32, i32* @index_extra_mask, align 4
  %18 = load i32, i32* @MAX_EXTRA_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* @index_extra_mask, align 4
  %26 = call i32 @extra_mask_intcount(i32 %25)
  store i32 %26, i32* @extra_ints, align 4
  %27 = load i32, i32* @extra_ints, align 4
  %28 = mul nsw i32 %27, 4
  store i32 %28, i32* @text_shift, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @extra_mask_intcount(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
