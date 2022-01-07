; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_ylist_decode_int.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-y-data.c_ylist_decode_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ylist_decoder = type { i32, i32, i32, %struct.ylist_decoder_stack_entry*, i64* }
%struct.ylist_decoder_stack_entry = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ylist_decode_int(%struct.ylist_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ylist_decoder*, align 8
  %4 = alloca %struct.ylist_decoder_stack_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ylist_decoder_stack_entry*, align 8
  store %struct.ylist_decoder* %0, %struct.ylist_decoder** %3, align 8
  %7 = load %struct.ylist_decoder*, %struct.ylist_decoder** %3, align 8
  %8 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.ylist_decoder*, %struct.ylist_decoder** %3, align 8
  %11 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp sge i32 %9, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.ylist_decoder*, %struct.ylist_decoder** %3, align 8
  %16 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %15, i32 0, i32 4
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  store i64 0, i64* %18, align 8
  store i32 2147483647, i32* %2, align 4
  br label %137

19:                                               ; preds = %1
  %20 = load %struct.ylist_decoder*, %struct.ylist_decoder** %3, align 8
  %21 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = load %struct.ylist_decoder*, %struct.ylist_decoder** %3, align 8
  %25 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %24, i32 0, i32 3
  %26 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %25, align 8
  %27 = load %struct.ylist_decoder*, %struct.ylist_decoder** %3, align 8
  %28 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %26, i64 %30
  store %struct.ylist_decoder_stack_entry* %31, %struct.ylist_decoder_stack_entry** %4, align 8
  br label %32

32:                                               ; preds = %136, %19
  %33 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %4, align 8
  %34 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %4, align 8
  %37 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  %40 = ashr i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %63, %32
  %42 = load %struct.ylist_decoder*, %struct.ylist_decoder** %3, align 8
  %43 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load %struct.ylist_decoder*, %struct.ylist_decoder** %3, align 8
  %49 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %4, align 8
  %50 = call i32 @ylist_copy_positions(%struct.ylist_decoder* %48, %struct.ylist_decoder_stack_entry* %49)
  %51 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %4, align 8
  %52 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %2, align 4
  br label %137

54:                                               ; preds = %41
  %55 = load %struct.ylist_decoder*, %struct.ylist_decoder** %3, align 8
  %56 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %4, align 8
  %59 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %78

63:                                               ; preds = %54
  %64 = load %struct.ylist_decoder*, %struct.ylist_decoder** %3, align 8
  %65 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 8
  %68 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %4, align 8
  %69 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %68, i32 -1
  store %struct.ylist_decoder_stack_entry* %69, %struct.ylist_decoder_stack_entry** %4, align 8
  %70 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %4, align 8
  %71 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %4, align 8
  %74 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %72, %75
  %77 = ashr i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %41

78:                                               ; preds = %62
  %79 = load %struct.ylist_decoder*, %struct.ylist_decoder** %3, align 8
  %80 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %4, align 8
  %84 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %83, i64 1
  store %struct.ylist_decoder_stack_entry* %84, %struct.ylist_decoder_stack_entry** %6, align 8
  %85 = load %struct.ylist_decoder*, %struct.ylist_decoder** %3, align 8
  %86 = getelementptr inbounds %struct.ylist_decoder, %struct.ylist_decoder* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %113

90:                                               ; preds = %78
  %91 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %4, align 8
  %92 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %95 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %4, align 8
  %97 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %100 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %103 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %4, align 8
  %105 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %108 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 4
  %109 = load %struct.ylist_decoder*, %struct.ylist_decoder** %3, align 8
  %110 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %111 = call i32 @ylist_decode_node(%struct.ylist_decoder* %109, %struct.ylist_decoder_stack_entry* %110)
  %112 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  store %struct.ylist_decoder_stack_entry* %112, %struct.ylist_decoder_stack_entry** %4, align 8
  br label %136

113:                                              ; preds = %78
  %114 = load i32, i32* %5, align 4
  %115 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %116 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %4, align 8
  %118 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %121 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  %122 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %4, align 8
  %123 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %126 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %4, align 8
  %128 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %131 = getelementptr inbounds %struct.ylist_decoder_stack_entry, %struct.ylist_decoder_stack_entry* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 4
  %132 = load %struct.ylist_decoder*, %struct.ylist_decoder** %3, align 8
  %133 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  %134 = call i32 @ylist_decode_node(%struct.ylist_decoder* %132, %struct.ylist_decoder_stack_entry* %133)
  %135 = load %struct.ylist_decoder_stack_entry*, %struct.ylist_decoder_stack_entry** %6, align 8
  store %struct.ylist_decoder_stack_entry* %135, %struct.ylist_decoder_stack_entry** %4, align 8
  br label %136

136:                                              ; preds = %113, %90
  br label %32

137:                                              ; preds = %47, %14
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @ylist_copy_positions(%struct.ylist_decoder*, %struct.ylist_decoder_stack_entry*) #1

declare dso_local i32 @ylist_decode_node(%struct.ylist_decoder*, %struct.ylist_decoder_stack_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
