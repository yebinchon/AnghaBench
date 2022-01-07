; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_mark_rule.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_mark_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv4 = type { i32 }
%struct.sfe_connection_mark = type { i64, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sfe_ipv4_connection = type { i64 }

@__si = common dso_local global %struct.sfe_ipv4 zeroinitializer, align 4
@.str = private unnamed_addr constant [63 x i8] c"Matching connection found for mark, setting from %08x to %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sfe_ipv4_mark_rule(%struct.sfe_connection_mark* %0) #0 {
  %2 = alloca %struct.sfe_connection_mark*, align 8
  %3 = alloca %struct.sfe_ipv4*, align 8
  %4 = alloca %struct.sfe_ipv4_connection*, align 8
  store %struct.sfe_connection_mark* %0, %struct.sfe_connection_mark** %2, align 8
  store %struct.sfe_ipv4* @__si, %struct.sfe_ipv4** %3, align 8
  %5 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %3, align 8
  %6 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %5, i32 0, i32 0
  %7 = call i32 @spin_lock_bh(i32* %6)
  %8 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %3, align 8
  %9 = load %struct.sfe_connection_mark*, %struct.sfe_connection_mark** %2, align 8
  %10 = getelementptr inbounds %struct.sfe_connection_mark, %struct.sfe_connection_mark* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.sfe_connection_mark*, %struct.sfe_connection_mark** %2, align 8
  %13 = getelementptr inbounds %struct.sfe_connection_mark, %struct.sfe_connection_mark* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sfe_connection_mark*, %struct.sfe_connection_mark** %2, align 8
  %17 = getelementptr inbounds %struct.sfe_connection_mark, %struct.sfe_connection_mark* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.sfe_connection_mark*, %struct.sfe_connection_mark** %2, align 8
  %20 = getelementptr inbounds %struct.sfe_connection_mark, %struct.sfe_connection_mark* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sfe_connection_mark*, %struct.sfe_connection_mark** %2, align 8
  %24 = getelementptr inbounds %struct.sfe_connection_mark, %struct.sfe_connection_mark* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.sfe_ipv4_connection* @sfe_ipv4_find_sfe_ipv4_connection(%struct.sfe_ipv4* %8, i32 %11, i32 %15, i32 %18, i32 %22, i32 %25)
  store %struct.sfe_ipv4_connection* %26, %struct.sfe_ipv4_connection** %4, align 8
  %27 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %28 = icmp ne %struct.sfe_ipv4_connection* %27, null
  br i1 %28, label %29, label %48

29:                                               ; preds = %1
  %30 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %31 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 0, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.sfe_connection_mark*, %struct.sfe_connection_mark** %2, align 8
  %36 = getelementptr inbounds %struct.sfe_connection_mark, %struct.sfe_connection_mark* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 0, %37
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i1 [ false, %29 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @WARN_ON(i32 %41)
  %43 = load %struct.sfe_connection_mark*, %struct.sfe_connection_mark** %2, align 8
  %44 = getelementptr inbounds %struct.sfe_connection_mark, %struct.sfe_connection_mark* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %47 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %39, %1
  %49 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %3, align 8
  %50 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock_bh(i32* %50)
  %52 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %53 = icmp ne %struct.sfe_ipv4_connection* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %56 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.sfe_connection_mark*, %struct.sfe_connection_mark** %2, align 8
  %59 = getelementptr inbounds %struct.sfe_connection_mark, %struct.sfe_connection_mark* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @DEBUG_TRACE(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %57, i64 %60)
  br label %62

62:                                               ; preds = %54, %48
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sfe_ipv4_connection* @sfe_ipv4_find_sfe_ipv4_connection(%struct.sfe_ipv4*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @DEBUG_TRACE(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
