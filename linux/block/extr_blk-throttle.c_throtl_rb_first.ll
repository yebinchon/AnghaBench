; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_rb_first.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_rb_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_grp = type { i32 }
%struct.throtl_service_queue = type { i32, i32 }
%struct.rb_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.throtl_grp* (%struct.throtl_service_queue*)* @throtl_rb_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.throtl_grp* @throtl_rb_first(%struct.throtl_service_queue* %0) #0 {
  %2 = alloca %struct.throtl_grp*, align 8
  %3 = alloca %struct.throtl_service_queue*, align 8
  %4 = alloca %struct.rb_node*, align 8
  store %struct.throtl_service_queue* %0, %struct.throtl_service_queue** %3, align 8
  %5 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %3, align 8
  %6 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.throtl_grp* null, %struct.throtl_grp** %2, align 8
  br label %25

10:                                               ; preds = %1
  %11 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %3, align 8
  %12 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %11, i32 0, i32 0
  %13 = call %struct.rb_node* @rb_first_cached(i32* %12)
  store %struct.rb_node* %13, %struct.rb_node** %4, align 8
  %14 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %15 = icmp ne %struct.rb_node* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON_ONCE(i32 %17)
  %19 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %20 = icmp ne %struct.rb_node* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %10
  store %struct.throtl_grp* null, %struct.throtl_grp** %2, align 8
  br label %25

22:                                               ; preds = %10
  %23 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %24 = call %struct.throtl_grp* @rb_entry_tg(%struct.rb_node* %23)
  store %struct.throtl_grp* %24, %struct.throtl_grp** %2, align 8
  br label %25

25:                                               ; preds = %22, %21, %9
  %26 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  ret %struct.throtl_grp* %26
}

declare dso_local %struct.rb_node* @rb_first_cached(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.throtl_grp* @rb_entry_tg(%struct.rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
