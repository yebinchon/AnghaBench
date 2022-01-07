; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_udp_target_update_hash.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp-targets.c_udp_target_update_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_target = type { i32, i32, i32 }

@udp_target_update_hash.P = internal global [7 x i32] zeroinitializer, align 16
@PID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"delete: hash = %lld\0A\00", align 1
@udp_target_by_hash = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"insert: hash = %lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udp_target_update_hash(%struct.udp_target* %0) #0 {
  %2 = alloca %struct.udp_target*, align 8
  %3 = alloca i32, align 4
  store %struct.udp_target* %0, %struct.udp_target** %2, align 8
  %4 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %5 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %4, i32 0, i32 2
  %6 = call i32 @memcmp(i32* @PID, i32* %5, i32 12)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = call i32 @memcpy(i32* getelementptr inbounds ([7 x i32], [7 x i32]* @udp_target_update_hash.P, i64 0, i64 0), i32* @PID, i32 12)
  %11 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %12 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %11, i32 0, i32 2
  %13 = call i32 @memcpy(i32* getelementptr inbounds ([7 x i32], [7 x i32]* @udp_target_update_hash.P, i64 0, i64 3), i32* %12, i32 12)
  br label %19

14:                                               ; preds = %1
  %15 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %16 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %15, i32 0, i32 2
  %17 = call i32 @memcpy(i32* getelementptr inbounds ([7 x i32], [7 x i32]* @udp_target_update_hash.P, i64 0, i64 0), i32* %16, i32 12)
  %18 = call i32 @memcpy(i32* getelementptr inbounds ([7 x i32], [7 x i32]* @udp_target_update_hash.P, i64 0, i64 3), i32* @PID, i32 12)
  br label %19

19:                                               ; preds = %14, %9
  %20 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %21 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @udp_target_update_hash.P, i64 0, i64 6), align 8
  %23 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %24 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %29 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @udp_target_by_hash, align 4
  %33 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %34 = call i32 @tree_delete_udp_target_by_hash(i32 %32, %struct.udp_target* %33)
  store i32 %34, i32* @udp_target_by_hash, align 4
  br label %35

35:                                               ; preds = %27, %19
  %36 = call i32 @crc64(i32* getelementptr inbounds ([7 x i32], [7 x i32]* @udp_target_update_hash.P, i64 0, i64 0), i32 28)
  %37 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %38 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %40 = getelementptr inbounds %struct.udp_target, %struct.udp_target* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @udp_target_by_hash, align 4
  %44 = load %struct.udp_target*, %struct.udp_target** %2, align 8
  %45 = call i32 (...) @lrand48()
  %46 = call i32 @tree_insert_udp_target_by_hash(i32 %43, %struct.udp_target* %44, i32 %45)
  store i32 %46, i32* @udp_target_by_hash, align 4
  ret void
}

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local i32 @tree_delete_udp_target_by_hash(i32, %struct.udp_target*) #1

declare dso_local i32 @crc64(i32*, i32) #1

declare dso_local i32 @tree_insert_udp_target_by_hash(i32, %struct.udp_target*, i32) #1

declare dso_local i32 @lrand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
