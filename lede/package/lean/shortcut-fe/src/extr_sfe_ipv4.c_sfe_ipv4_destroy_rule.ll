; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_destroy_rule.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_destroy_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv4 = type { i32, i32, i32 }
%struct.sfe_connection_destroy = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sfe_ipv4_connection = type { i32 }

@__si = common dso_local global %struct.sfe_ipv4 zeroinitializer, align 4
@.str = private unnamed_addr constant [59 x i8] c"connection does not exist - p: %d, s: %pI4:%u, d: %pI4:%u\0A\00", align 1
@SFE_SYNC_REASON_DESTROY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"connection destroyed - p: %d, s: %pI4:%u, d: %pI4:%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sfe_ipv4_destroy_rule(%struct.sfe_connection_destroy* %0) #0 {
  %2 = alloca %struct.sfe_connection_destroy*, align 8
  %3 = alloca %struct.sfe_ipv4*, align 8
  %4 = alloca %struct.sfe_ipv4_connection*, align 8
  store %struct.sfe_connection_destroy* %0, %struct.sfe_connection_destroy** %2, align 8
  store %struct.sfe_ipv4* @__si, %struct.sfe_ipv4** %3, align 8
  %5 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %3, align 8
  %6 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %5, i32 0, i32 0
  %7 = call i32 @spin_lock_bh(i32* %6)
  %8 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %3, align 8
  %9 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  %12 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %3, align 8
  %13 = load %struct.sfe_connection_destroy*, %struct.sfe_connection_destroy** %2, align 8
  %14 = getelementptr inbounds %struct.sfe_connection_destroy, %struct.sfe_connection_destroy* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sfe_connection_destroy*, %struct.sfe_connection_destroy** %2, align 8
  %17 = getelementptr inbounds %struct.sfe_connection_destroy, %struct.sfe_connection_destroy* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sfe_connection_destroy*, %struct.sfe_connection_destroy** %2, align 8
  %21 = getelementptr inbounds %struct.sfe_connection_destroy, %struct.sfe_connection_destroy* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sfe_connection_destroy*, %struct.sfe_connection_destroy** %2, align 8
  %24 = getelementptr inbounds %struct.sfe_connection_destroy, %struct.sfe_connection_destroy* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sfe_connection_destroy*, %struct.sfe_connection_destroy** %2, align 8
  %28 = getelementptr inbounds %struct.sfe_connection_destroy, %struct.sfe_connection_destroy* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.sfe_ipv4_connection* @sfe_ipv4_find_sfe_ipv4_connection(%struct.sfe_ipv4* %12, i32 %15, i32 %19, i32 %22, i32 %26, i32 %29)
  store %struct.sfe_ipv4_connection* %30, %struct.sfe_ipv4_connection** %4, align 8
  %31 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %32 = icmp ne %struct.sfe_ipv4_connection* %31, null
  br i1 %32, label %57, label %33

33:                                               ; preds = %1
  %34 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %3, align 8
  %35 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %3, align 8
  %39 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock_bh(i32* %39)
  %41 = load %struct.sfe_connection_destroy*, %struct.sfe_connection_destroy** %2, align 8
  %42 = getelementptr inbounds %struct.sfe_connection_destroy, %struct.sfe_connection_destroy* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sfe_connection_destroy*, %struct.sfe_connection_destroy** %2, align 8
  %45 = getelementptr inbounds %struct.sfe_connection_destroy, %struct.sfe_connection_destroy* %44, i32 0, i32 3
  %46 = load %struct.sfe_connection_destroy*, %struct.sfe_connection_destroy** %2, align 8
  %47 = getelementptr inbounds %struct.sfe_connection_destroy, %struct.sfe_connection_destroy* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ntohs(i32 %48)
  %50 = load %struct.sfe_connection_destroy*, %struct.sfe_connection_destroy** %2, align 8
  %51 = getelementptr inbounds %struct.sfe_connection_destroy, %struct.sfe_connection_destroy* %50, i32 0, i32 1
  %52 = load %struct.sfe_connection_destroy*, %struct.sfe_connection_destroy** %2, align 8
  %53 = getelementptr inbounds %struct.sfe_connection_destroy, %struct.sfe_connection_destroy* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ntohs(i32 %54)
  %56 = call i32 @DEBUG_TRACE(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %43, %struct.TYPE_3__* %45, i32 %49, %struct.TYPE_4__* %51, i32 %55)
  br label %86

57:                                               ; preds = %1
  %58 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %3, align 8
  %59 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %60 = call i32 @sfe_ipv4_remove_sfe_ipv4_connection(%struct.sfe_ipv4* %58, %struct.sfe_ipv4_connection* %59)
  %61 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %3, align 8
  %62 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock_bh(i32* %62)
  %64 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %3, align 8
  %65 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %66 = load i32, i32* @SFE_SYNC_REASON_DESTROY, align 4
  %67 = call i32 @sfe_ipv4_flush_sfe_ipv4_connection(%struct.sfe_ipv4* %64, %struct.sfe_ipv4_connection* %65, i32 %66)
  %68 = load %struct.sfe_connection_destroy*, %struct.sfe_connection_destroy** %2, align 8
  %69 = getelementptr inbounds %struct.sfe_connection_destroy, %struct.sfe_connection_destroy* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.sfe_connection_destroy*, %struct.sfe_connection_destroy** %2, align 8
  %72 = getelementptr inbounds %struct.sfe_connection_destroy, %struct.sfe_connection_destroy* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load %struct.sfe_connection_destroy*, %struct.sfe_connection_destroy** %2, align 8
  %75 = getelementptr inbounds %struct.sfe_connection_destroy, %struct.sfe_connection_destroy* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ntohs(i32 %76)
  %78 = load %struct.sfe_connection_destroy*, %struct.sfe_connection_destroy** %2, align 8
  %79 = getelementptr inbounds %struct.sfe_connection_destroy, %struct.sfe_connection_destroy* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load %struct.sfe_connection_destroy*, %struct.sfe_connection_destroy** %2, align 8
  %82 = getelementptr inbounds %struct.sfe_connection_destroy, %struct.sfe_connection_destroy* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ntohs(i32 %83)
  %85 = call i32 @DEBUG_INFO(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32* %73, i32 %77, i32* %80, i32 %84)
  br label %86

86:                                               ; preds = %57, %33
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sfe_ipv4_connection* @sfe_ipv4_find_sfe_ipv4_connection(%struct.sfe_ipv4*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @DEBUG_TRACE(i8*, i32, %struct.TYPE_3__*, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @sfe_ipv4_remove_sfe_ipv4_connection(%struct.sfe_ipv4*, %struct.sfe_ipv4_connection*) #1

declare dso_local i32 @sfe_ipv4_flush_sfe_ipv4_connection(%struct.sfe_ipv4*, %struct.sfe_ipv4_connection*, i32) #1

declare dso_local i32 @DEBUG_INFO(i8*, i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
