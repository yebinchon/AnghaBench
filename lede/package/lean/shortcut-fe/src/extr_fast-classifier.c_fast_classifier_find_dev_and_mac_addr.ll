; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_fast-classifier.c_fast_classifier_find_dev_and_mac_addr.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_fast-classifier.c_fast_classifier_find_dev_and_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.net_device = type { i64 }
%struct.neighbour = type { i32, i32, %struct.net_device* }
%struct.rtable = type { i32 }
%struct.rt6_info = type { i32 }
%struct.dst_entry = type { i32 }
%struct.in6_addr = type { i32 }

@init_net = common dso_local global i32 0, align 4
@NUD_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to find MAC address for IP: %pIS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.net_device**, i32*, i32)* @fast_classifier_find_dev_and_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fast_classifier_find_dev_and_mac_addr(%struct.TYPE_5__* %0, %struct.net_device** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.net_device**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.neighbour*, align 8
  %11 = alloca %struct.rtable*, align 8
  %12 = alloca %struct.rt6_info*, align 8
  %13 = alloca %struct.dst_entry*, align 8
  %14 = alloca %struct.net_device*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store %struct.net_device** %1, %struct.net_device*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.rtable* @ip_route_output(i32* @init_net, i32 %20, i32 0, i32 0, i32 0)
  store %struct.rtable* %21, %struct.rtable** %11, align 8
  %22 = load %struct.rtable*, %struct.rtable** %11, align 8
  %23 = call i32 @IS_ERR(%struct.rtable* %22)
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %104

27:                                               ; preds = %17
  %28 = load %struct.rtable*, %struct.rtable** %11, align 8
  %29 = bitcast %struct.rtable* %28 to %struct.dst_entry*
  store %struct.dst_entry* %29, %struct.dst_entry** %13, align 8
  br label %42

30:                                               ; preds = %4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.in6_addr*
  %35 = call %struct.rt6_info* @rt6_lookup(i32* @init_net, %struct.in6_addr* %34, i32 0, i32 0, i32 0)
  store %struct.rt6_info* %35, %struct.rt6_info** %12, align 8
  %36 = load %struct.rt6_info*, %struct.rt6_info** %12, align 8
  %37 = icmp ne %struct.rt6_info* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  br label %104

39:                                               ; preds = %30
  %40 = load %struct.rt6_info*, %struct.rt6_info** %12, align 8
  %41 = bitcast %struct.rt6_info* %40 to %struct.dst_entry*
  store %struct.dst_entry* %41, %struct.dst_entry** %13, align 8
  br label %42

42:                                               ; preds = %39, %27
  %43 = call i32 (...) @rcu_read_lock()
  %44 = load %struct.dst_entry*, %struct.dst_entry** %13, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = call %struct.neighbour* @dst_neigh_lookup(%struct.dst_entry* %44, %struct.TYPE_5__* %45)
  store %struct.neighbour* %46, %struct.neighbour** %10, align 8
  %47 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %48 = icmp ne %struct.neighbour* %47, null
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = call i32 (...) @rcu_read_unlock()
  %55 = load %struct.dst_entry*, %struct.dst_entry** %13, align 8
  %56 = call i32 @dst_release(%struct.dst_entry* %55)
  br label %104

57:                                               ; preds = %42
  %58 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %59 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @NUD_VALID, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %57
  %69 = call i32 (...) @rcu_read_unlock()
  %70 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %71 = call i32 @neigh_release(%struct.neighbour* %70)
  %72 = load %struct.dst_entry*, %struct.dst_entry** %13, align 8
  %73 = call i32 @dst_release(%struct.dst_entry* %72)
  br label %104

74:                                               ; preds = %57
  %75 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %76 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %75, i32 0, i32 2
  %77 = load %struct.net_device*, %struct.net_device** %76, align 8
  store %struct.net_device* %77, %struct.net_device** %14, align 8
  %78 = load %struct.net_device*, %struct.net_device** %14, align 8
  %79 = icmp ne %struct.net_device* %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = call i32 (...) @rcu_read_unlock()
  %82 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %83 = call i32 @neigh_release(%struct.neighbour* %82)
  %84 = load %struct.dst_entry*, %struct.dst_entry** %13, align 8
  %85 = call i32 @dst_release(%struct.dst_entry* %84)
  br label %104

86:                                               ; preds = %74
  %87 = load i32*, i32** %8, align 8
  %88 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %89 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.net_device*, %struct.net_device** %14, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @memcpy(i32* %87, i32 %90, i64 %93)
  %95 = load %struct.net_device*, %struct.net_device** %14, align 8
  %96 = call i32 @dev_hold(%struct.net_device* %95)
  %97 = load %struct.net_device*, %struct.net_device** %14, align 8
  %98 = load %struct.net_device**, %struct.net_device*** %7, align 8
  store %struct.net_device* %97, %struct.net_device** %98, align 8
  %99 = call i32 (...) @rcu_read_unlock()
  %100 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %101 = call i32 @neigh_release(%struct.neighbour* %100)
  %102 = load %struct.dst_entry*, %struct.dst_entry** %13, align 8
  %103 = call i32 @dst_release(%struct.dst_entry* %102)
  store i32 1, i32* %5, align 4
  br label %107

104:                                              ; preds = %80, %68, %53, %38, %26
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %106 = call i32 @DEBUG_TRACE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %105)
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %104, %86
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local %struct.rtable* @ip_route_output(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_ERR(%struct.rtable*) #1

declare dso_local %struct.rt6_info* @rt6_lookup(i32*, %struct.in6_addr*, i32, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.neighbour* @dst_neigh_lookup(%struct.dst_entry*, %struct.TYPE_5__*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @DEBUG_TRACE(i8*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
