; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_fetch_init_raw_message.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vv/extr_vv-tl-parse.c_tl_fetch_init_raw_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw_message = type { i32 }

@rwm_total_msgs = common dso_local global i32 0, align 4
@tl_type_raw_msg = common dso_local global i32 0, align 4
@tl_in_raw_msg_methods = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_fetch_init_raw_message(%struct.raw_message* %0, i32 %1) #0 {
  %3 = alloca %struct.raw_message*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.raw_message*, align 8
  store %struct.raw_message* %0, %struct.raw_message** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i64 @zmalloc(i32 4)
  %7 = inttoptr i64 %6 to %struct.raw_message*
  store %struct.raw_message* %7, %struct.raw_message** %5, align 8
  %8 = load %struct.raw_message*, %struct.raw_message** %5, align 8
  %9 = load %struct.raw_message*, %struct.raw_message** %3, align 8
  %10 = bitcast %struct.raw_message* %8 to i8*
  %11 = bitcast %struct.raw_message* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 4, i1 false)
  %12 = load i32, i32* @rwm_total_msgs, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @rwm_total_msgs, align 4
  %14 = load %struct.raw_message*, %struct.raw_message** %3, align 8
  %15 = call i32 @rwm_clean(%struct.raw_message* %14)
  %16 = load %struct.raw_message*, %struct.raw_message** %5, align 8
  %17 = load i32, i32* @tl_type_raw_msg, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @__tl_fetch_init(%struct.raw_message* %16, i32 0, i32 %17, i32* @tl_in_raw_msg_methods, i32 %18)
  ret i32 %19
}

declare dso_local i64 @zmalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rwm_clean(%struct.raw_message*) #1

declare dso_local i32 @__tl_fetch_init(%struct.raw_message*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
