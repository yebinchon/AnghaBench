; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_deactivate_one_user_ad.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_deactivate_one_user_ad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@AdSpace = common dso_local global i32 0, align 4
@active_ad_nodes = common dso_local global i32 0, align 4
@inactive_ad_nodes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @deactivate_one_user_ad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deactivate_one_user_ad(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @AdSpace, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @intree_remove(i32 %6, i32 %9, i32 %10, i64* %5)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %2
  %17 = load i32, i32* @active_ad_nodes, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* @active_ad_nodes, align 4
  %19 = load i32, i32* @AdSpace, align 4
  %20 = load i64, i64* %5, align 8
  %21 = call %struct.TYPE_5__* @TNODE(i32 %19, i64 %20)
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %16
  %26 = load i32, i32* @inactive_ad_nodes, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @inactive_ad_nodes, align 4
  %28 = load i32, i32* @AdSpace, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @intree_insert(i32 %28, i32 %31, i64 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %40

36:                                               ; preds = %16
  %37 = load i32, i32* @AdSpace, align 4
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @free_intree_node(i32 %37, i64 %38)
  br label %40

40:                                               ; preds = %36, %25
  br label %41

41:                                               ; preds = %40, %2
  ret void
}

declare dso_local i32 @intree_remove(i32, i32, i32, i64*) #1

declare dso_local %struct.TYPE_5__* @TNODE(i32, i64) #1

declare dso_local i32 @intree_insert(i32, i32, i64) #1

declare dso_local i32 @free_intree_node(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
