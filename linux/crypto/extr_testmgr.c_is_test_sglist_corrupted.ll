; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_is_test_sglist_corrupted.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_testmgr.c_is_test_sglist_corrupted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_sglist = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test_sglist*)* @is_test_sglist_corrupted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_test_sglist_corrupted(%struct.test_sglist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.test_sglist*, align 8
  %4 = alloca i32, align 4
  store %struct.test_sglist* %0, %struct.test_sglist** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %69, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.test_sglist*, %struct.test_sglist** %3, align 8
  %8 = getelementptr inbounds %struct.test_sglist, %struct.test_sglist* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ult i32 %6, %9
  br i1 %10, label %11, label %72

11:                                               ; preds = %5
  %12 = load %struct.test_sglist*, %struct.test_sglist** %3, align 8
  %13 = getelementptr inbounds %struct.test_sglist, %struct.test_sglist* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.test_sglist*, %struct.test_sglist** %3, align 8
  %21 = getelementptr inbounds %struct.test_sglist, %struct.test_sglist* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %19, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %73

30:                                               ; preds = %11
  %31 = load %struct.test_sglist*, %struct.test_sglist** %3, align 8
  %32 = getelementptr inbounds %struct.test_sglist, %struct.test_sglist* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.test_sglist*, %struct.test_sglist** %3, align 8
  %40 = getelementptr inbounds %struct.test_sglist, %struct.test_sglist* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %38, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %73

49:                                               ; preds = %30
  %50 = load %struct.test_sglist*, %struct.test_sglist** %3, align 8
  %51 = getelementptr inbounds %struct.test_sglist, %struct.test_sglist* %50, i32 0, i32 2
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.test_sglist*, %struct.test_sglist** %3, align 8
  %59 = getelementptr inbounds %struct.test_sglist, %struct.test_sglist* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %57, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %49
  store i32 1, i32* %2, align 4
  br label %73

68:                                               ; preds = %49
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %4, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %5

72:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %67, %48, %29
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
