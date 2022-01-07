; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_ylist_copy_positions.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_ylist_copy_positions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ylist_decoder = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.ylist_decoder_stack_entry = type { i32, %struct.list_int_entry* }
%struct.list_int_entry = type { i32, %struct.list_int_entry* }

@decoder_positions_max_capacity = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ylist_decoder*, %struct.ylist_decoder_stack_entry*)* @ylist_copy_positions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ylist_copy_positions(%struct.ylist_decoder* %0, %struct.ylist_decoder_stack_entry* %1) #0 {
  %3 = alloca %struct.ylist_decoder*, align 8
  %4 = alloca %struct.ylist_decoder_stack_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_int_entry*, align 8
  store %struct.ylist_decoder* %0, %struct.ylist_decoder** %3, align 8
  store %struct.ylist_decoder_stack_entry* %1, %struct.ylist_decoder_stack_entry** %4, align 8
  %8 = load %struct.ylist_decoder*, %struct.ylist_decoder** %3, align 8
  %9 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %4, align 8
  %12 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 1
  %15 = icmp slt i32 %10, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %2
  %20 = load %struct.ylist_decoder*, %struct.ylist_decoder** %3, align 8
  %21 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %30, %19
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %4, align 8
  %26 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = mul nsw i32 %31, 2
  store i32 %32, i32* %5, align 4
  br label %23

33:                                               ; preds = %23
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 4, %34
  %36 = call i32* @zmalloc(i32 %35)
  %37 = load %struct.ylist_decoder*, %struct.ylist_decoder** %3, align 8
  %38 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = load %struct.ylist_decoder*, %struct.ylist_decoder** %3, align 8
  %40 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32* %36, i32** %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.ylist_decoder*, %struct.ylist_decoder** %3, align 8
  %45 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @decoder_positions_max_capacity, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %33
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* @decoder_positions_max_capacity, align 4
  br label %51

51:                                               ; preds = %49, %33
  br label %52

52:                                               ; preds = %51, %2
  %53 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %4, align 8
  %54 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ylist_decoder*, %struct.ylist_decoder** %3, align 8
  %57 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %55, i32* %59, align 4
  store i32 0, i32* %6, align 4
  %60 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %4, align 8
  %61 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %60, i32 0, i32 1
  %62 = load %struct.list_int_entry*, %struct.list_int_entry** %61, align 8
  store %struct.list_int_entry* %62, %struct.list_int_entry** %7, align 8
  br label %63

63:                                               ; preds = %77, %52
  %64 = load %struct.list_int_entry*, %struct.list_int_entry** %7, align 8
  %65 = icmp ne %struct.list_int_entry* %64, null
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = load %struct.list_int_entry*, %struct.list_int_entry** %7, align 8
  %68 = getelementptr inbounds %struct.list_int_entry, %struct.list_int_entry* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ylist_decoder*, %struct.ylist_decoder** %3, align 8
  %71 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  store i32 %69, i32* %76, align 4
  br label %77

77:                                               ; preds = %66
  %78 = load %struct.list_int_entry*, %struct.list_int_entry** %7, align 8
  %79 = getelementptr inbounds %struct.list_int_entry, %struct.list_int_entry* %78, i32 0, i32 1
  %80 = load %struct.list_int_entry*, %struct.list_int_entry** %79, align 8
  store %struct.list_int_entry* %80, %struct.list_int_entry** %7, align 8
  br label %63

81:                                               ; preds = %63
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @zmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
