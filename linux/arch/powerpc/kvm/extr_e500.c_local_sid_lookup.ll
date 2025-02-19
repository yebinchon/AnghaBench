; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500.c_local_sid_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500.c_local_sid_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.id = type { i64, i64 }

@pcpu_sids = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.id*)* @local_sid_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @local_sid_lookup(%struct.id* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.id*, align 8
  store %struct.id* %0, %struct.id** %3, align 8
  %4 = load %struct.id*, %struct.id** %3, align 8
  %5 = icmp ne %struct.id* %4, null
  br i1 %5, label %6, label %37

6:                                                ; preds = %1
  %7 = load %struct.id*, %struct.id** %3, align 8
  %8 = getelementptr inbounds %struct.id, %struct.id* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %6
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcpu_sids, i32 0, i32 0), align 8
  %13 = load %struct.id*, %struct.id** %3, align 8
  %14 = getelementptr inbounds %struct.id, %struct.id* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.id* @__this_cpu_read(i32 %17)
  %19 = load %struct.id*, %struct.id** %3, align 8
  %20 = icmp eq %struct.id* %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %11
  %22 = load %struct.id*, %struct.id** %3, align 8
  %23 = getelementptr inbounds %struct.id, %struct.id* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcpu_sids, i32 0, i32 0), align 8
  %26 = load %struct.id*, %struct.id** %3, align 8
  %27 = getelementptr inbounds %struct.id, %struct.id* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = call i64 @this_cpu_ptr(i32* %29)
  %31 = icmp eq i64 %24, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load %struct.id*, %struct.id** %3, align 8
  %34 = getelementptr inbounds %struct.id, %struct.id* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %21, %11, %6, %1
  store i32 -1, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %32
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.id* @__this_cpu_read(i32) #1

declare dso_local i64 @this_cpu_ptr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
