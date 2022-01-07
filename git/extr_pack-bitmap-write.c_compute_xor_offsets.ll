; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap-write.c_compute_xor_offsets.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap-write.c_compute_xor_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.bitmapped_commit* }
%struct.bitmapped_commit = type { i32, %struct.ewah_bitmap*, %struct.ewah_bitmap* }
%struct.ewah_bitmap = type { i64 }

@compute_xor_offsets.MAX_XOR_OFFSET_SEARCH = internal constant i32 10, align 4
@writer = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @compute_xor_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_xor_offsets() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmapped_commit*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ewah_bitmap*, align 8
  %6 = alloca %struct.ewah_bitmap*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %69, %0
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @writer, i32 0, i32 0), align 8
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %78

12:                                               ; preds = %8
  %13 = load %struct.bitmapped_commit*, %struct.bitmapped_commit** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @writer, i32 0, i32 1), align 8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.bitmapped_commit, %struct.bitmapped_commit* %13, i64 %15
  store %struct.bitmapped_commit* %16, %struct.bitmapped_commit** %3, align 8
  store i32 0, i32* %4, align 4
  %17 = load %struct.bitmapped_commit*, %struct.bitmapped_commit** %3, align 8
  %18 = getelementptr inbounds %struct.bitmapped_commit, %struct.bitmapped_commit* %17, i32 0, i32 2
  %19 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %18, align 8
  store %struct.ewah_bitmap* %19, %struct.ewah_bitmap** %5, align 8
  store i32 1, i32* %1, align 4
  br label %20

20:                                               ; preds = %66, %12
  %21 = load i32, i32* %1, align 4
  %22 = icmp sle i32 %21, 10
  br i1 %22, label %23, label %69

23:                                               ; preds = %20
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* %1, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %69

30:                                               ; preds = %23
  %31 = call %struct.ewah_bitmap* (...) @ewah_pool_new()
  store %struct.ewah_bitmap* %31, %struct.ewah_bitmap** %6, align 8
  %32 = load %struct.bitmapped_commit*, %struct.bitmapped_commit** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @writer, i32 0, i32 1), align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.bitmapped_commit, %struct.bitmapped_commit* %32, i64 %34
  %36 = getelementptr inbounds %struct.bitmapped_commit, %struct.bitmapped_commit* %35, i32 0, i32 2
  %37 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %36, align 8
  %38 = load %struct.bitmapped_commit*, %struct.bitmapped_commit** %3, align 8
  %39 = getelementptr inbounds %struct.bitmapped_commit, %struct.bitmapped_commit* %38, i32 0, i32 2
  %40 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %39, align 8
  %41 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %6, align 8
  %42 = call i32 @ewah_xor(%struct.ewah_bitmap* %37, %struct.ewah_bitmap* %40, %struct.ewah_bitmap* %41)
  %43 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %6, align 8
  %44 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %5, align 8
  %47 = getelementptr inbounds %struct.ewah_bitmap, %struct.ewah_bitmap* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %45, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %30
  %51 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %5, align 8
  %52 = load %struct.bitmapped_commit*, %struct.bitmapped_commit** %3, align 8
  %53 = getelementptr inbounds %struct.bitmapped_commit, %struct.bitmapped_commit* %52, i32 0, i32 2
  %54 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %53, align 8
  %55 = icmp ne %struct.ewah_bitmap* %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %5, align 8
  %58 = call i32 @ewah_pool_free(%struct.ewah_bitmap* %57)
  br label %59

59:                                               ; preds = %56, %50
  %60 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %6, align 8
  store %struct.ewah_bitmap* %60, %struct.ewah_bitmap** %5, align 8
  %61 = load i32, i32* %1, align 4
  store i32 %61, i32* %4, align 4
  br label %65

62:                                               ; preds = %30
  %63 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %6, align 8
  %64 = call i32 @ewah_pool_free(%struct.ewah_bitmap* %63)
  br label %65

65:                                               ; preds = %62, %59
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %1, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %1, align 4
  br label %20

69:                                               ; preds = %29, %20
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.bitmapped_commit*, %struct.bitmapped_commit** %3, align 8
  %72 = getelementptr inbounds %struct.bitmapped_commit, %struct.bitmapped_commit* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %5, align 8
  %74 = load %struct.bitmapped_commit*, %struct.bitmapped_commit** %3, align 8
  %75 = getelementptr inbounds %struct.bitmapped_commit, %struct.bitmapped_commit* %74, i32 0, i32 1
  store %struct.ewah_bitmap* %73, %struct.ewah_bitmap** %75, align 8
  %76 = load i32, i32* %2, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %2, align 4
  br label %8

78:                                               ; preds = %8
  ret void
}

declare dso_local %struct.ewah_bitmap* @ewah_pool_new(...) #1

declare dso_local i32 @ewah_xor(%struct.ewah_bitmap*, %struct.ewah_bitmap*, %struct.ewah_bitmap*) #1

declare dso_local i32 @ewah_pool_free(%struct.ewah_bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
