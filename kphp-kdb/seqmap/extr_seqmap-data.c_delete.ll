; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_delete.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32 }

@NODE_TYPE_MINUS = common dso_local global i32 0, align 4
@NODE_TYPE_UNSURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delete(i32 %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.item*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sle i32 %14, 255
  br label %16

16:                                               ; preds = %13, %4
  %17 = phi i1 [ false, %4 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = call %struct.item* @preload_key(i32 %20, i32* %21, i32 0)
  store %struct.item* %22, %struct.item** %9, align 8
  %23 = load %struct.item*, %struct.item** %9, align 8
  %24 = call i32 @delete_time(%struct.item* %23)
  %25 = load %struct.item*, %struct.item** %9, align 8
  %26 = getelementptr inbounds %struct.item, %struct.item* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.item*, %struct.item** %9, align 8
  %29 = getelementptr inbounds %struct.item, %struct.item* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %16
  %33 = load %struct.item*, %struct.item** %9, align 8
  %34 = call i32 @delete_value(%struct.item* %33)
  br label %48

35:                                               ; preds = %16
  %36 = load %struct.item*, %struct.item** %9, align 8
  %37 = getelementptr inbounds %struct.item, %struct.item* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, -3
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* @NODE_TYPE_MINUS, align 4
  %44 = load i32, i32* @NODE_TYPE_UNSURE, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @alloc_item(i32 %41, i32* %42, i32 %45, i32 -1)
  br label %47

47:                                               ; preds = %40, %35
  br label %48

48:                                               ; preds = %47, %32
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, -1
  %51 = zext i1 %50 to i32
  ret i32 %51
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.item* @preload_key(i32, i32*, i32) #1

declare dso_local i32 @delete_time(%struct.item*) #1

declare dso_local i32 @delete_value(%struct.item*) #1

declare dso_local i32 @alloc_item(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
