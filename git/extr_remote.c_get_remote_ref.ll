; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_get_remote_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_get_remote_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ref* @get_remote_ref(%struct.ref* %0, i8* %1) #0 {
  %3 = alloca %struct.ref*, align 8
  %4 = alloca %struct.ref*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ref*, align 8
  store %struct.ref* %0, %struct.ref** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.ref*, %struct.ref** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.ref* @find_ref_by_name_abbrev(%struct.ref* %7, i8* %8)
  store %struct.ref* %9, %struct.ref** %6, align 8
  %10 = load %struct.ref*, %struct.ref** %6, align 8
  %11 = icmp ne %struct.ref* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.ref* null, %struct.ref** %3, align 8
  br label %16

13:                                               ; preds = %2
  %14 = load %struct.ref*, %struct.ref** %6, align 8
  %15 = call %struct.ref* @copy_ref(%struct.ref* %14)
  store %struct.ref* %15, %struct.ref** %3, align 8
  br label %16

16:                                               ; preds = %13, %12
  %17 = load %struct.ref*, %struct.ref** %3, align 8
  ret %struct.ref* %17
}

declare dso_local %struct.ref* @find_ref_by_name_abbrev(%struct.ref*, i8*) #1

declare dso_local %struct.ref* @copy_ref(%struct.ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
