; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_fore200e.c_fore200e_chunk_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_fore200e.c_fore200e_chunk_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fore200e = type { i32 }
%struct.chunk = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fore200e*, %struct.chunk*)* @fore200e_chunk_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fore200e_chunk_free(%struct.fore200e* %0, %struct.chunk* %1) #0 {
  %3 = alloca %struct.fore200e*, align 8
  %4 = alloca %struct.chunk*, align 8
  store %struct.fore200e* %0, %struct.fore200e** %3, align 8
  store %struct.chunk* %1, %struct.chunk** %4, align 8
  %5 = load %struct.fore200e*, %struct.fore200e** %3, align 8
  %6 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.chunk*, %struct.chunk** %4, align 8
  %9 = getelementptr inbounds %struct.chunk, %struct.chunk* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.chunk*, %struct.chunk** %4, align 8
  %12 = getelementptr inbounds %struct.chunk, %struct.chunk* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.chunk*, %struct.chunk** %4, align 8
  %15 = getelementptr inbounds %struct.chunk, %struct.chunk* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dma_unmap_single(i32 %7, i32 %10, i32 %13, i32 %16)
  %18 = load %struct.chunk*, %struct.chunk** %4, align 8
  %19 = getelementptr inbounds %struct.chunk, %struct.chunk* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @kfree(i32 %20)
  ret void
}

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
