; ModuleID = '/home/carl/AnghaBench/git/extr_tempfile.c_delete_tempfile.c'
source_filename = "/home/carl/AnghaBench/git/extr_tempfile.c_delete_tempfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tempfile = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_tempfile(%struct.tempfile** %0) #0 {
  %2 = alloca %struct.tempfile**, align 8
  %3 = alloca %struct.tempfile*, align 8
  store %struct.tempfile** %0, %struct.tempfile*** %2, align 8
  %4 = load %struct.tempfile**, %struct.tempfile*** %2, align 8
  %5 = load %struct.tempfile*, %struct.tempfile** %4, align 8
  store %struct.tempfile* %5, %struct.tempfile** %3, align 8
  %6 = load %struct.tempfile*, %struct.tempfile** %3, align 8
  %7 = call i32 @is_tempfile_active(%struct.tempfile* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %21

10:                                               ; preds = %1
  %11 = load %struct.tempfile*, %struct.tempfile** %3, align 8
  %12 = call i32 @close_tempfile_gently(%struct.tempfile* %11)
  %13 = load %struct.tempfile*, %struct.tempfile** %3, align 8
  %14 = getelementptr inbounds %struct.tempfile, %struct.tempfile* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @unlink_or_warn(i32 %16)
  %18 = load %struct.tempfile*, %struct.tempfile** %3, align 8
  %19 = call i32 @deactivate_tempfile(%struct.tempfile* %18)
  %20 = load %struct.tempfile**, %struct.tempfile*** %2, align 8
  store %struct.tempfile* null, %struct.tempfile** %20, align 8
  br label %21

21:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @is_tempfile_active(%struct.tempfile*) #1

declare dso_local i32 @close_tempfile_gently(%struct.tempfile*) #1

declare dso_local i32 @unlink_or_warn(i32) #1

declare dso_local i32 @deactivate_tempfile(%struct.tempfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
