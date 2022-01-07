; ModuleID = '/home/carl/AnghaBench/git/extr_fsck.c_object_on_skiplist.c'
source_filename = "/home/carl/AnghaBench/git/extr_fsck.c_object_on_skiplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsck_options = type { i32 }
%struct.object = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsck_options*, %struct.object*)* @object_on_skiplist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @object_on_skiplist(%struct.fsck_options* %0, %struct.object* %1) #0 {
  %3 = alloca %struct.fsck_options*, align 8
  %4 = alloca %struct.object*, align 8
  store %struct.fsck_options* %0, %struct.fsck_options** %3, align 8
  store %struct.object* %1, %struct.object** %4, align 8
  %5 = load %struct.fsck_options*, %struct.fsck_options** %3, align 8
  %6 = icmp ne %struct.fsck_options* %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = load %struct.object*, %struct.object** %4, align 8
  %9 = icmp ne %struct.object* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = load %struct.fsck_options*, %struct.fsck_options** %3, align 8
  %12 = getelementptr inbounds %struct.fsck_options, %struct.fsck_options* %11, i32 0, i32 0
  %13 = load %struct.object*, %struct.object** %4, align 8
  %14 = getelementptr inbounds %struct.object, %struct.object* %13, i32 0, i32 0
  %15 = call i64 @oidset_contains(i32* %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %10, %7, %2
  %18 = phi i1 [ false, %7 ], [ false, %2 ], [ %16, %10 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

declare dso_local i64 @oidset_contains(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
