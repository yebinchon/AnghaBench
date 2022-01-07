; ModuleID = '/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-data.c_free_all.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/watchcat/extr_watchcat-data.c_free_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@verbosity = common dso_local global i64 0, align 8
@TIME_TABLE_SIZE = common dso_local global i32 0, align 4
@keys_cnt = common dso_local global i64 0, align 8
@time_st = common dso_local global %struct.TYPE_8__** null, align 8
@wkey_mem = common dso_local global %struct.TYPE_7__* null, align 8
@h_watchcat = common dso_local global i32 0, align 4
@h_watchcat_q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_all() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = load i64, i64* @verbosity, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %66

5:                                                ; preds = %0
  %6 = load i32, i32* @TIME_TABLE_SIZE, align 4
  %7 = sext i32 %6 to i64
  %8 = load i64, i64* @keys_cnt, align 8
  %9 = add nsw i64 %8, %7
  store i64 %9, i64* @keys_cnt, align 8
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %45, %5
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @TIME_TABLE_SIZE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %48

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %29, %14
  %16 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @time_st, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %16, i64 %18
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @time_st, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %23, i64 %25
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = icmp ne %struct.TYPE_8__* %22, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %15
  %30 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @time_st, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %30, i64 %32
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = call i32 @del_wkey(%struct.TYPE_8__* %36)
  br label %15

38:                                               ; preds = %15
  %39 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @time_st, align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %39, i64 %41
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = call i32 @free_wkey(%struct.TYPE_8__* %43)
  br label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %1, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %1, align 4
  br label %10

48:                                               ; preds = %10
  %49 = load i64, i64* @keys_cnt, align 8
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  br label %53

53:                                               ; preds = %56, %48
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** @wkey_mem, align 8
  %55 = icmp ne %struct.TYPE_7__* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** @wkey_mem, align 8
  store %struct.TYPE_7__* %57, %struct.TYPE_7__** %2, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** @wkey_mem, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  store %struct.TYPE_7__* %60, %struct.TYPE_7__** @wkey_mem, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %62 = call i32 @dl_free(%struct.TYPE_7__* %61, i32 8)
  br label %53

63:                                               ; preds = %53
  %64 = call i32 @hset_llp_free(i32* @h_watchcat)
  %65 = call i32 @hset_llp_free(i32* @h_watchcat_q)
  br label %66

66:                                               ; preds = %63, %0
  ret void
}

declare dso_local i32 @del_wkey(%struct.TYPE_8__*) #1

declare dso_local i32 @free_wkey(%struct.TYPE_8__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dl_free(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @hset_llp_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
