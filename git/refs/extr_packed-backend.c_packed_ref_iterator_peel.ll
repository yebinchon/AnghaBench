; ModuleID = '/home/carl/AnghaBench/git/refs/extr_packed-backend.c_packed_ref_iterator_peel.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_packed-backend.c_packed_ref_iterator_peel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_iterator = type { i32 }
%struct.object_id = type { i32 }
%struct.packed_ref_iterator = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@REF_KNOWS_PEELED = common dso_local global i32 0, align 4
@REF_ISBROKEN = common dso_local global i32 0, align 4
@REF_ISSYMREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_iterator*, %struct.object_id*)* @packed_ref_iterator_peel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packed_ref_iterator_peel(%struct.ref_iterator* %0, %struct.object_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref_iterator*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca %struct.packed_ref_iterator*, align 8
  store %struct.ref_iterator* %0, %struct.ref_iterator** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  %7 = load %struct.ref_iterator*, %struct.ref_iterator** %4, align 8
  %8 = bitcast %struct.ref_iterator* %7 to %struct.packed_ref_iterator*
  store %struct.packed_ref_iterator* %8, %struct.packed_ref_iterator** %6, align 8
  %9 = load %struct.packed_ref_iterator*, %struct.packed_ref_iterator** %6, align 8
  %10 = getelementptr inbounds %struct.packed_ref_iterator, %struct.packed_ref_iterator* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @REF_KNOWS_PEELED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.object_id*, %struct.object_id** %5, align 8
  %18 = load %struct.packed_ref_iterator*, %struct.packed_ref_iterator** %6, align 8
  %19 = getelementptr inbounds %struct.packed_ref_iterator, %struct.packed_ref_iterator* %18, i32 0, i32 2
  %20 = call i32 @oidcpy(%struct.object_id* %17, i32* %19)
  %21 = load %struct.packed_ref_iterator*, %struct.packed_ref_iterator** %6, align 8
  %22 = getelementptr inbounds %struct.packed_ref_iterator, %struct.packed_ref_iterator* %21, i32 0, i32 2
  %23 = call i64 @is_null_oid(i32* %22)
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 -1, i32 0
  store i32 %26, i32* %3, align 4
  br label %47

27:                                               ; preds = %2
  %28 = load %struct.packed_ref_iterator*, %struct.packed_ref_iterator** %6, align 8
  %29 = getelementptr inbounds %struct.packed_ref_iterator, %struct.packed_ref_iterator* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @REF_ISBROKEN, align 4
  %33 = load i32, i32* @REF_ISSYMREF, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %47

38:                                               ; preds = %27
  %39 = load %struct.packed_ref_iterator*, %struct.packed_ref_iterator** %6, align 8
  %40 = getelementptr inbounds %struct.packed_ref_iterator, %struct.packed_ref_iterator* %39, i32 0, i32 0
  %41 = load %struct.object_id*, %struct.object_id** %5, align 8
  %42 = call i32 @peel_object(i32* %40, %struct.object_id* %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %38, %37, %16
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @oidcpy(%struct.object_id*, i32*) #1

declare dso_local i64 @is_null_oid(i32*) #1

declare dso_local i32 @peel_object(i32*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
