; ModuleID = '/home/carl/AnghaBench/git/extr_kwset.c_hasevery.c'
source_filename = "/home/carl/AnghaBench/git/extr_kwset.c_hasevery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i64, %struct.tree*, %struct.tree* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree*, %struct.tree*)* @hasevery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hasevery(%struct.tree* %0, %struct.tree* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tree*, align 8
  %5 = alloca %struct.tree*, align 8
  store %struct.tree* %0, %struct.tree** %4, align 8
  store %struct.tree* %1, %struct.tree** %5, align 8
  %6 = load %struct.tree*, %struct.tree** %5, align 8
  %7 = icmp ne %struct.tree* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %62

9:                                                ; preds = %2
  %10 = load %struct.tree*, %struct.tree** %4, align 8
  %11 = load %struct.tree*, %struct.tree** %5, align 8
  %12 = getelementptr inbounds %struct.tree, %struct.tree* %11, i32 0, i32 2
  %13 = load %struct.tree*, %struct.tree** %12, align 8
  %14 = call i32 @hasevery(%struct.tree* %10, %struct.tree* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %62

17:                                               ; preds = %9
  %18 = load %struct.tree*, %struct.tree** %4, align 8
  %19 = load %struct.tree*, %struct.tree** %5, align 8
  %20 = getelementptr inbounds %struct.tree, %struct.tree* %19, i32 0, i32 1
  %21 = load %struct.tree*, %struct.tree** %20, align 8
  %22 = call i32 @hasevery(%struct.tree* %18, %struct.tree* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %62

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %55, %25
  %27 = load %struct.tree*, %struct.tree** %4, align 8
  %28 = icmp ne %struct.tree* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.tree*, %struct.tree** %5, align 8
  %31 = getelementptr inbounds %struct.tree, %struct.tree* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.tree*, %struct.tree** %4, align 8
  %34 = getelementptr inbounds %struct.tree, %struct.tree* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br label %37

37:                                               ; preds = %29, %26
  %38 = phi i1 [ false, %26 ], [ %36, %29 ]
  br i1 %38, label %39, label %56

39:                                               ; preds = %37
  %40 = load %struct.tree*, %struct.tree** %5, align 8
  %41 = getelementptr inbounds %struct.tree, %struct.tree* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.tree*, %struct.tree** %4, align 8
  %44 = getelementptr inbounds %struct.tree, %struct.tree* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load %struct.tree*, %struct.tree** %4, align 8
  %49 = getelementptr inbounds %struct.tree, %struct.tree* %48, i32 0, i32 2
  %50 = load %struct.tree*, %struct.tree** %49, align 8
  store %struct.tree* %50, %struct.tree** %4, align 8
  br label %55

51:                                               ; preds = %39
  %52 = load %struct.tree*, %struct.tree** %4, align 8
  %53 = getelementptr inbounds %struct.tree, %struct.tree* %52, i32 0, i32 1
  %54 = load %struct.tree*, %struct.tree** %53, align 8
  store %struct.tree* %54, %struct.tree** %4, align 8
  br label %55

55:                                               ; preds = %51, %47
  br label %26

56:                                               ; preds = %37
  %57 = load %struct.tree*, %struct.tree** %4, align 8
  %58 = icmp ne %struct.tree* %57, null
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %56, %24, %16, %8
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
