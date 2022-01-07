; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_prepare_ref_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_prepare_ref_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.ref = type { i32, %struct.ref* }
%struct.TYPE_2__ = type { %struct.ref* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.string_list*, %struct.ref*)* @prepare_ref_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_ref_index(%struct.string_list* %0, %struct.ref* %1) #0 {
  %3 = alloca %struct.string_list*, align 8
  %4 = alloca %struct.ref*, align 8
  store %struct.string_list* %0, %struct.string_list** %3, align 8
  store %struct.ref* %1, %struct.ref** %4, align 8
  br label %5

5:                                                ; preds = %16, %2
  %6 = load %struct.ref*, %struct.ref** %4, align 8
  %7 = icmp ne %struct.ref* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = load %struct.ref*, %struct.ref** %4, align 8
  %10 = load %struct.string_list*, %struct.string_list** %3, align 8
  %11 = load %struct.ref*, %struct.ref** %4, align 8
  %12 = getelementptr inbounds %struct.ref, %struct.ref* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.TYPE_2__* @string_list_append_nodup(%struct.string_list* %10, i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.ref* %9, %struct.ref** %15, align 8
  br label %16

16:                                               ; preds = %8
  %17 = load %struct.ref*, %struct.ref** %4, align 8
  %18 = getelementptr inbounds %struct.ref, %struct.ref* %17, i32 0, i32 1
  %19 = load %struct.ref*, %struct.ref** %18, align 8
  store %struct.ref* %19, %struct.ref** %4, align 8
  br label %5

20:                                               ; preds = %5
  %21 = load %struct.string_list*, %struct.string_list** %3, align 8
  %22 = call i32 @string_list_sort(%struct.string_list* %21)
  ret void
}

declare dso_local %struct.TYPE_2__* @string_list_append_nodup(%struct.string_list*, i32) #1

declare dso_local i32 @string_list_sort(%struct.string_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
