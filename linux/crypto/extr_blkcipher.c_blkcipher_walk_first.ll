; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_blkcipher.c_blkcipher_walk_first.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_blkcipher.c_blkcipher_walk_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i64 }
%struct.blkcipher_walk = type { i64, i32*, %struct.TYPE_2__, %struct.TYPE_2__, i64, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EDEADLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.blkcipher_walk*)* @blkcipher_walk_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkcipher_walk_first(%struct.blkcipher_desc* %0, %struct.blkcipher_walk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blkcipher_desc*, align 8
  %5 = alloca %struct.blkcipher_walk*, align 8
  %6 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %4, align 8
  store %struct.blkcipher_walk* %1, %struct.blkcipher_walk** %5, align 8
  %7 = call i32 (...) @in_irq()
  %8 = call i64 @WARN_ON_ONCE(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EDEADLK, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %74

13:                                               ; preds = %2
  %14 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %15 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %18 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %17, i32 0, i32 4
  store i64 %16, i64* %18, align 8
  %19 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %20 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %23 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 4
  %24 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %25 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = sext i32 %29 to i64
  %31 = call i64 @unlikely(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %74

34:                                               ; preds = %13
  %35 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %36 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %35, i32 0, i32 5
  store i32* null, i32** %36, align 8
  %37 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %38 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %41 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = and i64 %39, %42
  %44 = call i64 @unlikely(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %34
  %47 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %48 = call i32 @blkcipher_copy_iv(%struct.blkcipher_walk* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %74

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %34
  %55 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %56 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %55, i32 0, i32 3
  %57 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %58 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @scatterwalk_start(%struct.TYPE_2__* %56, i32 %60)
  %62 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %63 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %62, i32 0, i32 2
  %64 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %65 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @scatterwalk_start(%struct.TYPE_2__* %63, i32 %67)
  %69 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %70 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %69, i32 0, i32 1
  store i32* null, i32** %70, align 8
  %71 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %4, align 8
  %72 = load %struct.blkcipher_walk*, %struct.blkcipher_walk** %5, align 8
  %73 = call i32 @blkcipher_walk_next(%struct.blkcipher_desc* %71, %struct.blkcipher_walk* %72)
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %54, %51, %33, %10
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @in_irq(...) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @blkcipher_copy_iv(%struct.blkcipher_walk*) #1

declare dso_local i32 @scatterwalk_start(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @blkcipher_walk_next(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
