; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_deflate.c_deflate_comp_exit.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_deflate.c_deflate_comp_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deflate_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.deflate_ctx*)* @deflate_comp_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deflate_comp_exit(%struct.deflate_ctx* %0) #0 {
  %2 = alloca %struct.deflate_ctx*, align 8
  store %struct.deflate_ctx* %0, %struct.deflate_ctx** %2, align 8
  %3 = load %struct.deflate_ctx*, %struct.deflate_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.deflate_ctx, %struct.deflate_ctx* %3, i32 0, i32 0
  %5 = call i32 @zlib_deflateEnd(%struct.TYPE_2__* %4)
  %6 = load %struct.deflate_ctx*, %struct.deflate_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.deflate_ctx, %struct.deflate_ctx* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @vfree(i32 %9)
  ret void
}

declare dso_local i32 @zlib_deflateEnd(%struct.TYPE_2__*) #1

declare dso_local i32 @vfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
