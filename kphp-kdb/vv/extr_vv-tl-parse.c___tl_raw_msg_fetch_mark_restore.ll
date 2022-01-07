; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c___tl_raw_msg_fetch_mark_restore.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c___tl_raw_msg_fetch_mark_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw_message = type { i32 }

@TL_IN_MARK = common dso_local global i64 0, align 8
@TL_IN_RAW_MSG = common dso_local global %struct.raw_message* null, align 8
@TL_IN_POS = common dso_local global i32 0, align 4
@TL_IN_MARK_POS = common dso_local global i32 0, align 4
@TL_IN_REMAINING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__tl_raw_msg_fetch_mark_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tl_raw_msg_fetch_mark_restore() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @TL_IN_MARK, align 8
  %3 = call i32 @assert(i64 %2)
  %4 = load %struct.raw_message*, %struct.raw_message** @TL_IN_RAW_MSG, align 8
  %5 = call i32 @rwm_free(%struct.raw_message* %4)
  %6 = load %struct.raw_message*, %struct.raw_message** @TL_IN_RAW_MSG, align 8
  %7 = load i64, i64* @TL_IN_MARK, align 8
  %8 = inttoptr i64 %7 to %struct.raw_message*
  %9 = bitcast %struct.raw_message* %6 to i8*
  %10 = bitcast %struct.raw_message* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 4, i1 false)
  %11 = load i64, i64* @TL_IN_MARK, align 8
  %12 = call i32 @zfree(i64 %11, i32 4)
  store i64 0, i64* @TL_IN_MARK, align 8
  %13 = load i32, i32* @TL_IN_POS, align 4
  %14 = load i32, i32* @TL_IN_MARK_POS, align 4
  %15 = sub nsw i32 %13, %14
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @TL_IN_POS, align 4
  %18 = sub nsw i32 %17, %16
  store i32 %18, i32* @TL_IN_POS, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @TL_IN_REMAINING, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* @TL_IN_REMAINING, align 4
  ret void
}

declare dso_local i32 @assert(i64) #1

declare dso_local i32 @rwm_free(%struct.raw_message*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @zfree(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
