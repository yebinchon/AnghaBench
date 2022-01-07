; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bounce.c_init_bounce_bioset.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bounce.c_init_bounce_bioset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@init_bounce_bioset.bounce_bs_setup = internal global i32 0, align 4
@bounce_bio_set = common dso_local global i32 0, align 4
@BIO_POOL_SIZE = common dso_local global i32 0, align 4
@BIOSET_NEED_BVECS = common dso_local global i32 0, align 4
@bounce_bio_split = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_bounce_bioset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_bounce_bioset() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @init_bounce_bioset.bounce_bs_setup, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %21

5:                                                ; preds = %0
  %6 = load i32, i32* @BIO_POOL_SIZE, align 4
  %7 = load i32, i32* @BIOSET_NEED_BVECS, align 4
  %8 = call i32 @bioset_init(i32* @bounce_bio_set, i32 %6, i32 0, i32 %7)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load i32, i32* @BIO_POOL_SIZE, align 4
  %12 = call i64 @bioset_integrity_create(i32* @bounce_bio_set, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = call i32 @BUG_ON(i32 1)
  br label %16

16:                                               ; preds = %14, %5
  %17 = load i32, i32* @BIO_POOL_SIZE, align 4
  %18 = call i32 @bioset_init(i32* @bounce_bio_split, i32 %17, i32 0, i32 0)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @BUG_ON(i32 %19)
  store i32 1, i32* @init_bounce_bioset.bounce_bs_setup, align 4
  br label %21

21:                                               ; preds = %16, %4
  ret void
}

declare dso_local i32 @bioset_init(i32*, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @bioset_integrity_create(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
