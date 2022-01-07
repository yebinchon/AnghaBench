; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_u64_add_u32.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_u64_add_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, %struct.TYPE_4__*)* @u64_add_u32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u64_add_u32(i64 %0, i32 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = bitcast %struct.TYPE_4__* %4 to i64*
  store i64 %0, i64* %7, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = add i32 %9, %10
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20, %3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %26, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
