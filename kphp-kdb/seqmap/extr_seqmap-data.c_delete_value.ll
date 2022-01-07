; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_delete_value.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_delete_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32, i32 }

@NODE_TYPE_PLUS = common dso_local global i32 0, align 4
@NODE_TYPE_UNSURE = common dso_local global i32 0, align 4
@items_memory = common dso_local global i32 0, align 4
@NODE_TYPE_MINUS = common dso_local global i32 0, align 4
@NODE_TYPE_SURE = common dso_local global i32 0, align 4
@NODE_TYPE_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_value(%struct.item* %0) #0 {
  %2 = alloca %struct.item*, align 8
  store %struct.item* %0, %struct.item** %2, align 8
  %3 = load %struct.item*, %struct.item** %2, align 8
  %4 = getelementptr inbounds %struct.item, %struct.item* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %78

7:                                                ; preds = %1
  %8 = load %struct.item*, %struct.item** %2, align 8
  %9 = call i32 @NODE_TYPE(%struct.item* %8)
  %10 = load i32, i32* @NODE_TYPE_PLUS, align 4
  %11 = load i32, i32* @NODE_TYPE_UNSURE, align 4
  %12 = or i32 %10, %11
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %7
  %15 = load %struct.item*, %struct.item** %2, align 8
  %16 = getelementptr inbounds %struct.item, %struct.item* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.item*, %struct.item** %2, align 8
  %19 = getelementptr inbounds %struct.item, %struct.item* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 4, %20
  %22 = call i32 @zzfree(i32 %17, i32 %21)
  %23 = load %struct.item*, %struct.item** %2, align 8
  %24 = getelementptr inbounds %struct.item, %struct.item* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 4, %25
  %27 = load i32, i32* @items_memory, align 4
  %28 = sub nsw i32 %27, %26
  store i32 %28, i32* @items_memory, align 4
  %29 = load %struct.item*, %struct.item** %2, align 8
  %30 = getelementptr inbounds %struct.item, %struct.item* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 4
  %31 = load %struct.item*, %struct.item** %2, align 8
  %32 = load i32, i32* @NODE_TYPE_MINUS, align 4
  %33 = load i32, i32* @NODE_TYPE_UNSURE, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @change_node_type(%struct.item* %31, i32 %34)
  br label %77

36:                                               ; preds = %7
  %37 = load %struct.item*, %struct.item** %2, align 8
  %38 = call i32 @NODE_TYPE(%struct.item* %37)
  %39 = load i32, i32* @NODE_TYPE_PLUS, align 4
  %40 = load i32, i32* @NODE_TYPE_SURE, align 4
  %41 = or i32 %39, %40
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.item*, %struct.item** %2, align 8
  %45 = call i32 @free_item(%struct.item* %44)
  br label %76

46:                                               ; preds = %36
  %47 = load %struct.item*, %struct.item** %2, align 8
  %48 = call i32 @NODE_TYPE(%struct.item* %47)
  %49 = load i32, i32* @NODE_TYPE_ZERO, align 4
  %50 = load i32, i32* @NODE_TYPE_SURE, align 4
  %51 = or i32 %49, %50
  %52 = icmp eq i32 %48, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.item*, %struct.item** %2, align 8
  %56 = getelementptr inbounds %struct.item, %struct.item* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.item*, %struct.item** %2, align 8
  %59 = getelementptr inbounds %struct.item, %struct.item* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 4, %60
  %62 = call i32 @zzfree(i32 %57, i32 %61)
  %63 = load %struct.item*, %struct.item** %2, align 8
  %64 = getelementptr inbounds %struct.item, %struct.item* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 4, %65
  %67 = load i32, i32* @items_memory, align 4
  %68 = sub nsw i32 %67, %66
  store i32 %68, i32* @items_memory, align 4
  %69 = load %struct.item*, %struct.item** %2, align 8
  %70 = getelementptr inbounds %struct.item, %struct.item* %69, i32 0, i32 0
  store i32 -1, i32* %70, align 4
  %71 = load %struct.item*, %struct.item** %2, align 8
  %72 = load i32, i32* @NODE_TYPE_MINUS, align 4
  %73 = load i32, i32* @NODE_TYPE_SURE, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @change_node_type(%struct.item* %71, i32 %74)
  br label %76

76:                                               ; preds = %46, %43
  br label %77

77:                                               ; preds = %76, %14
  br label %78

78:                                               ; preds = %77, %1
  ret void
}

declare dso_local i32 @NODE_TYPE(%struct.item*) #1

declare dso_local i32 @zzfree(i32, i32) #1

declare dso_local i32 @change_node_type(%struct.item*, i32) #1

declare dso_local i32 @free_item(%struct.item*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
