; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_utils.c_read_restore.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_utils.c_read_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_5__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_restore(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %8, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %70, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %73

14:                                               ; preds = %10
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @CONV_ID(i32 %23)
  %25 = call %struct.TYPE_5__* @restore_list_alloc(i32 %24)
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %8, align 8
  br label %30

26:                                               ; preds = %14
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @restore_list_push_back(%struct.TYPE_5__* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %35, %30
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = icmp ne %struct.TYPE_5__* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = icmp ne %struct.TYPE_5__* %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32*, i32** %6, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32* @map_int_vptr_get(i32* %55, i32 %58)
  %60 = icmp eq i32* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.TYPE_5__** @map_int_vptr_add(i32* %64, i32 %67)
  store %struct.TYPE_5__* %63, %struct.TYPE_5__** %68, align 8
  br label %69

69:                                               ; preds = %43, %35
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %10

73:                                               ; preds = %10
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 4, %75
  %77 = trunc i64 %76 to i32
  ret i32 %77
}

declare dso_local %struct.TYPE_5__* @restore_list_alloc(i32) #1

declare dso_local i32 @CONV_ID(i32) #1

declare dso_local i32 @restore_list_push_back(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @map_int_vptr_get(i32*, i32) #1

declare dso_local %struct.TYPE_5__** @map_int_vptr_add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
