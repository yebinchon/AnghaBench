; ModuleID = '/home/carl/AnghaBench/linux/block/extr_kyber-iosched.c_kyber_flush_busy_kcqs.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_kyber-iosched.c_kyber_flush_busy_kcqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kyber_hctx_data = type { i32* }
%struct.list_head = type { i32 }
%struct.flush_kcq_data = type { i32, %struct.list_head*, %struct.kyber_hctx_data* }

@flush_busy_kcq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kyber_hctx_data*, i32, %struct.list_head*)* @kyber_flush_busy_kcqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kyber_flush_busy_kcqs(%struct.kyber_hctx_data* %0, i32 %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.kyber_hctx_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.flush_kcq_data, align 8
  store %struct.kyber_hctx_data* %0, %struct.kyber_hctx_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %8 = getelementptr inbounds %struct.flush_kcq_data, %struct.flush_kcq_data* %7, i32 0, i32 0
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %8, align 8
  %10 = getelementptr inbounds %struct.flush_kcq_data, %struct.flush_kcq_data* %7, i32 0, i32 1
  %11 = load %struct.list_head*, %struct.list_head** %6, align 8
  store %struct.list_head* %11, %struct.list_head** %10, align 8
  %12 = getelementptr inbounds %struct.flush_kcq_data, %struct.flush_kcq_data* %7, i32 0, i32 2
  %13 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %4, align 8
  store %struct.kyber_hctx_data* %13, %struct.kyber_hctx_data** %12, align 8
  %14 = load %struct.kyber_hctx_data*, %struct.kyber_hctx_data** %4, align 8
  %15 = getelementptr inbounds %struct.kyber_hctx_data, %struct.kyber_hctx_data* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* @flush_busy_kcq, align 4
  %21 = call i32 @sbitmap_for_each_set(i32* %19, i32 %20, %struct.flush_kcq_data* %7)
  ret void
}

declare dso_local i32 @sbitmap_for_each_set(i32*, i32, %struct.flush_kcq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
