; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg.c_rwm_split_head.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg.c_rwm_split_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw_message = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rwm_split_head(%struct.raw_message* %0, %struct.raw_message* %1, i32 %2) #0 {
  %4 = alloca %struct.raw_message*, align 8
  %5 = alloca %struct.raw_message*, align 8
  %6 = alloca i32, align 4
  store %struct.raw_message* %0, %struct.raw_message** %4, align 8
  store %struct.raw_message* %1, %struct.raw_message** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.raw_message*, %struct.raw_message** %4, align 8
  %8 = load %struct.raw_message*, %struct.raw_message** %5, align 8
  %9 = bitcast %struct.raw_message* %7 to i8*
  %10 = bitcast %struct.raw_message* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 4, i1 false)
  %11 = load %struct.raw_message*, %struct.raw_message** %4, align 8
  %12 = load %struct.raw_message*, %struct.raw_message** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @rwm_split(%struct.raw_message* %11, %struct.raw_message* %12, i32 %13)
  ret i32 %14
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @rwm_split(%struct.raw_message*, %struct.raw_message*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
