; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_kvm_s390_vsie_gmap_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_kvm_s390_vsie_gmap_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmap = type { %struct.kvm* }
%struct.kvm = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }
%struct.vsie_page = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.page = type { %struct.kvm* }

@GUEST_PREFIX_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_s390_vsie_gmap_notifier(%struct.gmap* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.gmap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.kvm*, align 8
  %8 = alloca %struct.vsie_page*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  store %struct.gmap* %0, %struct.gmap** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.gmap*, %struct.gmap** %4, align 8
  %13 = getelementptr inbounds %struct.gmap, %struct.gmap* %12, i32 0, i32 0
  %14 = load %struct.kvm*, %struct.kvm** %13, align 8
  store %struct.kvm* %14, %struct.kvm** %7, align 8
  %15 = load %struct.gmap*, %struct.gmap** %4, align 8
  %16 = bitcast %struct.gmap* %15 to %struct.page*
  %17 = call i32 @gmap_is_shadow(%struct.page* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %90

20:                                               ; preds = %3
  %21 = load i64, i64* %5, align 8
  %22 = icmp uge i64 %21, 2147483648
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %90

24:                                               ; preds = %20
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %87, %24
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.kvm*, %struct.kvm** %7, align 8
  %28 = getelementptr inbounds %struct.kvm, %struct.kvm* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %26, %31
  br i1 %32, label %33, label %90

33:                                               ; preds = %25
  %34 = load %struct.kvm*, %struct.kvm** %7, align 8
  %35 = getelementptr inbounds %struct.kvm, %struct.kvm* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.page* @READ_ONCE(i32 %42)
  store %struct.page* %43, %struct.page** %10, align 8
  %44 = load %struct.page*, %struct.page** %10, align 8
  %45 = icmp ne %struct.page* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %33
  br label %87

47:                                               ; preds = %33
  %48 = load %struct.page*, %struct.page** %10, align 8
  %49 = call %struct.vsie_page* @page_to_virt(%struct.page* %48)
  store %struct.vsie_page* %49, %struct.vsie_page** %8, align 8
  %50 = load %struct.vsie_page*, %struct.vsie_page** %8, align 8
  %51 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.page* @READ_ONCE(i32 %52)
  %54 = load %struct.gmap*, %struct.gmap** %4, align 8
  %55 = bitcast %struct.gmap* %54 to %struct.page*
  %56 = icmp ne %struct.page* %53, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %87

58:                                               ; preds = %47
  %59 = load %struct.vsie_page*, %struct.vsie_page** %8, align 8
  %60 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @GUEST_PREFIX_SHIFT, align 8
  %64 = shl i64 %62, %63
  store i64 %64, i64* %9, align 8
  %65 = load %struct.vsie_page*, %struct.vsie_page** %8, align 8
  %66 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %9, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %6, align 8
  %73 = icmp ule i64 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %58
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = mul nsw i32 2, %77
  %79 = sext i32 %78 to i64
  %80 = add i64 %76, %79
  %81 = sub i64 %80, 1
  %82 = icmp ule i64 %75, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load %struct.vsie_page*, %struct.vsie_page** %8, align 8
  %85 = call i32 @prefix_unmapped_sync(%struct.vsie_page* %84)
  br label %86

86:                                               ; preds = %83, %74, %58
  br label %87

87:                                               ; preds = %86, %57, %46
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %25

90:                                               ; preds = %19, %23, %25
  ret void
}

declare dso_local i32 @gmap_is_shadow(%struct.page*) #1

declare dso_local %struct.page* @READ_ONCE(i32) #1

declare dso_local %struct.vsie_page* @page_to_virt(%struct.page*) #1

declare dso_local i32 @prefix_unmapped_sync(%struct.vsie_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
