; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache-rbtree.c_regcache_rbtree_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache-rbtree.c_regcache_rbtree_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32, %struct.TYPE_2__*, %struct.regcache_rbtree_ctx* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.regcache_rbtree_ctx = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*)* @regcache_rbtree_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regcache_rbtree_init(%struct.regmap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca %struct.regcache_rbtree_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.regcache_rbtree_ctx* @kmalloc(i32 16, i32 %7)
  %9 = load %struct.regmap*, %struct.regmap** %3, align 8
  %10 = getelementptr inbounds %struct.regmap, %struct.regmap* %9, i32 0, i32 2
  store %struct.regcache_rbtree_ctx* %8, %struct.regcache_rbtree_ctx** %10, align 8
  %11 = load %struct.regmap*, %struct.regmap** %3, align 8
  %12 = getelementptr inbounds %struct.regmap, %struct.regmap* %11, i32 0, i32 2
  %13 = load %struct.regcache_rbtree_ctx*, %struct.regcache_rbtree_ctx** %12, align 8
  %14 = icmp ne %struct.regcache_rbtree_ctx* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %64

18:                                               ; preds = %1
  %19 = load %struct.regmap*, %struct.regmap** %3, align 8
  %20 = getelementptr inbounds %struct.regmap, %struct.regmap* %19, i32 0, i32 2
  %21 = load %struct.regcache_rbtree_ctx*, %struct.regcache_rbtree_ctx** %20, align 8
  store %struct.regcache_rbtree_ctx* %21, %struct.regcache_rbtree_ctx** %4, align 8
  %22 = load i32, i32* @RB_ROOT, align 4
  %23 = load %struct.regcache_rbtree_ctx*, %struct.regcache_rbtree_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.regcache_rbtree_ctx, %struct.regcache_rbtree_ctx* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.regcache_rbtree_ctx*, %struct.regcache_rbtree_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.regcache_rbtree_ctx, %struct.regcache_rbtree_ctx* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %56, %18
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.regmap*, %struct.regmap** %3, align 8
  %30 = getelementptr inbounds %struct.regmap, %struct.regmap* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %27
  %34 = load %struct.regmap*, %struct.regmap** %3, align 8
  %35 = load %struct.regmap*, %struct.regmap** %3, align 8
  %36 = getelementptr inbounds %struct.regmap, %struct.regmap* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.regmap*, %struct.regmap** %3, align 8
  %44 = getelementptr inbounds %struct.regmap, %struct.regmap* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @regcache_rbtree_write(%struct.regmap* %34, i32 %42, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %33
  br label %60

55:                                               ; preds = %33
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %27

59:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %64

60:                                               ; preds = %54
  %61 = load %struct.regmap*, %struct.regmap** %3, align 8
  %62 = call i32 @regcache_rbtree_exit(%struct.regmap* %61)
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %59, %15
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.regcache_rbtree_ctx* @kmalloc(i32, i32) #1

declare dso_local i32 @regcache_rbtree_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @regcache_rbtree_exit(%struct.regmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
