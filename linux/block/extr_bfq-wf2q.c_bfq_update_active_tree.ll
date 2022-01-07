; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_update_active_tree.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-wf2q.c_bfq_update_active_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rb_node*)* @bfq_update_active_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfq_update_active_tree(%struct.rb_node* %0) #0 {
  %2 = alloca %struct.rb_node*, align 8
  %3 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %2, align 8
  br label %4

4:                                                ; preds = %39, %1
  %5 = load %struct.rb_node*, %struct.rb_node** %2, align 8
  %6 = call i32 @bfq_update_active_node(%struct.rb_node* %5)
  %7 = load %struct.rb_node*, %struct.rb_node** %2, align 8
  %8 = call %struct.rb_node* @rb_parent(%struct.rb_node* %7)
  store %struct.rb_node* %8, %struct.rb_node** %3, align 8
  %9 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %10 = icmp ne %struct.rb_node* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  ret void

12:                                               ; preds = %4
  %13 = load %struct.rb_node*, %struct.rb_node** %2, align 8
  %14 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %15 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %14, i32 0, i32 0
  %16 = load %struct.rb_node*, %struct.rb_node** %15, align 8
  %17 = icmp eq %struct.rb_node* %13, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %20 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %19, i32 0, i32 1
  %21 = load %struct.rb_node*, %struct.rb_node** %20, align 8
  %22 = icmp ne %struct.rb_node* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %25 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %24, i32 0, i32 1
  %26 = load %struct.rb_node*, %struct.rb_node** %25, align 8
  %27 = call i32 @bfq_update_active_node(%struct.rb_node* %26)
  br label %39

28:                                               ; preds = %18, %12
  %29 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %30 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %29, i32 0, i32 0
  %31 = load %struct.rb_node*, %struct.rb_node** %30, align 8
  %32 = icmp ne %struct.rb_node* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %35 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %34, i32 0, i32 0
  %36 = load %struct.rb_node*, %struct.rb_node** %35, align 8
  %37 = call i32 @bfq_update_active_node(%struct.rb_node* %36)
  br label %38

38:                                               ; preds = %33, %28
  br label %39

39:                                               ; preds = %38, %23
  %40 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  store %struct.rb_node* %40, %struct.rb_node** %2, align 8
  br label %4
}

declare dso_local i32 @bfq_update_active_node(%struct.rb_node*) #1

declare dso_local %struct.rb_node* @rb_parent(%struct.rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
