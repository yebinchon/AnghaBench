; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_b_out_rev.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_b_out_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_mode = common dso_local global i32 0, align 4
@OTree = common dso_local global i32 0, align 4
@R_end = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @b_out_rev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b_out_rev(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @R_mode, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 1984
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  store i32 -1, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i8* @listree_lookup_large(i32* @OTree, i32 %12, i32* %5)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @assert(i8* %14)
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, inttoptr (i64 -1 to i8*)
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @SMALL_NODE(i8* %19)
  %21 = call i32 @btree_out_node_rev(i32 %20)
  store i32 %21, i32* %2, align 4
  br label %29

22:                                               ; preds = %11
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @barray_out_node_rev(i32 0, i32 %23)
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @store_object_id_rev(i32* @R_end, i32 %26)
  br label %28

28:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %22, %18
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i8* @listree_lookup_large(i32*, i32, i32*) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @btree_out_node_rev(i32) #1

declare dso_local i32 @SMALL_NODE(i8*) #1

declare dso_local i32 @barray_out_node_rev(i32, i32) #1

declare dso_local i32 @store_object_id_rev(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
