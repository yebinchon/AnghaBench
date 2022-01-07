; ModuleID = '/home/carl/AnghaBench/git/refs/extr_iterator.c_merge_ref_iterator_peel.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_iterator.c_merge_ref_iterator_peel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_iterator = type { i32 }
%struct.object_id = type { i32 }
%struct.merge_ref_iterator = type { i32* }

@.str = private unnamed_addr constant [46 x i8] c"peel called before advance for merge iterator\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_iterator*, %struct.object_id*)* @merge_ref_iterator_peel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_ref_iterator_peel(%struct.ref_iterator* %0, %struct.object_id* %1) #0 {
  %3 = alloca %struct.ref_iterator*, align 8
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca %struct.merge_ref_iterator*, align 8
  store %struct.ref_iterator* %0, %struct.ref_iterator** %3, align 8
  store %struct.object_id* %1, %struct.object_id** %4, align 8
  %6 = load %struct.ref_iterator*, %struct.ref_iterator** %3, align 8
  %7 = bitcast %struct.ref_iterator* %6 to %struct.merge_ref_iterator*
  store %struct.merge_ref_iterator* %7, %struct.merge_ref_iterator** %5, align 8
  %8 = load %struct.merge_ref_iterator*, %struct.merge_ref_iterator** %5, align 8
  %9 = getelementptr inbounds %struct.merge_ref_iterator, %struct.merge_ref_iterator* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 @BUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %2
  %15 = load %struct.merge_ref_iterator*, %struct.merge_ref_iterator** %5, align 8
  %16 = getelementptr inbounds %struct.merge_ref_iterator, %struct.merge_ref_iterator* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.object_id*, %struct.object_id** %4, align 8
  %20 = call i32 @ref_iterator_peel(i32 %18, %struct.object_id* %19)
  ret i32 %20
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @ref_iterator_peel(i32, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
