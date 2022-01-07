; ModuleID = '/home/carl/AnghaBench/jq/src/extr_compile.c_nesting_level.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_compile.c_nesting_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bytecode = type { %struct.bytecode* }
%struct.TYPE_3__ = type { %struct.bytecode* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bytecode*, %struct.TYPE_3__*)* @nesting_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nesting_level(%struct.bytecode* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.bytecode*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  store %struct.bytecode* %0, %struct.bytecode** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.bytecode*, %struct.bytecode** %3, align 8
  %7 = icmp ne %struct.bytecode* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.bytecode*, %struct.bytecode** %13, align 8
  %15 = icmp ne %struct.bytecode* %14, null
  br label %16

16:                                               ; preds = %11, %8, %2
  %17 = phi i1 [ false, %8 ], [ false, %2 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  br label %20

20:                                               ; preds = %31, %16
  %21 = load %struct.bytecode*, %struct.bytecode** %3, align 8
  %22 = icmp ne %struct.bytecode* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.bytecode*, %struct.bytecode** %25, align 8
  %27 = load %struct.bytecode*, %struct.bytecode** %3, align 8
  %28 = icmp ne %struct.bytecode* %26, %27
  br label %29

29:                                               ; preds = %23, %20
  %30 = phi i1 [ false, %20 ], [ %28, %23 ]
  br i1 %30, label %31, label %37

31:                                               ; preds = %29
  %32 = load i64, i64* %5, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %5, align 8
  %34 = load %struct.bytecode*, %struct.bytecode** %3, align 8
  %35 = getelementptr inbounds %struct.bytecode, %struct.bytecode* %34, i32 0, i32 0
  %36 = load %struct.bytecode*, %struct.bytecode** %35, align 8
  store %struct.bytecode* %36, %struct.bytecode** %3, align 8
  br label %20

37:                                               ; preds = %29
  %38 = load %struct.bytecode*, %struct.bytecode** %3, align 8
  %39 = icmp ne %struct.bytecode* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.bytecode*, %struct.bytecode** %3, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load %struct.bytecode*, %struct.bytecode** %43, align 8
  %45 = icmp eq %struct.bytecode* %41, %44
  br label %46

46:                                               ; preds = %40, %37
  %47 = phi i1 [ false, %37 ], [ %45, %40 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i64, i64* %5, align 8
  ret i64 %50
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
