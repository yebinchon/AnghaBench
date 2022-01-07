; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio-integrity.c_bio_integrity_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio-integrity.c_bio_integrity_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_integrity_payload = type { i32, i64, %struct.bio*, i64, i64 }
%struct.bio = type { i32, %struct.bio_integrity_payload*, %struct.bio_set* }
%struct.bio_set = type { i32, i32 }

@bip_inline_vecs = common dso_local global i32 0, align 4
@BIP_INLINE_VECS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REQ_INTEGRITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bio_integrity_payload* @bio_integrity_alloc(%struct.bio* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bio_integrity_payload*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bio_integrity_payload*, align 8
  %9 = alloca %struct.bio_set*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.bio* %0, %struct.bio** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.bio*, %struct.bio** %5, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 2
  %14 = load %struct.bio_set*, %struct.bio_set** %13, align 8
  store %struct.bio_set* %14, %struct.bio_set** %9, align 8
  %15 = load %struct.bio_set*, %struct.bio_set** %9, align 8
  %16 = icmp ne %struct.bio_set* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.bio_set*, %struct.bio_set** %9, align 8
  %19 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %18, i32 0, i32 0
  %20 = call i32 @mempool_initialized(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17, %3
  %23 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %8, align 8
  %24 = load i32, i32* @bip_inline_vecs, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @struct_size(%struct.bio_integrity_payload* %23, i32 %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.bio_integrity_payload* @kmalloc(i32 %26, i32 %27)
  store %struct.bio_integrity_payload* %28, %struct.bio_integrity_payload** %8, align 8
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %10, align 4
  br label %36

30:                                               ; preds = %17
  %31 = load %struct.bio_set*, %struct.bio_set** %9, align 8
  %32 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %31, i32 0, i32 0
  %33 = load i32, i32* %6, align 4
  %34 = call %struct.bio_integrity_payload* @mempool_alloc(i32* %32, i32 %33)
  store %struct.bio_integrity_payload* %34, %struct.bio_integrity_payload** %8, align 8
  %35 = load i32, i32* @BIP_INLINE_VECS, align 4
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %30, %22
  %37 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %8, align 8
  %38 = icmp ne %struct.bio_integrity_payload* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.bio_integrity_payload* @ERR_PTR(i32 %45)
  store %struct.bio_integrity_payload* %46, %struct.bio_integrity_payload** %4, align 8
  br label %104

47:                                               ; preds = %36
  %48 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %8, align 8
  %49 = call i32 @memset(%struct.bio_integrity_payload* %48, i32 0, i32 40)
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %47
  store i64 0, i64* %11, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.bio_set*, %struct.bio_set** %9, align 8
  %57 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %56, i32 0, i32 1
  %58 = call i64 @bvec_alloc(i32 %54, i32 %55, i64* %11, i32* %57)
  %59 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %8, align 8
  %60 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %59, i32 0, i32 4
  store i64 %58, i64* %60, align 8
  %61 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %8, align 8
  %62 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %53
  br label %96

66:                                               ; preds = %53
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @bvec_nr_vecs(i64 %67)
  %69 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %8, align 8
  %70 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %8, align 8
  %73 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  br label %83

74:                                               ; preds = %47
  %75 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %8, align 8
  %76 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %8, align 8
  %79 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %78, i32 0, i32 4
  store i64 %77, i64* %79, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %8, align 8
  %82 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %74, %66
  %84 = load %struct.bio*, %struct.bio** %5, align 8
  %85 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %8, align 8
  %86 = getelementptr inbounds %struct.bio_integrity_payload, %struct.bio_integrity_payload* %85, i32 0, i32 2
  store %struct.bio* %84, %struct.bio** %86, align 8
  %87 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %8, align 8
  %88 = load %struct.bio*, %struct.bio** %5, align 8
  %89 = getelementptr inbounds %struct.bio, %struct.bio* %88, i32 0, i32 1
  store %struct.bio_integrity_payload* %87, %struct.bio_integrity_payload** %89, align 8
  %90 = load i32, i32* @REQ_INTEGRITY, align 4
  %91 = load %struct.bio*, %struct.bio** %5, align 8
  %92 = getelementptr inbounds %struct.bio, %struct.bio* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %8, align 8
  store %struct.bio_integrity_payload* %95, %struct.bio_integrity_payload** %4, align 8
  br label %104

96:                                               ; preds = %65
  %97 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %8, align 8
  %98 = load %struct.bio_set*, %struct.bio_set** %9, align 8
  %99 = getelementptr inbounds %struct.bio_set, %struct.bio_set* %98, i32 0, i32 0
  %100 = call i32 @mempool_free(%struct.bio_integrity_payload* %97, i32* %99)
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  %103 = call %struct.bio_integrity_payload* @ERR_PTR(i32 %102)
  store %struct.bio_integrity_payload* %103, %struct.bio_integrity_payload** %4, align 8
  br label %104

104:                                              ; preds = %96, %83, %43
  %105 = load %struct.bio_integrity_payload*, %struct.bio_integrity_payload** %4, align 8
  ret %struct.bio_integrity_payload* %105
}

declare dso_local i32 @mempool_initialized(i32*) #1

declare dso_local %struct.bio_integrity_payload* @kmalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.bio_integrity_payload*, i32, i32) #1

declare dso_local %struct.bio_integrity_payload* @mempool_alloc(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.bio_integrity_payload* @ERR_PTR(i32) #1

declare dso_local i32 @memset(%struct.bio_integrity_payload*, i32, i32) #1

declare dso_local i64 @bvec_alloc(i32, i32, i64*, i32*) #1

declare dso_local i32 @bvec_nr_vecs(i64) #1

declare dso_local i32 @mempool_free(%struct.bio_integrity_payload*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
