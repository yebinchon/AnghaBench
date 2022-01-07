; ModuleID = '/home/carl/AnghaBench/git/extr_midx.c_nth_midxed_pack_int_id.c'
source_filename = "/home/carl/AnghaBench/git/extr_midx.c_nth_midxed_pack_int_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.multi_pack_index = type { i64 }

@MIDX_CHUNK_OFFSET_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.multi_pack_index*, i32)* @nth_midxed_pack_int_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nth_midxed_pack_int_id(%struct.multi_pack_index* %0, i32 %1) #0 {
  %3 = alloca %struct.multi_pack_index*, align 8
  %4 = alloca i32, align 4
  store %struct.multi_pack_index* %0, %struct.multi_pack_index** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.multi_pack_index*, %struct.multi_pack_index** %3, align 8
  %6 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @MIDX_CHUNK_OFFSET_WIDTH, align 4
  %10 = mul nsw i32 %8, %9
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %7, %11
  %13 = call i32 @get_be32(i64 %12)
  ret i32 %13
}

declare dso_local i32 @get_be32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
