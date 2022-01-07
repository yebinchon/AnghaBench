; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-core.c_blk_partition_remap.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-core.c_blk_partition_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.hd_struct = type { i64 }

@EIO = common dso_local global i32 0, align 4
@REQ_OP_ZONE_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bio*)* @blk_partition_remap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_partition_remap(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.hd_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load i32, i32* @EIO, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load %struct.bio*, %struct.bio** %2, align 8
  %9 = getelementptr inbounds %struct.bio, %struct.bio* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = load %struct.bio*, %struct.bio** %2, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call %struct.hd_struct* @__disk_get_part(%struct.TYPE_4__* %10, i64 %13)
  store %struct.hd_struct* %14, %struct.hd_struct** %3, align 8
  %15 = load %struct.hd_struct*, %struct.hd_struct** %3, align 8
  %16 = icmp ne %struct.hd_struct* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %84

22:                                               ; preds = %1
  %23 = load %struct.hd_struct*, %struct.hd_struct** %3, align 8
  %24 = load %struct.bio*, %struct.bio** %2, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @should_fail_request(%struct.hd_struct* %23, i32 %27)
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %84

32:                                               ; preds = %22
  %33 = load %struct.bio*, %struct.bio** %2, align 8
  %34 = load %struct.hd_struct*, %struct.hd_struct** %3, align 8
  %35 = call i32 @bio_check_ro(%struct.bio* %33, %struct.hd_struct* %34)
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %84

39:                                               ; preds = %32
  %40 = load %struct.bio*, %struct.bio** %2, align 8
  %41 = call i64 @bio_sectors(%struct.bio* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load %struct.bio*, %struct.bio** %2, align 8
  %45 = call i64 @bio_op(%struct.bio* %44)
  %46 = load i64, i64* @REQ_OP_ZONE_RESET, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %81

48:                                               ; preds = %43, %39
  %49 = load %struct.bio*, %struct.bio** %2, align 8
  %50 = load %struct.hd_struct*, %struct.hd_struct** %3, align 8
  %51 = call i32 @part_nr_sects_read(%struct.hd_struct* %50)
  %52 = call i64 @bio_check_eod(%struct.bio* %49, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %84

55:                                               ; preds = %48
  %56 = load %struct.hd_struct*, %struct.hd_struct** %3, align 8
  %57 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.bio*, %struct.bio** %2, align 8
  %60 = getelementptr inbounds %struct.bio, %struct.bio* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, %58
  store i64 %63, i64* %61, align 8
  %64 = load %struct.bio*, %struct.bio** %2, align 8
  %65 = getelementptr inbounds %struct.bio, %struct.bio* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.bio*, %struct.bio** %2, align 8
  %70 = load %struct.hd_struct*, %struct.hd_struct** %3, align 8
  %71 = call i32 @part_devt(%struct.hd_struct* %70)
  %72 = load %struct.bio*, %struct.bio** %2, align 8
  %73 = getelementptr inbounds %struct.bio, %struct.bio* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.hd_struct*, %struct.hd_struct** %3, align 8
  %77 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %75, %78
  %80 = call i32 @trace_block_bio_remap(i32 %68, %struct.bio* %69, i32 %71, i64 %79)
  br label %81

81:                                               ; preds = %55, %43
  %82 = load %struct.bio*, %struct.bio** %2, align 8
  %83 = getelementptr inbounds %struct.bio, %struct.bio* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %81, %54, %38, %31, %21
  %85 = call i32 (...) @rcu_read_unlock()
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.hd_struct* @__disk_get_part(%struct.TYPE_4__*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @should_fail_request(%struct.hd_struct*, i32) #1

declare dso_local i32 @bio_check_ro(%struct.bio*, %struct.hd_struct*) #1

declare dso_local i64 @bio_sectors(%struct.bio*) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i64 @bio_check_eod(%struct.bio*, i32) #1

declare dso_local i32 @part_nr_sects_read(%struct.hd_struct*) #1

declare dso_local i32 @trace_block_bio_remap(i32, %struct.bio*, i32, i64) #1

declare dso_local i32 @part_devt(%struct.hd_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
