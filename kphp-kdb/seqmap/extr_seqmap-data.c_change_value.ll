; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_change_value.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_change_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32, i32 }

@items_memory = common dso_local global i32 0, align 4
@NODE_TYPE_MINUS = common dso_local global i32 0, align 4
@NODE_TYPE_UNSURE = common dso_local global i32 0, align 4
@NODE_TYPE_PLUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @change_value(%struct.item* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.item*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.item* %0, %struct.item** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load %struct.item*, %struct.item** %4, align 8
  %8 = getelementptr inbounds %struct.item, %struct.item* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %3
  %12 = load %struct.item*, %struct.item** %4, align 8
  %13 = getelementptr inbounds %struct.item, %struct.item* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.item*, %struct.item** %4, align 8
  %16 = getelementptr inbounds %struct.item, %struct.item* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 4, %17
  %19 = call i32 @zzfree(i32 %14, i32 %18)
  %20 = load %struct.item*, %struct.item** %4, align 8
  %21 = getelementptr inbounds %struct.item, %struct.item* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 4, %22
  %24 = load i32, i32* @items_memory, align 4
  %25 = sub nsw i32 %24, %23
  store i32 %25, i32* @items_memory, align 4
  br label %40

26:                                               ; preds = %3
  %27 = load %struct.item*, %struct.item** %4, align 8
  %28 = call i32 @NODE_TYPE(%struct.item* %27)
  %29 = load i32, i32* @NODE_TYPE_MINUS, align 4
  %30 = load i32, i32* @NODE_TYPE_UNSURE, align 4
  %31 = or i32 %29, %30
  %32 = icmp eq i32 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.item*, %struct.item** %4, align 8
  %36 = load i32, i32* @NODE_TYPE_PLUS, align 4
  %37 = load i32, i32* @NODE_TYPE_UNSURE, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @change_node_type(%struct.item* %35, i32 %38)
  br label %40

40:                                               ; preds = %26, %11
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.item*, %struct.item** %4, align 8
  %43 = getelementptr inbounds %struct.item, %struct.item* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %5, align 4
  %45 = mul nsw i32 4, %44
  %46 = call i32 @zzmalloc(i32 %45)
  %47 = load %struct.item*, %struct.item** %4, align 8
  %48 = getelementptr inbounds %struct.item, %struct.item* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.item*, %struct.item** %4, align 8
  %50 = getelementptr inbounds %struct.item, %struct.item* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %5, align 4
  %54 = mul nsw i32 4, %53
  %55 = call i32 @memcpy(i32 %51, i32* %52, i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = mul nsw i32 4, %56
  %58 = load i32, i32* @items_memory, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* @items_memory, align 4
  ret void
}

declare dso_local i32 @zzfree(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @NODE_TYPE(%struct.item*) #1

declare dso_local i32 @change_node_type(%struct.item*, i32) #1

declare dso_local i32 @zzmalloc(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
