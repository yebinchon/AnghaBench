; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio-integrity.c___bio_integrity_endio.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio-integrity.c___bio_integrity_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32 }
%struct.blk_integrity = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.bio_integrity_payload = type { i32, i32 }

@REQ_OP_READ = common dso_local global i64 0, align 8
@BIP_BLOCK_INTEGRITY = common dso_local global i32 0, align 4
@bio_integrity_verify_fn = common dso_local global i32 0, align 4
@kintegrityd_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__bio_integrity_endio(%struct.bio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.blk_integrity*, align 8
  %5 = alloca %struct.bio_integrity_payload*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  %6 = load %struct.bio*, %struct.bio** %3, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.blk_integrity* @blk_get_integrity(i32 %8)
  store %struct.blk_integrity* %9, %struct.blk_integrity** %4, align 8
  %10 = load %struct.bio*, %struct.bio** %3, align 8
  %11 = call %struct.bio_integrity_payload* @bio_integrity(%struct.bio* %10)
  store %struct.bio_integrity_payload* %11, %struct.bio_integrity_payload** %5, align 8
  %12 = load %struct.bio*, %struct.bio** %3, align 8
  %13 = call i64 @bio_op(%struct.bio* %12)
  %14 = load i64, i64* @REQ_OP_READ, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %1
  %17 = load %struct.bio*, %struct.bio** %3, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %16
  %22 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %5, align 8
  %23 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @BIP_BLOCK_INTEGRITY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %21
  %29 = load %struct.blk_integrity*, %struct.blk_integrity** %4, align 8
  %30 = getelementptr inbounds %struct.blk_integrity, %struct.blk_integrity* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %5, align 8
  %37 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %36, i32 0, i32 1
  %38 = load i32, i32* @bio_integrity_verify_fn, align 4
  %39 = call i32 @INIT_WORK(i32* %37, i32 %38)
  %40 = load i32, i32* @kintegrityd_wq, align 4
  %41 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %5, align 8
  %42 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %41, i32 0, i32 1
  %43 = call i32 @queue_work(i32 %40, i32* %42)
  store i32 0, i32* %2, align 4
  br label %47

44:                                               ; preds = %28, %21, %16, %1
  %45 = load %struct.bio*, %struct.bio** %3, align 8
  %46 = call i32 @bio_integrity_free(%struct.bio* %45)
  store i32 1, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %35
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.blk_integrity* @blk_get_integrity(i32) #1

declare dso_local %struct.bio_integrity_payload* @bio_integrity(%struct.bio*) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @bio_integrity_free(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
