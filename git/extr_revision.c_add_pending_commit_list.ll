; ModuleID = '/home/carl/AnghaBench/git/extr_revision.c_add_pending_commit_list.c'
source_filename = "/home/carl/AnghaBench/git/extr_revision.c_add_pending_commit_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32 }
%struct.commit_list = type { %struct.commit_list*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.object }
%struct.object = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rev_info*, %struct.commit_list*, i32)* @add_pending_commit_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_pending_commit_list(%struct.rev_info* %0, %struct.commit_list* %1, i32 %2) #0 {
  %4 = alloca %struct.rev_info*, align 8
  %5 = alloca %struct.commit_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.object*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %4, align 8
  store %struct.commit_list* %1, %struct.commit_list** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %11, %3
  %9 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %10 = icmp ne %struct.commit_list* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %8
  %12 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %13 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.object* %15, %struct.object** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.object*, %struct.object** %7, align 8
  %18 = getelementptr inbounds %struct.object, %struct.object* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.rev_info*, %struct.rev_info** %4, align 8
  %22 = load %struct.object*, %struct.object** %7, align 8
  %23 = load %struct.object*, %struct.object** %7, align 8
  %24 = getelementptr inbounds %struct.object, %struct.object* %23, i32 0, i32 1
  %25 = call i32 @oid_to_hex(i32* %24)
  %26 = call i32 @add_pending_object(%struct.rev_info* %21, %struct.object* %22, i32 %25)
  %27 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %28 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %27, i32 0, i32 0
  %29 = load %struct.commit_list*, %struct.commit_list** %28, align 8
  store %struct.commit_list* %29, %struct.commit_list** %5, align 8
  br label %8

30:                                               ; preds = %8
  ret void
}

declare dso_local i32 @add_pending_object(%struct.rev_info*, %struct.object*, i32) #1

declare dso_local i32 @oid_to_hex(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
