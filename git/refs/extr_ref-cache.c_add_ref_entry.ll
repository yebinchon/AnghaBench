; ModuleID = '/home/carl/AnghaBench/git/refs/extr_ref-cache.c_add_ref_entry.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_ref-cache.c_add_ref_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_dir = type { i32 }
%struct.ref_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_ref_entry(%struct.ref_dir* %0, %struct.ref_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref_dir*, align 8
  %5 = alloca %struct.ref_entry*, align 8
  store %struct.ref_dir* %0, %struct.ref_dir** %4, align 8
  store %struct.ref_entry* %1, %struct.ref_entry** %5, align 8
  %6 = load %struct.ref_dir*, %struct.ref_dir** %4, align 8
  %7 = load %struct.ref_entry*, %struct.ref_entry** %5, align 8
  %8 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ref_dir* @find_containing_dir(%struct.ref_dir* %6, i32 %9, i32 1)
  store %struct.ref_dir* %10, %struct.ref_dir** %4, align 8
  %11 = load %struct.ref_dir*, %struct.ref_dir** %4, align 8
  %12 = icmp ne %struct.ref_dir* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.ref_dir*, %struct.ref_dir** %4, align 8
  %16 = load %struct.ref_entry*, %struct.ref_entry** %5, align 8
  %17 = call i32 @add_entry_to_dir(%struct.ref_dir* %15, %struct.ref_entry* %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %13
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local %struct.ref_dir* @find_containing_dir(%struct.ref_dir*, i32, i32) #1

declare dso_local i32 @add_entry_to_dir(%struct.ref_dir*, %struct.ref_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
