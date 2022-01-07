; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache-rbtree.c_regcache_rbtree_get_base_top_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache-rbtree.c_regcache_rbtree_get_base_top_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.regcache_rbtree_node = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regmap*, %struct.regcache_rbtree_node*, i32*, i32*)* @regcache_rbtree_get_base_top_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @regcache_rbtree_get_base_top_reg(%struct.regmap* %0, %struct.regcache_rbtree_node* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.regcache_rbtree_node*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.regmap* %0, %struct.regmap** %5, align 8
  store %struct.regcache_rbtree_node* %1, %struct.regcache_rbtree_node** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.regcache_rbtree_node*, %struct.regcache_rbtree_node** %6, align 8
  %10 = getelementptr inbounds %struct.regcache_rbtree_node, %struct.regcache_rbtree_node* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %7, align 8
  store i32 %11, i32* %12, align 4
  %13 = load %struct.regcache_rbtree_node*, %struct.regcache_rbtree_node** %6, align 8
  %14 = getelementptr inbounds %struct.regcache_rbtree_node, %struct.regcache_rbtree_node* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.regcache_rbtree_node*, %struct.regcache_rbtree_node** %6, align 8
  %17 = getelementptr inbounds %struct.regcache_rbtree_node, %struct.regcache_rbtree_node* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  %20 = load %struct.regmap*, %struct.regmap** %5, align 8
  %21 = getelementptr inbounds %struct.regmap, %struct.regmap* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  %24 = add i32 %15, %23
  %25 = load i32*, i32** %8, align 8
  store i32 %24, i32* %25, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
