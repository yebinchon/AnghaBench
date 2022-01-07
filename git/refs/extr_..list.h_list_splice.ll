; ModuleID = '/home/carl/AnghaBench/git/refs/extr_..list.h_list_splice.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_..list.h_list_splice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_head*, %struct.list_head*)* @list_splice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_splice(%struct.list_head* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.list_head*, align 8
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %5 = load %struct.list_head*, %struct.list_head** %3, align 8
  %6 = load %struct.list_head*, %struct.list_head** %3, align 8
  %7 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0
  %8 = load %struct.list_head*, %struct.list_head** %7, align 8
  %9 = icmp ne %struct.list_head* %5, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  %11 = load %struct.list_head*, %struct.list_head** %4, align 8
  %12 = load %struct.list_head*, %struct.list_head** %3, align 8
  %13 = getelementptr inbounds %struct.list_head, %struct.list_head* %12, i32 0, i32 0
  %14 = load %struct.list_head*, %struct.list_head** %13, align 8
  %15 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i32 0, i32 1
  store %struct.list_head* %11, %struct.list_head** %15, align 8
  %16 = load %struct.list_head*, %struct.list_head** %4, align 8
  %17 = getelementptr inbounds %struct.list_head, %struct.list_head* %16, i32 0, i32 0
  %18 = load %struct.list_head*, %struct.list_head** %17, align 8
  %19 = load %struct.list_head*, %struct.list_head** %3, align 8
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i32 0, i32 1
  %21 = load %struct.list_head*, %struct.list_head** %20, align 8
  %22 = getelementptr inbounds %struct.list_head, %struct.list_head* %21, i32 0, i32 0
  store %struct.list_head* %18, %struct.list_head** %22, align 8
  %23 = load %struct.list_head*, %struct.list_head** %3, align 8
  %24 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i32 0, i32 1
  %25 = load %struct.list_head*, %struct.list_head** %24, align 8
  %26 = load %struct.list_head*, %struct.list_head** %4, align 8
  %27 = getelementptr inbounds %struct.list_head, %struct.list_head* %26, i32 0, i32 0
  %28 = load %struct.list_head*, %struct.list_head** %27, align 8
  %29 = getelementptr inbounds %struct.list_head, %struct.list_head* %28, i32 0, i32 1
  store %struct.list_head* %25, %struct.list_head** %29, align 8
  %30 = load %struct.list_head*, %struct.list_head** %3, align 8
  %31 = getelementptr inbounds %struct.list_head, %struct.list_head* %30, i32 0, i32 0
  %32 = load %struct.list_head*, %struct.list_head** %31, align 8
  %33 = load %struct.list_head*, %struct.list_head** %4, align 8
  %34 = getelementptr inbounds %struct.list_head, %struct.list_head* %33, i32 0, i32 0
  store %struct.list_head* %32, %struct.list_head** %34, align 8
  br label %35

35:                                               ; preds = %10, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
