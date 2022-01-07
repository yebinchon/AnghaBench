; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_add_received.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_add_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_target = type { i32, i64 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_received(%struct.udp_target* %0, i32 %1) #0 {
  %3 = alloca %struct.udp_target*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.udp_target* %0, %struct.udp_target** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %8 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, 1
  %11 = icmp eq i32 %6, %10
  br i1 %11, label %12, label %72

12:                                               ; preds = %2
  %13 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %14 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %18 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %71

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %61, %21
  %23 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %24 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %62

27:                                               ; preds = %22
  %28 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %29 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call %struct.TYPE_2__* @tree_get_min_int(i64 %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %36 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  %39 = icmp sge i32 %34, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %44 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  %47 = icmp eq i32 %42, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %27
  %49 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %50 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @tree_delete_int(i64 %51, i32 %52)
  %54 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %55 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %57 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  br label %61

60:                                               ; preds = %27
  br label %62

61:                                               ; preds = %48
  br label %22

62:                                               ; preds = %60, %22
  %63 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %64 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %69 = call i32 @stop_rx_timer(%struct.udp_target* %68)
  br label %70

70:                                               ; preds = %67, %62
  br label %71

71:                                               ; preds = %70, %12
  br label %89

72:                                               ; preds = %2
  %73 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %74 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %79 = call i32 @start_rx_timer(%struct.udp_target* %78)
  br label %80

80:                                               ; preds = %77, %72
  %81 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %82 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call i32 (...) @lrand48()
  %86 = call i64 @tree_insert_int(i64 %83, i32 %84, i32 %85)
  %87 = load %struct.udp_target*, %struct.udp_target** %3, align 8
  %88 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %80, %71
  ret void
}

declare dso_local %struct.TYPE_2__* @tree_get_min_int(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @tree_delete_int(i64, i32) #1

declare dso_local i32 @stop_rx_timer(%struct.udp_target*) #1

declare dso_local i32 @start_rx_timer(%struct.udp_target*) #1

declare dso_local i64 @tree_insert_int(i64, i32, i32) #1

declare dso_local i32 @lrand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
