; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache-rbtree.c_regcache_rbtree_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache-rbtree.c_regcache_rbtree_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.regcache_rbtree_node = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i32, i32*)* @regcache_rbtree_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regcache_rbtree_read(%struct.regmap* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.regcache_rbtree_node*, align 8
  %9 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.regmap*, %struct.regmap** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.regcache_rbtree_node* @regcache_rbtree_lookup(%struct.regmap* %10, i32 %11)
  store %struct.regcache_rbtree_node* %12, %struct.regcache_rbtree_node** %8, align 8
  %13 = load %struct.regcache_rbtree_node*, %struct.regcache_rbtree_node** %8, align 8
  %14 = icmp ne %struct.regcache_rbtree_node* %13, null
  br i1 %14, label %15, label %40

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.regcache_rbtree_node*, %struct.regcache_rbtree_node** %8, align 8
  %18 = getelementptr inbounds %struct.regcache_rbtree_node, %struct.regcache_rbtree_node* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub i32 %16, %19
  %21 = load %struct.regmap*, %struct.regmap** %5, align 8
  %22 = getelementptr inbounds %struct.regmap, %struct.regmap* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = udiv i32 %20, %23
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.regcache_rbtree_node*, %struct.regcache_rbtree_node** %8, align 8
  %27 = getelementptr inbounds %struct.regcache_rbtree_node, %struct.regcache_rbtree_node* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @test_bit(i32 %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %15
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %44

34:                                               ; preds = %15
  %35 = load %struct.regmap*, %struct.regmap** %5, align 8
  %36 = load %struct.regcache_rbtree_node*, %struct.regcache_rbtree_node** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @regcache_rbtree_get_register(%struct.regmap* %35, %struct.regcache_rbtree_node* %36, i32 %37)
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  br label %43

40:                                               ; preds = %3
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %44

43:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %40, %31
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.regcache_rbtree_node* @regcache_rbtree_lookup(%struct.regmap*, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @regcache_rbtree_get_register(%struct.regmap*, %struct.regcache_rbtree_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
