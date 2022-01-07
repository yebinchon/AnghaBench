; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_interpolative_ext_decode_node.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_interpolative_ext_decode_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_decoder = type { i64, %struct.bitreader }
%struct.bitreader = type { i32 }
%struct.interpolative_ext_decoder_stack_entry = type { i32, i32, i32, i32, i32, i32 }

@decode_cur_bit = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @interpolative_ext_decode_node(%struct.list_decoder* %0, %struct.interpolative_ext_decoder_stack_entry* %1) #0 {
  %3 = alloca %struct.list_decoder*, align 8
  %4 = alloca %struct.interpolative_ext_decoder_stack_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bitreader*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.list_decoder* %0, %struct.list_decoder** %3, align 8
  store %struct.interpolative_ext_decoder_stack_entry* %1, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  %12 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  %13 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  %16 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %14, %17
  %19 = ashr i32 %18, 1
  store i32 %19, i32* %5, align 4
  %20 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  %21 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  %24 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 %25, %26
  %28 = sub nsw i32 %22, %27
  store i32 %28, i32* %6, align 4
  %29 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  %30 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  %34 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %32, %35
  %37 = add nsw i32 %31, %36
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %93

43:                                               ; preds = %2
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = load %struct.list_decoder*, %struct.list_decoder** %3, align 8
  %47 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %46, i32 0, i32 1
  store %struct.bitreader* %47, %struct.bitreader** %9, align 8
  %48 = load %struct.bitreader*, %struct.bitreader** %9, align 8
  %49 = getelementptr inbounds %struct.bitreader, %struct.bitreader* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %51

51:                                               ; preds = %63, %43
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load i32, i32* %11, align 4
  %57 = shl i32 %56, 1
  store i32 %57, i32* %11, align 4
  %58 = load i64, i64* @decode_cur_bit, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = call i32 (...) @decode_load_bit()
  br label %51

65:                                               ; preds = %51
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.bitreader*, %struct.bitreader** %9, align 8
  %68 = getelementptr inbounds %struct.bitreader, %struct.bitreader* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %11, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = and i32 %72, 1
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %65
  %76 = load i32, i32* %8, align 4
  %77 = ashr i32 %76, 1
  %78 = load i32, i32* %11, align 4
  %79 = ashr i32 %78, 1
  %80 = sub nsw i32 %77, %79
  %81 = sub nsw i32 %80, 1
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %7, align 4
  br label %92

84:                                               ; preds = %65
  %85 = load i32, i32* %8, align 4
  %86 = ashr i32 %85, 1
  %87 = load i32, i32* %11, align 4
  %88 = ashr i32 %87, 1
  %89 = add nsw i32 %86, %88
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %84, %75
  br label %93

93:                                               ; preds = %92, %2
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  %96 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 4
  %97 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  %98 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  %101 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %99, %102
  %104 = sext i32 %103 to i64
  %105 = load %struct.list_decoder*, %struct.list_decoder** %3, align 8
  %106 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp sge i64 %104, %107
  br i1 %108, label %109, label %125

109:                                              ; preds = %93
  %110 = load %struct.list_decoder*, %struct.list_decoder** %3, align 8
  %111 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %110, i32 0, i32 1
  %112 = call i32 @bread_gamma_code(%struct.bitreader* %111)
  %113 = sub nsw i32 %112, 1
  %114 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  %115 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %114, i32 0, i32 5
  store i32 %113, i32* %115, align 4
  %116 = load %struct.list_decoder*, %struct.list_decoder** %3, align 8
  %117 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %116, i32 0, i32 1
  %118 = call i64 @bread_get_bitoffset(%struct.bitreader* %117)
  %119 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  %120 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %118
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %120, align 4
  br label %128

125:                                              ; preds = %93
  %126 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  %127 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %126, i32 0, i32 5
  store i32 -1, i32* %127, align 4
  br label %128

128:                                              ; preds = %125, %109
  ret void
}

declare dso_local i32 @decode_load_bit(...) #1

declare dso_local i32 @bread_gamma_code(%struct.bitreader*) #1

declare dso_local i64 @bread_get_bitoffset(%struct.bitreader*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
