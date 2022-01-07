; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_bio_alloc_drbd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_bio_alloc_drbd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }

@drbd_md_io_bio_set = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bio* @bio_alloc_drbd(i32 %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bio*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i32 @bioset_initialized(i32* @drbd_md_io_bio_set)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.bio* @bio_alloc(i32 %8, i32 1)
  store %struct.bio* %9, %struct.bio** %2, align 8
  br label %18

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.bio* @bio_alloc_bioset(i32 %11, i32 1, i32* @drbd_md_io_bio_set)
  store %struct.bio* %12, %struct.bio** %4, align 8
  %13 = load %struct.bio*, %struct.bio** %4, align 8
  %14 = icmp ne %struct.bio* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store %struct.bio* null, %struct.bio** %2, align 8
  br label %18

16:                                               ; preds = %10
  %17 = load %struct.bio*, %struct.bio** %4, align 8
  store %struct.bio* %17, %struct.bio** %2, align 8
  br label %18

18:                                               ; preds = %16, %15, %7
  %19 = load %struct.bio*, %struct.bio** %2, align 8
  ret %struct.bio* %19
}

declare dso_local i32 @bioset_initialized(i32*) #1

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local %struct.bio* @bio_alloc_bioset(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
