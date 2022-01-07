; ModuleID = '/home/carl/AnghaBench/git/extr_string-list.c_string_list_clear_func.c'
source_filename = "/home/carl/AnghaBench/git/extr_string-list.c_string_list_clear_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @string_list_clear_func(%struct.string_list* %0, i32 (i32, %struct.TYPE_4__*)* %1) #0 {
  %3 = alloca %struct.string_list*, align 8
  %4 = alloca i32 (i32, %struct.TYPE_4__*)*, align 8
  %5 = alloca i32, align 4
  store %struct.string_list* %0, %struct.string_list** %3, align 8
  store i32 (i32, %struct.TYPE_4__*)* %1, i32 (i32, %struct.TYPE_4__*)** %4, align 8
  %6 = load %struct.string_list*, %struct.string_list** %3, align 8
  %7 = getelementptr inbounds %struct.string_list, %struct.string_list* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %74

10:                                               ; preds = %2
  %11 = load i32 (i32, %struct.TYPE_4__*)*, i32 (i32, %struct.TYPE_4__*)** %4, align 8
  %12 = icmp ne i32 (i32, %struct.TYPE_4__*)* %11, null
  br i1 %12, label %13, label %43

13:                                               ; preds = %10
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %39, %13
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.string_list*, %struct.string_list** %3, align 8
  %17 = getelementptr inbounds %struct.string_list, %struct.string_list* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %14
  %21 = load i32 (i32, %struct.TYPE_4__*)*, i32 (i32, %struct.TYPE_4__*)** %4, align 8
  %22 = load %struct.string_list*, %struct.string_list** %3, align 8
  %23 = getelementptr inbounds %struct.string_list, %struct.string_list* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.string_list*, %struct.string_list** %3, align 8
  %31 = getelementptr inbounds %struct.string_list, %struct.string_list* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = call i32 %21(i32 %29, %struct.TYPE_4__* %37)
  br label %39

39:                                               ; preds = %20
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %14

42:                                               ; preds = %14
  br label %43

43:                                               ; preds = %42, %10
  %44 = load %struct.string_list*, %struct.string_list** %3, align 8
  %45 = getelementptr inbounds %struct.string_list, %struct.string_list* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %65, %48
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.string_list*, %struct.string_list** %3, align 8
  %52 = getelementptr inbounds %struct.string_list, %struct.string_list* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = load %struct.string_list*, %struct.string_list** %3, align 8
  %57 = getelementptr inbounds %struct.string_list, %struct.string_list* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = call i32 @free(%struct.TYPE_4__* %63)
  br label %65

65:                                               ; preds = %55
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %49

68:                                               ; preds = %49
  br label %69

69:                                               ; preds = %68, %43
  %70 = load %struct.string_list*, %struct.string_list** %3, align 8
  %71 = getelementptr inbounds %struct.string_list, %struct.string_list* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = call i32 @free(%struct.TYPE_4__* %72)
  br label %74

74:                                               ; preds = %69, %2
  %75 = load %struct.string_list*, %struct.string_list** %3, align 8
  %76 = getelementptr inbounds %struct.string_list, %struct.string_list* %75, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %76, align 8
  %77 = load %struct.string_list*, %struct.string_list** %3, align 8
  %78 = getelementptr inbounds %struct.string_list, %struct.string_list* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  %79 = load %struct.string_list*, %struct.string_list** %3, align 8
  %80 = getelementptr inbounds %struct.string_list, %struct.string_list* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  ret void
}

declare dso_local i32 @free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
