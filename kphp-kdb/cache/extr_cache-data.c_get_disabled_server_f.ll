; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_get_disabled_server_f.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_get_disabled_server_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_local_copy_server = type { i32, %struct.cache_local_copy_server* }

@DISABLED_SERVER_HASH_PRIME = common dso_local global i32 0, align 4
@HDS = common dso_local global %struct.cache_local_copy_server** null, align 8
@tot_disabled_servers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cache_local_copy_server* @get_disabled_server_f(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.cache_local_copy_server*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cache_local_copy_server**, align 8
  %8 = alloca %struct.cache_local_copy_server*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @DISABLED_SERVER_HASH_PRIME, align 4
  %12 = srem i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @DISABLED_SERVER_HASH_PRIME, align 4
  %18 = icmp slt i32 %16, %17
  br label %19

19:                                               ; preds = %15, %2
  %20 = phi i1 [ false, %2 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.cache_local_copy_server**, %struct.cache_local_copy_server*** @HDS, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.cache_local_copy_server*, %struct.cache_local_copy_server** %23, i64 %25
  store %struct.cache_local_copy_server** %26, %struct.cache_local_copy_server*** %7, align 8
  br label %27

27:                                               ; preds = %61, %19
  %28 = load %struct.cache_local_copy_server**, %struct.cache_local_copy_server*** %7, align 8
  %29 = load %struct.cache_local_copy_server*, %struct.cache_local_copy_server** %28, align 8
  %30 = icmp ne %struct.cache_local_copy_server* %29, null
  br i1 %30, label %31, label %64

31:                                               ; preds = %27
  %32 = load %struct.cache_local_copy_server**, %struct.cache_local_copy_server*** %7, align 8
  %33 = load %struct.cache_local_copy_server*, %struct.cache_local_copy_server** %32, align 8
  store %struct.cache_local_copy_server* %33, %struct.cache_local_copy_server** %8, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.cache_local_copy_server*, %struct.cache_local_copy_server** %8, align 8
  %36 = getelementptr inbounds %struct.cache_local_copy_server, %struct.cache_local_copy_server* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %31
  %40 = load %struct.cache_local_copy_server*, %struct.cache_local_copy_server** %8, align 8
  %41 = getelementptr inbounds %struct.cache_local_copy_server, %struct.cache_local_copy_server* %40, i32 0, i32 1
  %42 = load %struct.cache_local_copy_server*, %struct.cache_local_copy_server** %41, align 8
  %43 = load %struct.cache_local_copy_server**, %struct.cache_local_copy_server*** %7, align 8
  store %struct.cache_local_copy_server* %42, %struct.cache_local_copy_server** %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %39
  %47 = load %struct.cache_local_copy_server**, %struct.cache_local_copy_server*** @HDS, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.cache_local_copy_server*, %struct.cache_local_copy_server** %47, i64 %49
  %51 = load %struct.cache_local_copy_server*, %struct.cache_local_copy_server** %50, align 8
  %52 = load %struct.cache_local_copy_server*, %struct.cache_local_copy_server** %8, align 8
  %53 = getelementptr inbounds %struct.cache_local_copy_server, %struct.cache_local_copy_server* %52, i32 0, i32 1
  store %struct.cache_local_copy_server* %51, %struct.cache_local_copy_server** %53, align 8
  %54 = load %struct.cache_local_copy_server*, %struct.cache_local_copy_server** %8, align 8
  %55 = load %struct.cache_local_copy_server**, %struct.cache_local_copy_server*** @HDS, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.cache_local_copy_server*, %struct.cache_local_copy_server** %55, i64 %57
  store %struct.cache_local_copy_server* %54, %struct.cache_local_copy_server** %58, align 8
  br label %59

59:                                               ; preds = %46, %39
  %60 = load %struct.cache_local_copy_server*, %struct.cache_local_copy_server** %8, align 8
  store %struct.cache_local_copy_server* %60, %struct.cache_local_copy_server** %3, align 8
  br label %87

61:                                               ; preds = %31
  %62 = load %struct.cache_local_copy_server*, %struct.cache_local_copy_server** %8, align 8
  %63 = getelementptr inbounds %struct.cache_local_copy_server, %struct.cache_local_copy_server* %62, i32 0, i32 1
  store %struct.cache_local_copy_server** %63, %struct.cache_local_copy_server*** %7, align 8
  br label %27

64:                                               ; preds = %27
  %65 = load i32, i32* %5, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %64
  %68 = load i32, i32* @tot_disabled_servers, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* @tot_disabled_servers, align 4
  store i32 16, i32* %9, align 4
  %70 = call %struct.cache_local_copy_server* @zmalloc0(i32 16)
  store %struct.cache_local_copy_server* %70, %struct.cache_local_copy_server** %8, align 8
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.cache_local_copy_server*, %struct.cache_local_copy_server** %8, align 8
  %73 = getelementptr inbounds %struct.cache_local_copy_server, %struct.cache_local_copy_server* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.cache_local_copy_server**, %struct.cache_local_copy_server*** @HDS, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.cache_local_copy_server*, %struct.cache_local_copy_server** %74, i64 %76
  %78 = load %struct.cache_local_copy_server*, %struct.cache_local_copy_server** %77, align 8
  %79 = load %struct.cache_local_copy_server*, %struct.cache_local_copy_server** %8, align 8
  %80 = getelementptr inbounds %struct.cache_local_copy_server, %struct.cache_local_copy_server* %79, i32 0, i32 1
  store %struct.cache_local_copy_server* %78, %struct.cache_local_copy_server** %80, align 8
  %81 = load %struct.cache_local_copy_server*, %struct.cache_local_copy_server** %8, align 8
  %82 = load %struct.cache_local_copy_server**, %struct.cache_local_copy_server*** @HDS, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.cache_local_copy_server*, %struct.cache_local_copy_server** %82, i64 %84
  store %struct.cache_local_copy_server* %81, %struct.cache_local_copy_server** %85, align 8
  store %struct.cache_local_copy_server* %81, %struct.cache_local_copy_server** %3, align 8
  br label %87

86:                                               ; preds = %64
  store %struct.cache_local_copy_server* null, %struct.cache_local_copy_server** %3, align 8
  br label %87

87:                                               ; preds = %86, %67, %59
  %88 = load %struct.cache_local_copy_server*, %struct.cache_local_copy_server** %3, align 8
  ret %struct.cache_local_copy_server* %88
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.cache_local_copy_server* @zmalloc0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
