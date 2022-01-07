; ModuleID = '/home/carl/AnghaBench/git/extr_oidmap.c_oidmap_get.c'
source_filename = "/home/carl/AnghaBench/git/extr_oidmap.c_oidmap_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oidmap = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.object_id = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @oidmap_get(%struct.oidmap* %0, %struct.object_id* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.oidmap*, align 8
  %5 = alloca %struct.object_id*, align 8
  store %struct.oidmap* %0, %struct.oidmap** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  %6 = load %struct.oidmap*, %struct.oidmap** %4, align 8
  %7 = getelementptr inbounds %struct.oidmap, %struct.oidmap* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %19

12:                                               ; preds = %2
  %13 = load %struct.oidmap*, %struct.oidmap** %4, align 8
  %14 = getelementptr inbounds %struct.oidmap, %struct.oidmap* %13, i32 0, i32 0
  %15 = load %struct.object_id*, %struct.object_id** %5, align 8
  %16 = call i32 @oidhash(%struct.object_id* %15)
  %17 = load %struct.object_id*, %struct.object_id** %5, align 8
  %18 = call i8* @hashmap_get_from_hash(%struct.TYPE_2__* %14, i32 %16, %struct.object_id* %17)
  store i8* %18, i8** %3, align 8
  br label %19

19:                                               ; preds = %12, %11
  %20 = load i8*, i8** %3, align 8
  ret i8* %20
}

declare dso_local i8* @hashmap_get_from_hash(%struct.TYPE_2__*, i32, %struct.object_id*) #1

declare dso_local i32 @oidhash(%struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
