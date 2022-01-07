; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_treap.c_trp_conv_from_array_rev.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_treap.c_trp_conv_from_array_rev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_4__*, %struct.TYPE_4__* }

@trp_conv_from_array_rev.stack = internal global [600 x %struct.TYPE_4__*] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @trp_conv_from_array_rev(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** getelementptr inbounds ([600 x %struct.TYPE_4__*], [600 x %struct.TYPE_4__*]* @trp_conv_from_array_rev.stack, i64 0, i64 0), align 16
  %8 = load i32, i32* %4, align 4
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %77, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %80

13:                                               ; preds = %10
  %14 = call %struct.TYPE_4__* (...) @get_new_node()
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %7, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = call i64 (...) @my_rand()
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %26, align 8
  br label %27

27:                                               ; preds = %44, %13
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [600 x %struct.TYPE_4__*], [600 x %struct.TYPE_4__*]* @trp_conv_from_array_rev.stack, i64 0, i64 %33
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br label %42

42:                                               ; preds = %30, %27
  %43 = phi i1 [ false, %27 ], [ %41, %30 ]
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %5, align 4
  br label %27

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [600 x %struct.TYPE_4__*], [600 x %struct.TYPE_4__*]* @trp_conv_from_array_rev.stack, i64 0, i64 %53
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  store %struct.TYPE_4__* %57, %struct.TYPE_4__** %59, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [600 x %struct.TYPE_4__*], [600 x %struct.TYPE_4__*]* @trp_conv_from_array_rev.stack, i64 0, i64 %63
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  store %struct.TYPE_4__* %60, %struct.TYPE_4__** %66, align 8
  br label %71

67:                                               ; preds = %47
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds ([600 x %struct.TYPE_4__*], [600 x %struct.TYPE_4__*]* @trp_conv_from_array_rev.stack, i64 0, i64 0), align 16
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store %struct.TYPE_4__* %68, %struct.TYPE_4__** %70, align 8
  br label %71

71:                                               ; preds = %67, %50
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds [600 x %struct.TYPE_4__*], [600 x %struct.TYPE_4__*]* @trp_conv_from_array_rev.stack, i64 0, i64 %75
  store %struct.TYPE_4__* %72, %struct.TYPE_4__** %76, align 8
  br label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %6, align 4
  br label %10

80:                                               ; preds = %10
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds ([600 x %struct.TYPE_4__*], [600 x %struct.TYPE_4__*]* @trp_conv_from_array_rev.stack, i64 0, i64 0), align 16
  ret %struct.TYPE_4__* %81
}

declare dso_local %struct.TYPE_4__* @get_new_node(...) #1

declare dso_local i64 @my_rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
