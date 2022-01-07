; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_frontend.c_agp_add_seg_to_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_frontend.c_agp_add_seg_to_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_client = type { i32, %struct.agp_segment_priv** }
%struct.agp_segment_priv = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Adding seg %p (%d segments) to client %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agp_client*, %struct.agp_segment_priv**, i32)* @agp_add_seg_to_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @agp_add_seg_to_client(%struct.agp_client* %0, %struct.agp_segment_priv** %1, i32 %2) #0 {
  %4 = alloca %struct.agp_client*, align 8
  %5 = alloca %struct.agp_segment_priv**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.agp_segment_priv**, align 8
  store %struct.agp_client* %0, %struct.agp_client** %4, align 8
  store %struct.agp_segment_priv** %1, %struct.agp_segment_priv*** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.agp_client*, %struct.agp_client** %4, align 8
  %9 = getelementptr inbounds %struct.agp_client, %struct.agp_client* %8, i32 0, i32 1
  %10 = load %struct.agp_segment_priv**, %struct.agp_segment_priv*** %9, align 8
  store %struct.agp_segment_priv** %10, %struct.agp_segment_priv*** %7, align 8
  %11 = load %struct.agp_segment_priv**, %struct.agp_segment_priv*** %7, align 8
  %12 = icmp ne %struct.agp_segment_priv** %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.agp_client*, %struct.agp_client** %4, align 8
  %15 = call i32 @agp_remove_seg_from_client(%struct.agp_client* %14)
  br label %16

16:                                               ; preds = %13, %3
  %17 = load %struct.agp_segment_priv**, %struct.agp_segment_priv*** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.agp_client*, %struct.agp_client** %4, align 8
  %20 = call i32 @DBG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.agp_segment_priv** %17, i32 %18, %struct.agp_client* %19)
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.agp_client*, %struct.agp_client** %4, align 8
  %23 = getelementptr inbounds %struct.agp_client, %struct.agp_client* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.agp_segment_priv**, %struct.agp_segment_priv*** %5, align 8
  %25 = load %struct.agp_client*, %struct.agp_client** %4, align 8
  %26 = getelementptr inbounds %struct.agp_client, %struct.agp_client* %25, i32 0, i32 1
  store %struct.agp_segment_priv** %24, %struct.agp_segment_priv*** %26, align 8
  ret void
}

declare dso_local i32 @agp_remove_seg_from_client(%struct.agp_client*) #1

declare dso_local i32 @DBG(i8*, %struct.agp_segment_priv**, i32, %struct.agp_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
