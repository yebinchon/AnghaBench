; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_mlist_decode_pair.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_mlist_decode_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlist_decoder = type { i32, i32, i32, %struct.mlist_decoder_stack_entry* }
%struct.mlist_decoder_stack_entry = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlist_decode_pair(%struct.mlist_decoder* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlist_decoder*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mlist_decoder_stack_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlist_decoder_stack_entry*, align 8
  store %struct.mlist_decoder* %0, %struct.mlist_decoder** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.mlist_decoder*, %struct.mlist_decoder** %4, align 8
  %10 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.mlist_decoder*, %struct.mlist_decoder** %4, align 8
  %13 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  store i32 0, i32* %17, align 4
  store i32 2147483647, i32* %3, align 4
  br label %137

18:                                               ; preds = %2
  %19 = load %struct.mlist_decoder*, %struct.mlist_decoder** %4, align 8
  %20 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = load %struct.mlist_decoder*, %struct.mlist_decoder** %4, align 8
  %24 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %23, i32 0, i32 3
  %25 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %24, align 8
  %26 = load %struct.mlist_decoder*, %struct.mlist_decoder** %4, align 8
  %27 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %25, i64 %29
  store %struct.mlist_decoder_stack_entry* %30, %struct.mlist_decoder_stack_entry** %6, align 8
  br label %31

31:                                               ; preds = %136, %18
  %32 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %6, align 8
  %33 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %6, align 8
  %36 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  %39 = ashr i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %63, %31
  %41 = load %struct.mlist_decoder*, %struct.mlist_decoder** %4, align 8
  %42 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %6, align 8
  %48 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  %51 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %6, align 8
  %52 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %3, align 4
  br label %137

54:                                               ; preds = %40
  %55 = load %struct.mlist_decoder*, %struct.mlist_decoder** %4, align 8
  %56 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %6, align 8
  %59 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %78

63:                                               ; preds = %54
  %64 = load %struct.mlist_decoder*, %struct.mlist_decoder** %4, align 8
  %65 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 8
  %68 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %6, align 8
  %69 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %68, i32 -1
  store %struct.mlist_decoder_stack_entry* %69, %struct.mlist_decoder_stack_entry** %6, align 8
  %70 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %6, align 8
  %71 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %6, align 8
  %74 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %72, %75
  %77 = ashr i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %40

78:                                               ; preds = %62
  %79 = load %struct.mlist_decoder*, %struct.mlist_decoder** %4, align 8
  %80 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %6, align 8
  %84 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %83, i64 1
  store %struct.mlist_decoder_stack_entry* %84, %struct.mlist_decoder_stack_entry** %8, align 8
  %85 = load %struct.mlist_decoder*, %struct.mlist_decoder** %4, align 8
  %86 = getelementptr inbounds %struct.mlist_decoder, %struct.mlist_decoder* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %113

90:                                               ; preds = %78
  %91 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %6, align 8
  %92 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %95 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %6, align 8
  %97 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %100 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %103 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %6, align 8
  %105 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %108 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 4
  %109 = load %struct.mlist_decoder*, %struct.mlist_decoder** %4, align 8
  %110 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %111 = call i32 @mlist_decode_node(%struct.mlist_decoder* %109, %struct.mlist_decoder_stack_entry* %110)
  %112 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  store %struct.mlist_decoder_stack_entry* %112, %struct.mlist_decoder_stack_entry** %6, align 8
  br label %136

113:                                              ; preds = %78
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %116 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %6, align 8
  %118 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %121 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 4
  %122 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %6, align 8
  %123 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %126 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %6, align 8
  %128 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %131 = getelementptr inbounds %struct.mlist_decoder_stack_entry, %struct.mlist_decoder_stack_entry* %130, i32 0, i32 5
  store i32 %129, i32* %131, align 4
  %132 = load %struct.mlist_decoder*, %struct.mlist_decoder** %4, align 8
  %133 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  %134 = call i32 @mlist_decode_node(%struct.mlist_decoder* %132, %struct.mlist_decoder_stack_entry* %133)
  %135 = load %struct.mlist_decoder_stack_entry*, %struct.mlist_decoder_stack_entry** %8, align 8
  store %struct.mlist_decoder_stack_entry* %135, %struct.mlist_decoder_stack_entry** %6, align 8
  br label %136

136:                                              ; preds = %113, %90
  br label %31

137:                                              ; preds = %46, %16
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @mlist_decode_node(%struct.mlist_decoder*, %struct.mlist_decoder_stack_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
