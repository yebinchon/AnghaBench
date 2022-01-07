; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_destroy_all_rules_for_dev.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_destroy_all_rules_for_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv6 = type { i32, %struct.sfe_ipv6_connection* }
%struct.sfe_ipv6_connection = type { %struct.net_device*, %struct.net_device*, %struct.sfe_ipv6_connection* }
%struct.net_device = type { i32 }

@__si6 = common dso_local global %struct.sfe_ipv6 zeroinitializer, align 8
@SFE_SYNC_REASON_DESTROY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sfe_ipv6_destroy_all_rules_for_dev(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sfe_ipv6*, align 8
  %4 = alloca %struct.sfe_ipv6_connection*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store %struct.sfe_ipv6* @__si6, %struct.sfe_ipv6** %3, align 8
  br label %5

5:                                                ; preds = %49, %1
  %6 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %3, align 8
  %7 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %3, align 8
  %10 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %9, i32 0, i32 1
  %11 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %10, align 8
  store %struct.sfe_ipv6_connection* %11, %struct.sfe_ipv6_connection** %4, align 8
  br label %12

12:                                               ; preds = %32, %5
  %13 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %4, align 8
  %14 = icmp ne %struct.sfe_ipv6_connection* %13, null
  br i1 %14, label %15, label %36

15:                                               ; preds = %12
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = icmp ne %struct.net_device* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %4, align 8
  %21 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %20, i32 0, i32 1
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  %23 = icmp eq %struct.net_device* %19, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %4, align 8
  %27 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %26, i32 0, i32 0
  %28 = load %struct.net_device*, %struct.net_device** %27, align 8
  %29 = icmp eq %struct.net_device* %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %18, %15
  br label %36

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %4, align 8
  %34 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %33, i32 0, i32 2
  %35 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %34, align 8
  store %struct.sfe_ipv6_connection* %35, %struct.sfe_ipv6_connection** %4, align 8
  br label %12

36:                                               ; preds = %30, %12
  %37 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %4, align 8
  %38 = icmp ne %struct.sfe_ipv6_connection* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %3, align 8
  %41 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %4, align 8
  %42 = call i32 @sfe_ipv6_remove_connection(%struct.sfe_ipv6* %40, %struct.sfe_ipv6_connection* %41)
  br label %43

43:                                               ; preds = %39, %36
  %44 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %3, align 8
  %45 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock_bh(i32* %45)
  %47 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %4, align 8
  %48 = icmp ne %struct.sfe_ipv6_connection* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %3, align 8
  %51 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %4, align 8
  %52 = load i32, i32* @SFE_SYNC_REASON_DESTROY, align 4
  %53 = call i32 @sfe_ipv6_flush_connection(%struct.sfe_ipv6* %50, %struct.sfe_ipv6_connection* %51, i32 %52)
  br label %5

54:                                               ; preds = %43
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @sfe_ipv6_remove_connection(%struct.sfe_ipv6*, %struct.sfe_ipv6_connection*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @sfe_ipv6_flush_connection(%struct.sfe_ipv6*, %struct.sfe_ipv6_connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
