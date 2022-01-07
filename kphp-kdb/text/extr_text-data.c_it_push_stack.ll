; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_it_push_stack.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_it_push_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iterator = type { %struct.iterator_stack_node* }
%struct.iterator_stack_node = type { i32*, %struct.iterator_stack_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iterator*, i32*)* @it_push_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it_push_stack(%struct.iterator* %0, i32* %1) #0 {
  %3 = alloca %struct.iterator*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.iterator_stack_node*, align 8
  store %struct.iterator* %0, %struct.iterator** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = call %struct.iterator_stack_node* (...) @alloc_stack_node()
  store %struct.iterator_stack_node* %6, %struct.iterator_stack_node** %5, align 8
  %7 = load %struct.iterator_stack_node*, %struct.iterator_stack_node** %5, align 8
  %8 = icmp ne %struct.iterator_stack_node* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load %struct.iterator*, %struct.iterator** %3, align 8
  %11 = getelementptr inbounds %struct.iterator, %struct.iterator* %10, i32 0, i32 0
  %12 = load %struct.iterator_stack_node*, %struct.iterator_stack_node** %11, align 8
  %13 = load %struct.iterator_stack_node*, %struct.iterator_stack_node** %5, align 8
  %14 = getelementptr inbounds %struct.iterator_stack_node, %struct.iterator_stack_node* %13, i32 0, i32 1
  store %struct.iterator_stack_node* %12, %struct.iterator_stack_node** %14, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.iterator_stack_node*, %struct.iterator_stack_node** %5, align 8
  %17 = getelementptr inbounds %struct.iterator_stack_node, %struct.iterator_stack_node* %16, i32 0, i32 0
  store i32* %15, i32** %17, align 8
  %18 = load %struct.iterator_stack_node*, %struct.iterator_stack_node** %5, align 8
  %19 = load %struct.iterator*, %struct.iterator** %3, align 8
  %20 = getelementptr inbounds %struct.iterator, %struct.iterator* %19, i32 0, i32 0
  store %struct.iterator_stack_node* %18, %struct.iterator_stack_node** %20, align 8
  br label %21

21:                                               ; preds = %9, %2
  ret void
}

declare dso_local %struct.iterator_stack_node* @alloc_stack_node(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
