; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_range_set_check_invariants.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_range_set_check_invariants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.range_set = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.range_set*)* @range_set_check_invariants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @range_set_check_invariants(%struct.range_set* %0) #0 {
  %2 = alloca %struct.range_set*, align 8
  %3 = alloca i32, align 4
  store %struct.range_set* %0, %struct.range_set** %2, align 8
  %4 = load %struct.range_set*, %struct.range_set** %2, align 8
  %5 = icmp ne %struct.range_set* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %78

7:                                                ; preds = %1
  %8 = load %struct.range_set*, %struct.range_set** %2, align 8
  %9 = getelementptr inbounds %struct.range_set, %struct.range_set* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %7
  %13 = load %struct.range_set*, %struct.range_set** %2, align 8
  %14 = getelementptr inbounds %struct.range_set, %struct.range_set* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.range_set*, %struct.range_set** %2, align 8
  %20 = getelementptr inbounds %struct.range_set, %struct.range_set* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %18, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  br label %28

28:                                               ; preds = %12, %7
  store i32 1, i32* %3, align 4
  br label %29

29:                                               ; preds = %75, %28
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.range_set*, %struct.range_set** %2, align 8
  %32 = getelementptr inbounds %struct.range_set, %struct.range_set* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %35, label %78

35:                                               ; preds = %29
  %36 = load %struct.range_set*, %struct.range_set** %2, align 8
  %37 = getelementptr inbounds %struct.range_set, %struct.range_set* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sub i32 %39, 1
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.range_set*, %struct.range_set** %2, align 8
  %46 = getelementptr inbounds %struct.range_set, %struct.range_set* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %44, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.range_set*, %struct.range_set** %2, align 8
  %57 = getelementptr inbounds %struct.range_set, %struct.range_set* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.range_set*, %struct.range_set** %2, align 8
  %65 = getelementptr inbounds %struct.range_set, %struct.range_set* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %63, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  br label %75

75:                                               ; preds = %35
  %76 = load i32, i32* %3, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %29

78:                                               ; preds = %6, %29
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
