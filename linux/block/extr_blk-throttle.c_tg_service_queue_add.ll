; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_tg_service_queue_add.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_tg_service_queue_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_grp = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.throtl_service_queue* }
%struct.throtl_service_queue = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.rb_node* }
%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.throtl_grp*)* @tg_service_queue_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg_service_queue_add(%struct.throtl_grp* %0) #0 {
  %2 = alloca %struct.throtl_grp*, align 8
  %3 = alloca %struct.throtl_service_queue*, align 8
  %4 = alloca %struct.rb_node**, align 8
  %5 = alloca %struct.rb_node*, align 8
  %6 = alloca %struct.throtl_grp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.throtl_grp* %0, %struct.throtl_grp** %2, align 8
  %9 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %10 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %11, align 8
  store %struct.throtl_service_queue* %12, %struct.throtl_service_queue** %3, align 8
  %13 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %3, align 8
  %14 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store %struct.rb_node** %16, %struct.rb_node*** %4, align 8
  store %struct.rb_node* null, %struct.rb_node** %5, align 8
  %17 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %18 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  store i32 1, i32* %8, align 4
  br label %20

20:                                               ; preds = %41, %1
  %21 = load %struct.rb_node**, %struct.rb_node*** %4, align 8
  %22 = load %struct.rb_node*, %struct.rb_node** %21, align 8
  %23 = icmp ne %struct.rb_node* %22, null
  br i1 %23, label %24, label %42

24:                                               ; preds = %20
  %25 = load %struct.rb_node**, %struct.rb_node*** %4, align 8
  %26 = load %struct.rb_node*, %struct.rb_node** %25, align 8
  store %struct.rb_node* %26, %struct.rb_node** %5, align 8
  %27 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %28 = call %struct.throtl_grp* @rb_entry_tg(%struct.rb_node* %27)
  store %struct.throtl_grp* %28, %struct.throtl_grp** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.throtl_grp*, %struct.throtl_grp** %6, align 8
  %31 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @time_before(i64 %29, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %37 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %36, i32 0, i32 1
  store %struct.rb_node** %37, %struct.rb_node*** %4, align 8
  br label %41

38:                                               ; preds = %24
  %39 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %40 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %39, i32 0, i32 0
  store %struct.rb_node** %40, %struct.rb_node*** %4, align 8
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %38, %35
  br label %20

42:                                               ; preds = %20
  %43 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %44 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %43, i32 0, i32 1
  %45 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %46 = load %struct.rb_node**, %struct.rb_node*** %4, align 8
  %47 = call i32 @rb_link_node(i32* %44, %struct.rb_node* %45, %struct.rb_node** %46)
  %48 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %49 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %48, i32 0, i32 1
  %50 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %3, align 8
  %51 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %50, i32 0, i32 0
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @rb_insert_color_cached(i32* %49, %struct.TYPE_6__* %51, i32 %52)
  ret void
}

declare dso_local %struct.throtl_grp* @rb_entry_tg(%struct.rb_node*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @rb_link_node(i32*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @rb_insert_color_cached(i32*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
