; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_random.c___mix_pool_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_random.c___mix_pool_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entropy_store = type { i32 }

@_RET_IP_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.entropy_store*, i8*, i32)* @__mix_pool_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mix_pool_bytes(%struct.entropy_store* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.entropy_store*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.entropy_store* %0, %struct.entropy_store** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.entropy_store*, %struct.entropy_store** %4, align 8
  %8 = getelementptr inbounds %struct.entropy_store, %struct.entropy_store* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @_RET_IP_, align 4
  %12 = call i32 @trace_mix_pool_bytes_nolock(i32 %9, i32 %10, i32 %11)
  %13 = load %struct.entropy_store*, %struct.entropy_store** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @_mix_pool_bytes(%struct.entropy_store* %13, i8* %14, i32 %15)
  ret void
}

declare dso_local i32 @trace_mix_pool_bytes_nolock(i32, i32, i32) #1

declare dso_local i32 @_mix_pool_bytes(%struct.entropy_store*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
