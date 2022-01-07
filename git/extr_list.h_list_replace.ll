; ModuleID = '/home/carl/AnghaBench/git/extr_list.h_list_replace.c'
source_filename = "/home/carl/AnghaBench/git/extr_list.h_list_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.list_head* }
%struct.TYPE_3__ = type { %struct.list_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_head*, %struct.list_head*)* @list_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_replace(%struct.list_head* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.list_head*, align 8
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %5 = load %struct.list_head*, %struct.list_head** %3, align 8
  %6 = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = load %struct.list_head*, %struct.list_head** %4, align 8
  %9 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 0
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %9, align 8
  %10 = load %struct.list_head*, %struct.list_head** %3, align 8
  %11 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = load %struct.list_head*, %struct.list_head** %4, align 8
  %14 = getelementptr inbounds %struct.list_head, %struct.list_head* %13, i32 0, i32 1
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %14, align 8
  %15 = load %struct.list_head*, %struct.list_head** %4, align 8
  %16 = load %struct.list_head*, %struct.list_head** %4, align 8
  %17 = getelementptr inbounds %struct.list_head, %struct.list_head* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.list_head* %15, %struct.list_head** %19, align 8
  %20 = load %struct.list_head*, %struct.list_head** %4, align 8
  %21 = load %struct.list_head*, %struct.list_head** %4, align 8
  %22 = getelementptr inbounds %struct.list_head, %struct.list_head* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.list_head* %20, %struct.list_head** %24, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
