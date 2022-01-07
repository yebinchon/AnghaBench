; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_date.c_pending_number.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_date.c_pending_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tm*, i32*)* @pending_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pending_number(%struct.tm* %0, i32* %1) #0 {
  %3 = alloca %struct.tm*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %76

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.tm*, %struct.tm** %3, align 8
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 32
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.tm*, %struct.tm** %3, align 8
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %75

23:                                               ; preds = %16, %10
  %24 = load %struct.tm*, %struct.tm** %3, align 8
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 13
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load %struct.tm*, %struct.tm** %3, align 8
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %74

36:                                               ; preds = %28, %23
  %37 = load %struct.tm*, %struct.tm** %3, align 8
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = icmp sgt i32 %42, 1969
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 2100
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4
  %49 = sub nsw i32 %48, 1900
  %50 = load %struct.tm*, %struct.tm** %3, align 8
  %51 = getelementptr inbounds %struct.tm, %struct.tm* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  br label %72

52:                                               ; preds = %44, %41
  %53 = load i32, i32* %5, align 4
  %54 = icmp sgt i32 %53, 69
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %56, 100
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.tm*, %struct.tm** %3, align 8
  %61 = getelementptr inbounds %struct.tm, %struct.tm* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  br label %71

62:                                               ; preds = %55, %52
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 38
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 100, %66
  %68 = load %struct.tm*, %struct.tm** %3, align 8
  %69 = getelementptr inbounds %struct.tm, %struct.tm* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %65, %62
  br label %71

71:                                               ; preds = %70, %58
  br label %72

72:                                               ; preds = %71, %47
  br label %73

73:                                               ; preds = %72, %36
  br label %74

74:                                               ; preds = %73, %31
  br label %75

75:                                               ; preds = %74, %19
  br label %76

76:                                               ; preds = %75, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
