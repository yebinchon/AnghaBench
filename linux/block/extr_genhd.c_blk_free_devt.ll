; ModuleID = '/home/carl/AnghaBench/linux/block/extr_genhd.c_blk_free_devt.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_genhd.c_blk_free_devt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLOCK_EXT_MAJOR = common dso_local global i64 0, align 8
@ext_devt_lock = common dso_local global i32 0, align 4
@ext_devt_idr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_free_devt(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i64 @MKDEV(i32 0, i32 0)
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %19

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = call i64 @MAJOR(i64 %8)
  %10 = load i64, i64* @BLOCK_EXT_MAJOR, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = call i32 @spin_lock_bh(i32* @ext_devt_lock)
  %14 = load i64, i64* %2, align 8
  %15 = call i32 @MINOR(i64 %14)
  %16 = call i32 @blk_mangle_minor(i32 %15)
  %17 = call i32 @idr_remove(i32* @ext_devt_idr, i32 %16)
  %18 = call i32 @spin_unlock_bh(i32* @ext_devt_lock)
  br label %19

19:                                               ; preds = %6, %12, %7
  ret void
}

declare dso_local i64 @MKDEV(i32, i32) #1

declare dso_local i64 @MAJOR(i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @blk_mangle_minor(i32) #1

declare dso_local i32 @MINOR(i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
