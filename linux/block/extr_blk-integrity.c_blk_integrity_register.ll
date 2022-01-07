; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-integrity.c_blk_integrity_register.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-integrity.c_blk_integrity_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.blk_integrity }
%struct.TYPE_3__ = type { i32 }
%struct.blk_integrity = type { i32, i32, i32, i32*, i64 }

@BLK_INTEGRITY_VERIFY = common dso_local global i32 0, align 4
@BLK_INTEGRITY_GENERATE = common dso_local global i32 0, align 4
@nop_profile = common dso_local global i32 0, align 4
@BDI_CAP_STABLE_WRITES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_integrity_register(%struct.gendisk* %0, %struct.blk_integrity* %1) #0 {
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca %struct.blk_integrity*, align 8
  %5 = alloca %struct.blk_integrity*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  store %struct.blk_integrity* %1, %struct.blk_integrity** %4, align 8
  %6 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %7 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store %struct.blk_integrity* %9, %struct.blk_integrity** %5, align 8
  %10 = load i32, i32* @BLK_INTEGRITY_VERIFY, align 4
  %11 = load i32, i32* @BLK_INTEGRITY_GENERATE, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.blk_integrity*, %struct.blk_integrity** %4, align 8
  %14 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %12, %15
  %17 = load %struct.blk_integrity*, %struct.blk_integrity** %5, align 8
  %18 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.blk_integrity*, %struct.blk_integrity** %4, align 8
  %20 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %30

24:                                               ; preds = %2
  %25 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %26 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call i32 @queue_logical_block_size(%struct.TYPE_4__* %27)
  %29 = call i64 @ilog2(i32 %28)
  br label %30

30:                                               ; preds = %24, %23
  %31 = phi i64 [ %21, %23 ], [ %29, %24 ]
  %32 = load %struct.blk_integrity*, %struct.blk_integrity** %5, align 8
  %33 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %32, i32 0, i32 4
  store i64 %31, i64* %33, align 8
  %34 = load %struct.blk_integrity*, %struct.blk_integrity** %4, align 8
  %35 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load %struct.blk_integrity*, %struct.blk_integrity** %4, align 8
  %40 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  br label %43

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i32* [ %41, %38 ], [ @nop_profile, %42 ]
  %45 = load %struct.blk_integrity*, %struct.blk_integrity** %5, align 8
  %46 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %45, i32 0, i32 3
  store i32* %44, i32** %46, align 8
  %47 = load %struct.blk_integrity*, %struct.blk_integrity** %4, align 8
  %48 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.blk_integrity*, %struct.blk_integrity** %5, align 8
  %51 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.blk_integrity*, %struct.blk_integrity** %4, align 8
  %53 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.blk_integrity*, %struct.blk_integrity** %5, align 8
  %56 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @BDI_CAP_STABLE_WRITES, align 4
  %58 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %59 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %57
  store i32 %65, i32* %63, align 4
  ret void
}

declare dso_local i64 @ilog2(i32) #1

declare dso_local i32 @queue_logical_block_size(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
