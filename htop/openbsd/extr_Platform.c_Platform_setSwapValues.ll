; ModuleID = '/home/carl/AnghaBench/htop/openbsd/extr_Platform.c_Platform_setSwapValues.c'
source_filename = "/home/carl/AnghaBench/htop/openbsd/extr_Platform.c_Platform_setSwapValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64*, i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.swapent = type { i32, i32, i32 }

@SWAP_NSWAP = common dso_local global i32 0, align 4
@SWAP_STATS = common dso_local global i32 0, align 4
@SWF_ENABLE = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Platform_setSwapValues(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.swapent*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %3, align 8
  %14 = load i32, i32* @SWAP_NSWAP, align 4
  %15 = call i32 @swapctl(i32 %14, %struct.swapent* null, i32 0)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %90

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.swapent* @xCalloc(i32 %20, i32 12)
  store %struct.swapent* %21, %struct.swapent** %4, align 8
  %22 = load i32, i32* @SWAP_STATS, align 4
  %23 = load %struct.swapent*, %struct.swapent** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @swapctl(i32 %22, %struct.swapent* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load %struct.swapent*, %struct.swapent** %4, align 8
  %30 = call i32 @free(%struct.swapent* %29)
  br label %90

31:                                               ; preds = %19
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %72, %31
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %75

36:                                               ; preds = %32
  %37 = load %struct.swapent*, %struct.swapent** %4, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.swapent, %struct.swapent* %37, i64 %39
  %41 = getelementptr inbounds %struct.swapent, %struct.swapent* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SWF_ENABLE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %36
  %47 = load %struct.swapent*, %struct.swapent** %4, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.swapent, %struct.swapent* %47, i64 %49
  %51 = getelementptr inbounds %struct.swapent, %struct.swapent* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DEV_BSIZE, align 4
  %54 = sdiv i32 1024, %53
  %55 = sdiv i32 %52, %54
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %6, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %6, align 8
  %59 = load %struct.swapent*, %struct.swapent** %4, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.swapent, %struct.swapent* %59, i64 %61
  %63 = getelementptr inbounds %struct.swapent, %struct.swapent* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DEV_BSIZE, align 4
  %66 = sdiv i32 1024, %65
  %67 = sdiv i32 %64, %66
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %5, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %5, align 8
  br label %71

71:                                               ; preds = %46, %36
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %32

75:                                               ; preds = %32
  %76 = load i64, i64* %5, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i64 %76, i64* %80, align 8
  %81 = load i64, i64* %6, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 0
  store i64 %81, i64* %87, align 8
  %88 = load %struct.swapent*, %struct.swapent** %4, align 8
  %89 = call i32 @free(%struct.swapent* %88)
  br label %90

90:                                               ; preds = %75, %28, %18
  ret void
}

declare dso_local i32 @swapctl(i32, %struct.swapent*, i32) #1

declare dso_local %struct.swapent* @xCalloc(i32, i32) #1

declare dso_local i32 @free(%struct.swapent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
