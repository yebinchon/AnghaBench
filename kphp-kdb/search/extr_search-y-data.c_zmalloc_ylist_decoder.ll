; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_zmalloc_ylist_decoder.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_zmalloc_ylist_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ylist_decoder = type { i32, i32, i32, i32, i32, i64, %struct.ylist_decoder_stack_entry*, i64, i8*, %struct.TYPE_3__*, i32 }
%struct.ylist_decoder_stack_entry = type { i32, i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i8* }

@decoder_positions_max_capacity = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ylist_decoder* @zmalloc_ylist_decoder(%struct.TYPE_3__* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ylist_decoder*, align 8
  %16 = alloca %struct.ylist_decoder_stack_entry*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp sge i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i32 @bsr(i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = mul i64 32, %27
  %29 = add i64 72, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = call i8* @zmalloc(i32 %31)
  %33 = bitcast i8* %32 to %struct.ylist_decoder*
  store %struct.ylist_decoder* %33, %struct.ylist_decoder** %15, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = load %struct.ylist_decoder*, %struct.ylist_decoder** %15, align 8
  %36 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %35, i32 0, i32 9
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %36, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.ylist_decoder*, %struct.ylist_decoder** %15, align 8
  %39 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ylist_decoder*, %struct.ylist_decoder** %15, align 8
  %41 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %40, i32 0, i32 10
  %42 = load i8*, i8** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @bread_init(i32* %41, i8* %42, i32 %43)
  %45 = load i32, i32* @decoder_positions_max_capacity, align 4
  %46 = load %struct.ylist_decoder*, %struct.ylist_decoder** %15, align 8
  %47 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ylist_decoder*, %struct.ylist_decoder** %15, align 8
  %49 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 4, %50
  %52 = call i8* @zmalloc(i32 %51)
  %53 = load %struct.ylist_decoder*, %struct.ylist_decoder** %15, align 8
  %54 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %53, i32 0, i32 8
  store i8* %52, i8** %54, align 8
  %55 = load %struct.ylist_decoder*, %struct.ylist_decoder** %15, align 8
  %56 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %55, i32 0, i32 9
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i8* %52, i8** %58, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.ylist_decoder*, %struct.ylist_decoder** %15, align 8
  %61 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.ylist_decoder*, %struct.ylist_decoder** %15, align 8
  %64 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ylist_decoder*, %struct.ylist_decoder** %15, align 8
  %66 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %65, i32 0, i32 7
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.ylist_decoder*, %struct.ylist_decoder** %15, align 8
  %69 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.ylist_decoder*, %struct.ylist_decoder** %15, align 8
  %71 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %70, i32 0, i32 6
  %72 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %71, align 8
  store %struct.ylist_decoder_stack_entry* %72, %struct.ylist_decoder_stack_entry** %16, align 8
  store i32 0, i32* %17, align 4
  br label %73

73:                                               ; preds = %83, %6
  %74 = load i32, i32* %17, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp sle i32 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %16, align 8
  %79 = load i32, i32* %17, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %78, i64 %80
  %82 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %81, i32 0, i32 4
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %17, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %17, align 4
  br label %73

86:                                               ; preds = %73
  %87 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %16, align 8
  %88 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %87, i32 0, i32 3
  store i64 0, i64* %88, align 8
  %89 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %16, align 8
  %90 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %89, i32 0, i32 0
  store i32 -1, i32* %90, align 8
  %91 = load %struct.ylist_decoder*, %struct.ylist_decoder** %15, align 8
  %92 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  %95 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %16, align 8
  %96 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.ylist_decoder*, %struct.ylist_decoder** %15, align 8
  %98 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %16, align 8
  %101 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load %struct.ylist_decoder*, %struct.ylist_decoder** %15, align 8
  %103 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %16, align 8
  %104 = call i32 @ylist_decode_node(%struct.ylist_decoder* %102, %struct.ylist_decoder_stack_entry* %103)
  %105 = load %struct.ylist_decoder*, %struct.ylist_decoder** %15, align 8
  %106 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %105, i32 0, i32 5
  store i64 0, i64* %106, align 8
  %107 = load %struct.ylist_decoder*, %struct.ylist_decoder** %15, align 8
  ret %struct.ylist_decoder* %107
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bsr(i32) #1

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32 @bread_init(i32*, i8*, i32) #1

declare dso_local i32 @ylist_decode_node(%struct.ylist_decoder*, %struct.ylist_decoder_stack_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
