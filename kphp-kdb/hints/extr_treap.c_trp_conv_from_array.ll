; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_treap.c_trp_conv_from_array.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_treap.c_trp_conv_from_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_4__*, %struct.TYPE_4__* }

@trp_conv_from_array.stack = internal global [600 x %struct.TYPE_4__*] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @trp_conv_from_array(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** getelementptr inbounds ([600 x %struct.TYPE_4__*], [600 x %struct.TYPE_4__*]* @trp_conv_from_array.stack, i64 0, i64 0), align 16
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %76, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %79

12:                                               ; preds = %8
  %13 = call %struct.TYPE_4__* (...) @get_new_node()
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %7, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = call i64 (...) @my_rand()
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %25, align 8
  br label %26

26:                                               ; preds = %43, %12
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [600 x %struct.TYPE_4__*], [600 x %struct.TYPE_4__*]* @trp_conv_from_array.stack, i64 0, i64 %32
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %36, %39
  br label %41

41:                                               ; preds = %29, %26
  %42 = phi i1 [ false, %26 ], [ %40, %29 ]
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %5, align 4
  br label %26

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [600 x %struct.TYPE_4__*], [600 x %struct.TYPE_4__*]* @trp_conv_from_array.stack, i64 0, i64 %52
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %58, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [600 x %struct.TYPE_4__*], [600 x %struct.TYPE_4__*]* @trp_conv_from_array.stack, i64 0, i64 %62
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  store %struct.TYPE_4__* %59, %struct.TYPE_4__** %65, align 8
  br label %70

66:                                               ; preds = %46
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds ([600 x %struct.TYPE_4__*], [600 x %struct.TYPE_4__*]* @trp_conv_from_array.stack, i64 0, i64 0), align 16
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  store %struct.TYPE_4__* %67, %struct.TYPE_4__** %69, align 8
  br label %70

70:                                               ; preds = %66, %49
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds [600 x %struct.TYPE_4__*], [600 x %struct.TYPE_4__*]* @trp_conv_from_array.stack, i64 0, i64 %74
  store %struct.TYPE_4__* %71, %struct.TYPE_4__** %75, align 8
  br label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %8

79:                                               ; preds = %8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds ([600 x %struct.TYPE_4__*], [600 x %struct.TYPE_4__*]* @trp_conv_from_array.stack, i64 0, i64 0), align 16
  ret %struct.TYPE_4__* %80
}

declare dso_local %struct.TYPE_4__* @get_new_node(...) #1

declare dso_local i64 @my_rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
