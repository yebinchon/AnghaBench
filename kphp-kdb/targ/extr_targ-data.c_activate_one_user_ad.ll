; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_activate_one_user_ad.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_activate_one_user_ad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.intree_node = type { i32, i64 }

@AdSpace = common dso_local global i32 0, align 4
@inactive_ad_nodes = common dso_local global i32 0, align 4
@active_ad_nodes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @activate_one_user_ad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @activate_one_user_ad(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.intree_node*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @AdSpace, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @intree_remove(i32 %7, i32 %10, i32 %11, i64* %5)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @AdSpace, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @intree_lookup(i32 %18, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %61

26:                                               ; preds = %17
  %27 = load i32, i32* @AdSpace, align 4
  %28 = call i64 @new_intree_node(i32 %27)
  store i64 %28, i64* %5, align 8
  %29 = load i32, i32* @AdSpace, align 4
  %30 = load i64, i64* %5, align 8
  %31 = call %struct.intree_node* @TNODE(i32 %29, i64 %30)
  store %struct.intree_node* %31, %struct.intree_node** %6, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.intree_node*, %struct.intree_node** %6, align 8
  %34 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.intree_node*, %struct.intree_node** %6, align 8
  %36 = getelementptr inbounds %struct.intree_node, %struct.intree_node* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  br label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @inactive_ad_nodes, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* @inactive_ad_nodes, align 4
  br label %40

40:                                               ; preds = %37, %26
  %41 = load i32, i32* @active_ad_nodes, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @active_ad_nodes, align 4
  %43 = load i32, i32* @AdSpace, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i64 @intree_lookup(i32 %43, i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i32, i32* @AdSpace, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @intree_insert(i32 %53, i32 %56, i64 %57)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %40, %25
  ret void
}

declare dso_local i32 @intree_remove(i32, i32, i32, i64*) #1

declare dso_local i64 @intree_lookup(i32, i32, i32) #1

declare dso_local i64 @new_intree_node(i32) #1

declare dso_local %struct.intree_node* @TNODE(i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @intree_insert(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
