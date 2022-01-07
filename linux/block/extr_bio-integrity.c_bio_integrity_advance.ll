; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio-integrity.c_bio_integrity_advance.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio-integrity.c_bio_integrity_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.bio_integrity_payload = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.blk_integrity = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bio_integrity_advance(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bio_integrity_payload*, align 8
  %6 = alloca %struct.blk_integrity*, align 8
  %7 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bio*, %struct.bio** %3, align 8
  %9 = call %struct.bio_integrity_payload* @bio_integrity(%struct.bio* %8)
  store %struct.bio_integrity_payload* %9, %struct.bio_integrity_payload** %5, align 8
  %10 = load %struct.bio*, %struct.bio** %3, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.blk_integrity* @blk_get_integrity(i32 %12)
  store %struct.blk_integrity* %13, %struct.blk_integrity** %6, align 8
  %14 = load %struct.blk_integrity*, %struct.blk_integrity** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = lshr i32 %15, 9
  %17 = call i32 @bio_integrity_bytes(%struct.blk_integrity* %14, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = lshr i32 %18, 9
  %20 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %5, align 8
  %21 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add i32 %23, %19
  store i32 %24, i32* %22, align 4
  %25 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %5, align 8
  %26 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %5, align 8
  %29 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %28, i32 0, i32 0
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @bvec_iter_advance(i32 %27, %struct.TYPE_2__* %29, i32 %30)
  ret void
}

declare dso_local %struct.bio_integrity_payload* @bio_integrity(%struct.bio*) #1

declare dso_local %struct.blk_integrity* @blk_get_integrity(i32) #1

declare dso_local i32 @bio_integrity_bytes(%struct.blk_integrity*, i32) #1

declare dso_local i32 @bvec_iter_advance(i32, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
