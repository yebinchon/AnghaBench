; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_print_binder_ref_olocked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binder.c_print_binder_ref_olocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.binder_ref = type { %struct.TYPE_5__*, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"  ref %d: desc %d %snode %d s %d w %d d %pK\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"dead \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.binder_ref*)* @print_binder_ref_olocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_binder_ref_olocked(%struct.seq_file* %0, %struct.binder_ref* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.binder_ref*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.binder_ref* %1, %struct.binder_ref** %4, align 8
  %5 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %6 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %5, i32 0, i32 0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = call i32 @binder_node_lock(%struct.TYPE_5__* %7)
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %11 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %15 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %19 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %26 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %27 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %32 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %36 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %40 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @seq_printf(%struct.seq_file* %9, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %17, i8* %25, i32 %30, i32 %34, i32 %38, i32 %41)
  %43 = load %struct.binder_ref*, %struct.binder_ref** %4, align 8
  %44 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = call i32 @binder_node_unlock(%struct.TYPE_5__* %45)
  ret void
}

declare dso_local i32 @binder_node_lock(%struct.TYPE_5__*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @binder_node_unlock(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
