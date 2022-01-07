; ModuleID = '/home/carl/AnghaBench/git/extr_oidmap.c_oidmap_remove.c'
source_filename = "/home/carl/AnghaBench/git/extr_oidmap.c_oidmap_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oidmap = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.object_id = type { i32 }
%struct.hashmap_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @oidmap_remove(%struct.oidmap* %0, %struct.object_id* %1) #0 {
  %3 = alloca %struct.oidmap*, align 8
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca %struct.hashmap_entry, align 4
  store %struct.oidmap* %0, %struct.oidmap** %3, align 8
  store %struct.object_id* %1, %struct.object_id** %4, align 8
  %6 = load %struct.oidmap*, %struct.oidmap** %3, align 8
  %7 = getelementptr inbounds %struct.oidmap, %struct.oidmap* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.oidmap*, %struct.oidmap** %3, align 8
  %13 = call i32 @oidmap_init(%struct.oidmap* %12, i32 0)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.object_id*, %struct.object_id** %4, align 8
  %16 = call i32 @oidhash(%struct.object_id* %15)
  %17 = call i32 @hashmap_entry_init(%struct.hashmap_entry* %5, i32 %16)
  %18 = load %struct.oidmap*, %struct.oidmap** %3, align 8
  %19 = getelementptr inbounds %struct.oidmap, %struct.oidmap* %18, i32 0, i32 0
  %20 = load %struct.object_id*, %struct.object_id** %4, align 8
  %21 = call i8* @hashmap_remove(%struct.TYPE_2__* %19, %struct.hashmap_entry* %5, %struct.object_id* %20)
  ret i8* %21
}

declare dso_local i32 @oidmap_init(%struct.oidmap*, i32) #1

declare dso_local i32 @hashmap_entry_init(%struct.hashmap_entry*, i32) #1

declare dso_local i32 @oidhash(%struct.object_id*) #1

declare dso_local i8* @hashmap_remove(%struct.TYPE_2__*, %struct.hashmap_entry*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
