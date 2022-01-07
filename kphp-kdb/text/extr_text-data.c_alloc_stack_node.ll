; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_alloc_stack_node.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_alloc_stack_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iterator_stack_node = type { %struct.iterator_stack_node* }

@isn_free = common dso_local global %struct.iterator_stack_node* null, align 8
@isn_alloc = common dso_local global i64 0, align 8
@isn_top = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iterator_stack_node* ()* @alloc_stack_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iterator_stack_node* @alloc_stack_node() #0 {
  %1 = alloca %struct.iterator_stack_node*, align 8
  %2 = alloca %struct.iterator_stack_node*, align 8
  %3 = load %struct.iterator_stack_node*, %struct.iterator_stack_node** @isn_free, align 8
  %4 = icmp ne %struct.iterator_stack_node* %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = load %struct.iterator_stack_node*, %struct.iterator_stack_node** @isn_free, align 8
  store %struct.iterator_stack_node* %6, %struct.iterator_stack_node** %2, align 8
  %7 = load %struct.iterator_stack_node*, %struct.iterator_stack_node** %2, align 8
  %8 = getelementptr inbounds %struct.iterator_stack_node, %struct.iterator_stack_node* %7, i32 0, i32 0
  %9 = load %struct.iterator_stack_node*, %struct.iterator_stack_node** %8, align 8
  store %struct.iterator_stack_node* %9, %struct.iterator_stack_node** @isn_free, align 8
  %10 = load %struct.iterator_stack_node*, %struct.iterator_stack_node** %2, align 8
  store %struct.iterator_stack_node* %10, %struct.iterator_stack_node** %1, align 8
  br label %20

11:                                               ; preds = %0
  %12 = load i64, i64* @isn_alloc, align 8
  %13 = load i64, i64* @isn_top, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i64, i64* @isn_alloc, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* @isn_alloc, align 8
  %18 = inttoptr i64 %16 to %struct.iterator_stack_node*
  store %struct.iterator_stack_node* %18, %struct.iterator_stack_node** %1, align 8
  br label %20

19:                                               ; preds = %11
  store %struct.iterator_stack_node* null, %struct.iterator_stack_node** %1, align 8
  br label %20

20:                                               ; preds = %19, %15, %5
  %21 = load %struct.iterator_stack_node*, %struct.iterator_stack_node** %1, align 8
  ret %struct.iterator_stack_node* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
