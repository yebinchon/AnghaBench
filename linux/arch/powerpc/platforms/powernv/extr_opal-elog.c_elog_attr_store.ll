; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-elog.c_elog_attr_store.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-elog.c_elog_attr_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.elog_attribute = type { i32 (%struct.elog_obj*, %struct.elog_attribute*, i8*, i64)* }
%struct.elog_obj = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i8*, i64)* @elog_attr_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elog_attr_store(%struct.kobject* %0, %struct.attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.elog_attribute*, align 8
  %11 = alloca %struct.elog_obj*, align 8
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store %struct.attribute* %1, %struct.attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.attribute*, %struct.attribute** %7, align 8
  %13 = call %struct.elog_attribute* @to_elog_attr(%struct.attribute* %12)
  store %struct.elog_attribute* %13, %struct.elog_attribute** %10, align 8
  %14 = load %struct.kobject*, %struct.kobject** %6, align 8
  %15 = call %struct.elog_obj* @to_elog_obj(%struct.kobject* %14)
  store %struct.elog_obj* %15, %struct.elog_obj** %11, align 8
  %16 = load %struct.elog_attribute*, %struct.elog_attribute** %10, align 8
  %17 = getelementptr inbounds %struct.elog_attribute, %struct.elog_attribute* %16, i32 0, i32 0
  %18 = load i32 (%struct.elog_obj*, %struct.elog_attribute*, i8*, i64)*, i32 (%struct.elog_obj*, %struct.elog_attribute*, i8*, i64)** %17, align 8
  %19 = icmp ne i32 (%struct.elog_obj*, %struct.elog_attribute*, i8*, i64)* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %32

23:                                               ; preds = %4
  %24 = load %struct.elog_attribute*, %struct.elog_attribute** %10, align 8
  %25 = getelementptr inbounds %struct.elog_attribute, %struct.elog_attribute* %24, i32 0, i32 0
  %26 = load i32 (%struct.elog_obj*, %struct.elog_attribute*, i8*, i64)*, i32 (%struct.elog_obj*, %struct.elog_attribute*, i8*, i64)** %25, align 8
  %27 = load %struct.elog_obj*, %struct.elog_obj** %11, align 8
  %28 = load %struct.elog_attribute*, %struct.elog_attribute** %10, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 %26(%struct.elog_obj* %27, %struct.elog_attribute* %28, i8* %29, i64 %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %23, %20
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local %struct.elog_attribute* @to_elog_attr(%struct.attribute*) #1

declare dso_local %struct.elog_obj* @to_elog_obj(%struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
