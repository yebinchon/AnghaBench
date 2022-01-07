; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_find_deepest.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_find_deepest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rb_node* (%struct.rb_node*)* @bfq_find_deepest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rb_node* @bfq_find_deepest(%struct.rb_node* %0) #0 {
  %2 = alloca %struct.rb_node*, align 8
  %3 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %2, align 8
  %4 = load %struct.rb_node*, %struct.rb_node** %2, align 8
  %5 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %4, i32 0, i32 0
  %6 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %7 = icmp ne %struct.rb_node* %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load %struct.rb_node*, %struct.rb_node** %2, align 8
  %10 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %9, i32 0, i32 1
  %11 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %12 = icmp ne %struct.rb_node* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load %struct.rb_node*, %struct.rb_node** %2, align 8
  %15 = call %struct.rb_node* @rb_parent(%struct.rb_node* %14)
  store %struct.rb_node* %15, %struct.rb_node** %3, align 8
  br label %57

16:                                               ; preds = %8, %1
  %17 = load %struct.rb_node*, %struct.rb_node** %2, align 8
  %18 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %17, i32 0, i32 0
  %19 = load %struct.rb_node*, %struct.rb_node** %18, align 8
  %20 = icmp ne %struct.rb_node* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load %struct.rb_node*, %struct.rb_node** %2, align 8
  %23 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %22, i32 0, i32 1
  %24 = load %struct.rb_node*, %struct.rb_node** %23, align 8
  store %struct.rb_node* %24, %struct.rb_node** %3, align 8
  br label %56

25:                                               ; preds = %16
  %26 = load %struct.rb_node*, %struct.rb_node** %2, align 8
  %27 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %26, i32 0, i32 1
  %28 = load %struct.rb_node*, %struct.rb_node** %27, align 8
  %29 = icmp ne %struct.rb_node* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load %struct.rb_node*, %struct.rb_node** %2, align 8
  %32 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %31, i32 0, i32 0
  %33 = load %struct.rb_node*, %struct.rb_node** %32, align 8
  store %struct.rb_node* %33, %struct.rb_node** %3, align 8
  br label %55

34:                                               ; preds = %25
  %35 = load %struct.rb_node*, %struct.rb_node** %2, align 8
  %36 = call %struct.rb_node* @rb_next(%struct.rb_node* %35)
  store %struct.rb_node* %36, %struct.rb_node** %3, align 8
  %37 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %38 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %37, i32 0, i32 0
  %39 = load %struct.rb_node*, %struct.rb_node** %38, align 8
  %40 = icmp ne %struct.rb_node* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %43 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %42, i32 0, i32 0
  %44 = load %struct.rb_node*, %struct.rb_node** %43, align 8
  store %struct.rb_node* %44, %struct.rb_node** %3, align 8
  br label %54

45:                                               ; preds = %34
  %46 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %47 = call %struct.rb_node* @rb_parent(%struct.rb_node* %46)
  %48 = load %struct.rb_node*, %struct.rb_node** %2, align 8
  %49 = icmp ne %struct.rb_node* %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %52 = call %struct.rb_node* @rb_parent(%struct.rb_node* %51)
  store %struct.rb_node* %52, %struct.rb_node** %3, align 8
  br label %53

53:                                               ; preds = %50, %45
  br label %54

54:                                               ; preds = %53, %41
  br label %55

55:                                               ; preds = %54, %30
  br label %56

56:                                               ; preds = %55, %21
  br label %57

57:                                               ; preds = %56, %13
  %58 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  ret %struct.rb_node* %58
}

declare dso_local %struct.rb_node* @rb_parent(%struct.rb_node*) #1

declare dso_local %struct.rb_node* @rb_next(%struct.rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
