; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_blkcipher.c_blkcipher_done_fast.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_blkcipher.c_blkcipher_done_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_walk = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BLKCIPHER_WALK_COPY = common dso_local global i32 0, align 4
@BLKCIPHER_WALK_PHYS = common dso_local global i32 0, align 4
@BLKCIPHER_WALK_DIFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blkcipher_walk*, i32)* @blkcipher_done_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blkcipher_done_fast(%struct.blkcipher_walk* %0, i32 %1) #0 {
  %3 = alloca %struct.blkcipher_walk*, align 8
  %4 = alloca i32, align 4
  store %struct.blkcipher_walk* %0, %struct.blkcipher_walk** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %3, align 8
  %6 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @BLKCIPHER_WALK_COPY, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %3, align 8
  %13 = call i32 @blkcipher_map_dst(%struct.blkcipher_walk* %12)
  %14 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %3, align 8
  %15 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %3, align 8
  %20 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @memcpy(i32 %18, i32 %21, i32 %22)
  %24 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %3, align 8
  %25 = call i32 @blkcipher_unmap_dst(%struct.blkcipher_walk* %24)
  br label %47

26:                                               ; preds = %2
  %27 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %3, align 8
  %28 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BLKCIPHER_WALK_PHYS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %26
  %34 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %3, align 8
  %35 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BLKCIPHER_WALK_DIFF, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %3, align 8
  %42 = call i32 @blkcipher_unmap_dst(%struct.blkcipher_walk* %41)
  br label %43

43:                                               ; preds = %40, %33
  %44 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %3, align 8
  %45 = call i32 @blkcipher_unmap_src(%struct.blkcipher_walk* %44)
  br label %46

46:                                               ; preds = %43, %26
  br label %47

47:                                               ; preds = %46, %11
  %48 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %3, align 8
  %49 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %48, i32 0, i32 2
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @scatterwalk_advance(i32* %49, i32 %50)
  %52 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %3, align 8
  %53 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %52, i32 0, i32 1
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @scatterwalk_advance(i32* %53, i32 %54)
  ret void
}

declare dso_local i32 @blkcipher_map_dst(%struct.blkcipher_walk*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @blkcipher_unmap_dst(%struct.blkcipher_walk*) #1

declare dso_local i32 @blkcipher_unmap_src(%struct.blkcipher_walk*) #1

declare dso_local i32 @scatterwalk_advance(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
