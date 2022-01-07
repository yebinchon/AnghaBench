; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_ylist_positions_alloc.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_ylist_positions_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_5__* }
%struct.ylist_decoder_stack_entry = type { i32, %struct.TYPE_5__*, %struct.TYPE_5__* }

@list_int_free_blocks = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ylist_decoder_stack_entry*, i32)* @ylist_positions_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ylist_positions_alloc(%struct.ylist_decoder_stack_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.ylist_decoder_stack_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.ylist_decoder_stack_entry* %0, %struct.ylist_decoder_stack_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %3, align 8
  %8 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %3, align 8
  %13 = call i32 @ylist_positions_free(%struct.ylist_decoder_stack_entry* %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %3, align 8
  %17 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  store i32 0, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @list_int_free_blocks, i32 0, i32 0), align 8
  %20 = icmp sle i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @likely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %14
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @list_int_free_blocks, i32 0, i32 1), align 8
  %26 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %3, align 8
  %27 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %26, i32 0, i32 2
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %27, align 8
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %6, align 8
  store i32 1, i32* %5, align 4
  br label %28

28:                                               ; preds = %36, %24
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %6, align 8
  br label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %28

39:                                               ; preds = %28
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %3, align 8
  %42 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %41, i32 0, i32 1
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %42, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @list_int_free_blocks, i32 0, i32 0), align 8
  %45 = sub nsw i32 %44, %43
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @list_int_free_blocks, i32 0, i32 0), align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @list_int_free_blocks, i32 0, i32 1), align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %50, align 8
  br label %81

51:                                               ; preds = %14
  %52 = call %struct.TYPE_5__* @zmalloc(i32 8)
  %53 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %3, align 8
  %54 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %53, i32 0, i32 1
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %54, align 8
  %55 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %3, align 8
  %56 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %55, i32 0, i32 2
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %56, align 8
  %57 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %3, align 8
  %58 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %60, align 8
  store i32 1, i32* %5, align 4
  br label %61

61:                                               ; preds = %77, %51
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = call %struct.TYPE_5__* @ztmalloc(i32 8)
  store %struct.TYPE_5__* %66, %struct.TYPE_5__** %6, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %68, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %3, align 8
  %71 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store %struct.TYPE_5__* %69, %struct.TYPE_5__** %73, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %75 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %3, align 8
  %76 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %75, i32 0, i32 1
  store %struct.TYPE_5__* %74, %struct.TYPE_5__** %76, align 8
  br label %77

77:                                               ; preds = %65
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %61

80:                                               ; preds = %61
  br label %81

81:                                               ; preds = %80, %39
  ret void
}

declare dso_local i32 @ylist_positions_free(%struct.ylist_decoder_stack_entry*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.TYPE_5__* @zmalloc(i32) #1

declare dso_local %struct.TYPE_5__* @ztmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
