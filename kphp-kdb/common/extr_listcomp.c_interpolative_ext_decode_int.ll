; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_interpolative_ext_decode_int.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_listcomp.c_interpolative_ext_decode_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_decoder = type { i32, i32, i32, i64 }
%struct.interpolative_ext_decoder_stack_entry = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_decoder*)* @interpolative_ext_decode_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interpolative_ext_decode_int(%struct.list_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.list_decoder*, align 8
  %4 = alloca %struct.interpolative_ext_decoder_stack_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.interpolative_ext_decoder_stack_entry*, align 8
  store %struct.list_decoder* %0, %struct.list_decoder** %3, align 8
  %7 = load %struct.list_decoder*, %struct.list_decoder** %3, align 8
  %8 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.list_decoder*, %struct.list_decoder** %3, align 8
  %11 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp sge i32 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 2147483647, i32* %2, align 4
  br label %131

15:                                               ; preds = %1
  %16 = load %struct.list_decoder*, %struct.list_decoder** %3, align 8
  %17 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = load %struct.list_decoder*, %struct.list_decoder** %3, align 8
  %21 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.interpolative_ext_decoder_stack_entry*
  %24 = load %struct.list_decoder*, %struct.list_decoder** %3, align 8
  %25 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %23, i64 %27
  store %struct.interpolative_ext_decoder_stack_entry* %28, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  br label %29

29:                                               ; preds = %130, %15
  %30 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  %31 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  %34 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %32, %35
  %37 = ashr i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %57, %29
  %39 = load %struct.list_decoder*, %struct.list_decoder** %3, align 8
  %40 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  %46 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %2, align 4
  br label %131

48:                                               ; preds = %38
  %49 = load %struct.list_decoder*, %struct.list_decoder** %3, align 8
  %50 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  %53 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %72

57:                                               ; preds = %48
  %58 = load %struct.list_decoder*, %struct.list_decoder** %3, align 8
  %59 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  %63 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %62, i32 -1
  store %struct.interpolative_ext_decoder_stack_entry* %63, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  %64 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  %65 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  %68 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %66, %69
  %71 = ashr i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %38

72:                                               ; preds = %56
  %73 = load %struct.list_decoder*, %struct.list_decoder** %3, align 8
  %74 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  %78 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %77, i64 1
  store %struct.interpolative_ext_decoder_stack_entry* %78, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %79 = load %struct.list_decoder*, %struct.list_decoder** %3, align 8
  %80 = getelementptr inbounds %struct.list_decoder, %struct.list_decoder* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %107

84:                                               ; preds = %72
  %85 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  %86 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %89 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  %91 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %94 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %97 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  %99 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %102 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 4
  %103 = load %struct.list_decoder*, %struct.list_decoder** %3, align 8
  %104 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %105 = call i32 @interpolative_ext_decode_node(%struct.list_decoder* %103, %struct.interpolative_ext_decoder_stack_entry* %104)
  %106 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  store %struct.interpolative_ext_decoder_stack_entry* %106, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  br label %130

107:                                              ; preds = %72
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %110 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  %112 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %115 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  %117 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %120 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  %122 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %125 = getelementptr inbounds %struct.interpolative_ext_decoder_stack_entry, %struct.interpolative_ext_decoder_stack_entry* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 4
  %126 = load %struct.list_decoder*, %struct.list_decoder** %3, align 8
  %127 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  %128 = call i32 @interpolative_ext_decode_node(%struct.list_decoder* %126, %struct.interpolative_ext_decoder_stack_entry* %127)
  %129 = load %struct.interpolative_ext_decoder_stack_entry*, %struct.interpolative_ext_decoder_stack_entry** %6, align 8
  store %struct.interpolative_ext_decoder_stack_entry* %129, %struct.interpolative_ext_decoder_stack_entry** %4, align 8
  br label %130

130:                                              ; preds = %107, %84
  br label %29

131:                                              ; preds = %44, %14
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @interpolative_ext_decode_node(%struct.list_decoder*, %struct.interpolative_ext_decoder_stack_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
