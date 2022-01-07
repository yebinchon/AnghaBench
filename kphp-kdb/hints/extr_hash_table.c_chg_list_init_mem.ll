; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hash_table.c_chg_list_init_mem.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hash_table.c_chg_list_init_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__* }

@chg_list_free = common dso_local global %struct.TYPE_3__* null, align 8
@chg_list_memory = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chg_list_init_mem(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chg_list_free, align 8
  %5 = icmp eq %struct.TYPE_3__* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = icmp sgt i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = call i64 (...) @dl_get_memory_used()
  %13 = load i32, i32* @chg_list_memory, align 4
  %14 = sext i32 %13 to i64
  %15 = sub nsw i64 %14, %12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* @chg_list_memory, align 4
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = trunc i64 %19 to i32
  %21 = call %struct.TYPE_3__* @dl_malloc(i32 %20)
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** @chg_list_free, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chg_list_free, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = call i64 (...) @dl_get_memory_used()
  %27 = load i32, i32* @chg_list_memory, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* @chg_list_memory, align 4
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %47, %1
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* %2, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chg_list_free, align 8
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %40
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chg_list_free, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store %struct.TYPE_3__* %41, %struct.TYPE_3__** %46, align 8
  br label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %31

50:                                               ; preds = %31
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chg_list_free, align 8
  %52 = load i32, i32* %2, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %56, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @dl_get_memory_used(...) #1

declare dso_local %struct.TYPE_3__* @dl_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
