; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_update_rule.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_update_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv6 = type { i32 }
%struct.sfe_connection_create = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sfe_ipv6_connection = type { i32 }

@__si6 = common dso_local global %struct.sfe_ipv6 zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sfe_ipv6_update_rule(%struct.sfe_connection_create* %0) #0 {
  %2 = alloca %struct.sfe_connection_create*, align 8
  %3 = alloca %struct.sfe_ipv6_connection*, align 8
  %4 = alloca %struct.sfe_ipv6*, align 8
  store %struct.sfe_connection_create* %0, %struct.sfe_connection_create** %2, align 8
  store %struct.sfe_ipv6* @__si6, %struct.sfe_ipv6** %4, align 8
  %5 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %4, align 8
  %6 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %5, i32 0, i32 0
  %7 = call i32 @spin_lock_bh(i32* %6)
  %8 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %4, align 8
  %9 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %2, align 8
  %10 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %2, align 8
  %13 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %2, align 8
  %17 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %2, align 8
  %20 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %2, align 8
  %24 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.sfe_ipv6_connection* @sfe_ipv6_find_connection(%struct.sfe_ipv6* %8, i32 %11, i32 %15, i32 %18, i32 %22, i32 %25)
  store %struct.sfe_ipv6_connection* %26, %struct.sfe_ipv6_connection** %3, align 8
  %27 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %3, align 8
  %28 = icmp ne %struct.sfe_ipv6_connection* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %3, align 8
  %31 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %2, align 8
  %32 = call i32 @sfe_ipv6_update_protocol_state(%struct.sfe_ipv6_connection* %30, %struct.sfe_connection_create* %31)
  br label %33

33:                                               ; preds = %29, %1
  %34 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %4, align 8
  %35 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock_bh(i32* %35)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sfe_ipv6_connection* @sfe_ipv6_find_connection(%struct.sfe_ipv6*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sfe_ipv6_update_protocol_state(%struct.sfe_ipv6_connection*, %struct.sfe_connection_create*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
