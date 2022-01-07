; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_quick_has_loose.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_quick_has_loose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.object_directory* }
%struct.object_directory = type { %struct.object_directory* }
%struct.object_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.object_id*)* @quick_has_loose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quick_has_loose(%struct.repository* %0, %struct.object_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca %struct.object_directory*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  %7 = load %struct.repository*, %struct.repository** %4, align 8
  %8 = call i32 @prepare_alt_odb(%struct.repository* %7)
  %9 = load %struct.repository*, %struct.repository** %4, align 8
  %10 = getelementptr inbounds %struct.repository, %struct.repository* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.object_directory*, %struct.object_directory** %12, align 8
  store %struct.object_directory* %13, %struct.object_directory** %6, align 8
  br label %14

14:                                               ; preds = %26, %2
  %15 = load %struct.object_directory*, %struct.object_directory** %6, align 8
  %16 = icmp ne %struct.object_directory* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load %struct.object_directory*, %struct.object_directory** %6, align 8
  %19 = load %struct.object_id*, %struct.object_id** %5, align 8
  %20 = call i32 @odb_loose_cache(%struct.object_directory* %18, %struct.object_id* %19)
  %21 = load %struct.object_id*, %struct.object_id** %5, align 8
  %22 = call i64 @oid_array_lookup(i32 %20, %struct.object_id* %21)
  %23 = icmp sge i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %31

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.object_directory*, %struct.object_directory** %6, align 8
  %28 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %27, i32 0, i32 0
  %29 = load %struct.object_directory*, %struct.object_directory** %28, align 8
  store %struct.object_directory* %29, %struct.object_directory** %6, align 8
  br label %14

30:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %24
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @prepare_alt_odb(%struct.repository*) #1

declare dso_local i64 @oid_array_lookup(i32, %struct.object_id*) #1

declare dso_local i32 @odb_loose_cache(%struct.object_directory*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
