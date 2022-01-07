; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_grant-table.c_arch_gnttab_map_shared.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_grant-table.c_arch_gnttab_map_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@gnttab_shared_vm_area = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@init_mm = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_gnttab_map_shared(i64* %0, i64 %1, i64 %2, i8** %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8** %3, i8*** %8, align 8
  %12 = load i8**, i8*** %8, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gnttab_shared_vm_area, i32 0, i32 1), align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %9, align 8
  %20 = load i8**, i8*** %8, align 8
  store i8* %19, i8** %20, align 8
  br label %21

21:                                               ; preds = %16, %4
  %22 = load i8*, i8** %9, align 8
  %23 = ptrtoint i8* %22 to i64
  store i64 %23, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %24

24:                                               ; preds = %44, %21
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = load i64, i64* %10, align 8
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gnttab_shared_vm_area, i32 0, i32 0), align 8
  %31 = load i64, i64* %11, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i64*, i64** %5, align 8
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @PAGE_KERNEL, align 4
  %39 = call i32 @mfn_pte(i64 %37, i32 %38)
  %40 = call i32 @set_pte_at(i32* @init_mm, i64 %29, i32 %33, i32 %39)
  %41 = load i64, i64* @PAGE_SIZE, align 8
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %10, align 8
  br label %44

44:                                               ; preds = %28
  %45 = load i64, i64* %11, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %11, align 8
  br label %24

47:                                               ; preds = %24
  ret i32 0
}

declare dso_local i32 @set_pte_at(i32*, i64, i32, i32) #1

declare dso_local i32 @mfn_pte(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
